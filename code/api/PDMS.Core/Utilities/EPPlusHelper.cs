﻿using OfficeOpenXml;
using OfficeOpenXml.Style;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using PDMS.Core.DBManager;
using PDMS.Core.Extensions;
using PDMS.Core.Infrastructure;
using PDMS.Entity.DomainModels;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;
using Newtonsoft.Json;
using System.Collections;
using System.ComponentModel;

namespace PDMS.Core.Utilities
{
    public class EPPlusHelper
    {
        /// <summary>
        /// 导入模板(仅限框架导出模板使用)(202.05.07)
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="path"></param>
        /// <param name="exportColumns">指定导出的列</param>
        /// <param name="ignoreColumns">忽略不导出的列(如果设置了exportColumns,ignoreColumns不会生效)</param>
        /// <returns></returns>

        public static WebResponseContent ReadToDataTable<T>(string path,
            Expression<Func<T, object>> exportColumns = null,
            List<string> ignoreTemplate = null,
            Func<string, ExcelWorksheet, ExcelRange, int, int, string> readValue = null)
        {
            WebResponseContent responseContent = new WebResponseContent();

            FileInfo file = new FileInfo(path);
            if (!file.Exists) return responseContent.Error("未找到上传的文件", true);

            List<T> entities = new List<T>();
            using (ExcelPackage package = new ExcelPackage(file))
            {
                if (package.Workbook.Worksheets.Count == 0 ||
                    package.Workbook.Worksheets.FirstOrDefault().Dimension.End.Row <= 1)
                    return responseContent.Error("No data");
                //2020.08.11修复获取表结构信息时，表为别名时查不到数据的问题
                //typeof(T).GetEntityTableName()
                List<CellOptions> cellOptions = GetExportColumnInfo(typeof(T).Name, false, false, columns: exportColumns?.GetExpressionToArray());
                //设置忽略的列
                if (exportColumns != null)
                {
                    cellOptions = cellOptions
                        .Where(x => exportColumns.GetExpressionToArray().Select(s => s.ToLower()).Contains(x.ColumnName.ToLower()))
                        .ToList();
                }
                else if (ignoreTemplate != null)
                {
                    cellOptions = cellOptions
                        .Where(x => !ignoreTemplate.Select(s => s.ToLower()).Contains(x.ColumnName.ToLower()))
                        .ToList();
                }


                ExcelWorksheet sheetFirst = package.Workbook.Worksheets.FirstOrDefault();

                for (int j = sheetFirst.Dimension.Start.Column, k = sheetFirst.Dimension.End.Column; j <= k; j++)
                {
                    string columnCNName = sheetFirst.Cells[1, j].Value?.ToString()?.Trim();
                    if (!string.IsNullOrEmpty(columnCNName))
                    {
                        CellOptions options = cellOptions.Where(x => x.ColumnCNName.Translator() == columnCNName).FirstOrDefault();
                        if (options == null)
                        {
                            return responseContent.Error("[{$ts}]不是模板中的列".TranslatorReplace(columnCNName, true));
                        }
                        if (options.Index > 0)
                        {
                            return responseContent.Error("[{$ts}]列名重复".TranslatorReplace(columnCNName, true));
                        }
                        options.Index = j;
                    }
                }
                if (cellOptions.Exists(x => x.Index == 0))
                {
                    return responseContent.Error("导入文件列必须与导入模板相同", true);
                }

                PropertyInfo[] propertyInfos = typeof(T).GetProperties()
                       .Where(x => cellOptions.Select(s => s.ColumnName).Contains(x.Name))
                       .ToArray();
                ExcelWorksheet sheet = package.Workbook.Worksheets.FirstOrDefault();
                for (int m = sheet.Dimension.Start.Row + 1, n = sheet.Dimension.End.Row; m <= n; m++)
                {
                    T entity = Activator.CreateInstance<T>();
                    for (int j = sheet.Dimension.Start.Column, k = sheet.Dimension.End.Column; j <= k; j++)
                    {

                        string value = sheet.Cells[m, j].Value?.ToString();
                        //2022.06.20增加原生excel读取方法
                        if (readValue != null)
                        {
                            value = readValue(value, sheet, sheet.Cells[m, j], m, j);
                        }

                        CellOptions options = cellOptions.Where(x => x.Index == j).FirstOrDefault();
                        PropertyInfo property = propertyInfos.Where(x => x.Name == options.ColumnName).FirstOrDefault();
                        //2021.06.04优化判断
                        if (string.IsNullOrEmpty(value))
                        {
                            if (options.Requierd)
                            {
                                return responseContent.Error("第[{$ts}]行,[{$ts}]验证未通过,不能为空".TranslatorFormat(m, options.ColumnCNName), false);
                            }
                            continue;
                        }


                        //验证字典数据
                        //2020.09.20增加判断数据源是否有值
                        if (!string.IsNullOrEmpty(options.DropNo) && !string.IsNullOrEmpty(value))
                        {
                            if (options.KeyValues == null)
                            {
                                return responseContent.Error("[{$ts}]数据字典缺失".TranslatorFormat(options.ColumnCNName), false);
                            }
                            string key = null;
                            //2022.11.21增加导入多选的支持
                            if ((options.EditType == "selectList" || options.EditType == "checkbox") && !string.IsNullOrEmpty(value))
                            {
                                var cellValues = value.Replace("，", ",").Split(",").Where(x=>!string.IsNullOrEmpty(x)).ToArray();
                                var keys = options.KeyValues.Where(x => cellValues.Contains(x.Value))
                                    .Select(s => s.Key).ToArray();
                                if (cellValues.Length==keys.Length)
                                {
                                    key = string.Join(",",keys);
                                }
                            }
                            else
                            {
                                key = options.KeyValues.Where(x => x.Value == value)
                                    .Select(s => s.Key)
                                    .FirstOrDefault();
                            }

                            if (key == null)//&& options.Requierd
                            {
                                //小于20个字典项，直接提示所有可选value
                                string values = options.KeyValues.Count < 20 ? (string.Join(',', options.KeyValues.Select(s => s.Value))) : options.ColumnCNName;
                                return responseContent.Error("第[{$ts}]行,[{$ts}]验证未通过".TranslatorFormat(m, options.ColumnCNName) + "," + options.ColumnCNName, false);
                            }
                            //将值设置为数据字典的Key,如果导入为是/否字典项，存在表中应该对为1/0
                            value = key;
                        }
                        else if (property.PropertyType == typeof(DateTime) || property.PropertyType == typeof(DateTime?))
                        {
                            //2021.06.04增加日期格式处理
                            if (value.Length == 5 && int.TryParse(value, out int days))
                            {
                                property.SetValue(entity, new DateTime(1900, 1, 1).AddDays(days - 2));
                            }
                            else
                            {
                                property.SetValue(entity, value.ChangeType(property.PropertyType));
                            }
                            continue;
                        }

                        //验证导入与实体数据类型是否相同
                        (bool, string, object) result = property.ValidationProperty(value, options.Requierd);

                        if (!result.Item1)
                        {
                            return responseContent.Error($"第{m}行[{options.ColumnCNName}]验证未通过,{result.Item2}");
                        }

                        property.SetValue(entity, value.ChangeType(property.PropertyType));
                    }
                    entity.SetCreateDefaultVal();
                    entities.Add(entity);
                }
            }
            return responseContent.OK(null, entities);
        }



        //旧框架迁移
        public static WebResponseContent ReadToDataTable<T>(bool bCheckImportCustom, string path, Expression<Func<T, object>> exportColumns = null, List<string> ignoreTemplate = null)
        {
            WebResponseContent responseContent = new WebResponseContent();

            FileInfo file = new FileInfo(path);
            if (!file.Exists) return responseContent.Error("no file, please select file");

            List<T> entities = new List<T>();
            using (ExcelPackage package = new ExcelPackage(file))
            {
                try
                {
                    if (package.Workbook.Worksheets.Count == 0 ||
                 package.Workbook.Worksheets.FirstOrDefault().Dimension.End.Row <= 1)
                        return responseContent.Error("no import data");
                    //2020.08.11修复获取表结构信息时，表为别名时查不到数据的问题
                    //typeof(T).GetEntityTableName()                  
                }
                catch (Exception)
                {
                    return responseContent.Error("no import data");
                }

                List<CellOptions> cellOptions = GetExportColumnInfo(typeof(T).Name, false, false, columns: exportColumns?.GetExpressionToArray());
                //设置忽略的列
                if (exportColumns != null)
                {
                    cellOptions = cellOptions
                        .Where(x => exportColumns.GetExpressionToArray().Select(s => s.ToLower()).Contains(x.ColumnName.ToLower()))
                        .ToList();
                }
                else if (ignoreTemplate != null)
                {
                    cellOptions = cellOptions
                        .Where(x => !ignoreTemplate.Select(s => s.ToLower()).Contains(x.ColumnName.ToLower()))
                        .ToList();
                }

                ExcelWorksheet sheetFirst = package.Workbook.Worksheets.FirstOrDefault();

                for (int j = sheetFirst.Dimension.Start.Column, k = sheetFirst.Dimension.End.Column; j <= k; j++)
                {
                    string columnCNName = sheetFirst.Cells[1, j].Value?.ToString()?.Trim();
                    if (!string.IsNullOrEmpty(columnCNName))
                    {
                        CellOptions options = cellOptions.Where(x => x.ColumnCNName.Trim() == columnCNName).FirstOrDefault();
                        if (options == null)
                        {
                            return responseContent.Error("import column[" + columnCNName + "]is invalid column");
                        }
                        if (options.Index > 0)
                        {
                            return responseContent.Error("importcolumn[" + columnCNName + "] double");
                        }
                        options.Index = j;
                    }
                }
                if (cellOptions.Exists(x => x.Index == 0))
                {
                    return responseContent.Error("import column must same with template");
                }

                PropertyInfo[] propertyInfos = typeof(T).GetProperties()
                       .Where(x => cellOptions.Select(s => s.ColumnName).Contains(x.Name))
                       .ToArray();
                ExcelWorksheet sheet = package.Workbook.Worksheets.FirstOrDefault();
                for (int m = sheet.Dimension.Start.Row + 1, n = sheet.Dimension.End.Row; m <= n; m++)
                {
                    var row = sheet.Cells[string.Format("{0}:{0}", m)];
                    bool allEmpty = row.All(c => string.IsNullOrWhiteSpace(c.Text));
                    if (allEmpty)
                        continue;
                    T entity = Activator.CreateInstance<T>();


                    //如果不是自定义校验，则走框架
                    for (int j = sheet.Dimension.Start.Column, k = sheet.Dimension.End.Column; j <= k; j++)
                    {
                        string value = sheet.Cells[m, j].Value?.ToString();

                        CellOptions options = cellOptions.Where(x => x.Index == j).FirstOrDefault();
                        PropertyInfo property = propertyInfos.Where(x => x.Name == options.ColumnName).FirstOrDefault();
                        //2021.06.04优化判断
                        if (string.IsNullOrEmpty(value))
                        {
                            if (options.Requierd)
                            {
                                return responseContent.Error($"at{m}row[{options.ColumnCNName}]is empty。");
                            }
                            continue;
                        }


                        //验证字典数据    
                        //2020.09.20增加判断数据源是否有值
                        if (!string.IsNullOrEmpty(options.DropNo) && !string.IsNullOrEmpty(value))
                        {
                            if (options.KeyValues == null)
                            {
                                return responseContent.Error($"[{options.ColumnCNName}]dictionary no[{options.DropNo}]deficiency,please check dictionary");
                            }
                            string key = options.KeyValues.Where(x => x.Key.ToUpper() == value.ToUpper())
                                  .Select(s => s.Key)
                                  .FirstOrDefault();
                            if (key == null && bCheckImportCustom == false)//&& options.Requierd
                            {
                                //小于20个字典项，直接提示所有可选value
                                string values = options.KeyValues.Count < 20 ? (string.Join(',', options.KeyValues.Select(s => s.Value))) : options.ColumnCNName;
                                return responseContent.Error($"at{m}row[{options.ColumnCNName}]check nopass,must in dictionar[{values}]value。");
                            }
                            //将值设置为数据字典的Key,如果导入为是/否字典项，存在表中应该对为1/0
                            value = key;
                        }
                        else if (property.PropertyType == typeof(DateTime) || property.PropertyType == typeof(DateTime?))
                        {
                            //2021.06.04增加日期格式处理
                            if (value.Length == 5 && int.TryParse(value, out int days))
                            {
                                property.SetValue(entity, new DateTime(1900, 1, 1).AddDays(days - 2));
                            }
                            else
                            {
                                property.SetValue(entity, value.ChangeType(property.PropertyType));
                            }
                            continue;
                        }

                        //验证导入与实体数据类型是否相同
                        (bool, string, object) result = property.ValidationProperty(value, options.Requierd);

                        if (!result.Item1 && bCheckImportCustom == false)
                        {
                            return responseContent.Error($"at{m}row[{options.ColumnCNName}]check failed,{result.Item2}");
                        }

                        property.SetValue(entity, value.ChangeType(property.PropertyType));
                    }
                    entity.SetCreateDefaultVal();
                    entities.Add(entity);
                }
            }
            return responseContent.OK(null, entities);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="table"></param>
        /// <param name="columnCNName">key为字段名, ValueTuple<string, int>为字段中文名及列宽度</param>
        /// <param name="dicNos"> List<ValueTuple<string, string, string>>item1列名,item2 字典value,item3字典name </param>
        /// <returns>返回文件保存的路径</returns>
        public static string Export(DataTable table, List<CellOptions> cellOptions, string savePath, string fileName)
        {
            if (!Directory.Exists(savePath)) Directory.CreateDirectory(savePath);

            //获取所有有值的数据源
            var dicNoKeys = cellOptions
                 .Where(x => !string.IsNullOrEmpty(x.DropNo) && x.KeyValues != null && x.KeyValues.Keys.Count > 0)
                 .Select(x => new { x.DropNo, x.ColumnName }).Distinct().ToList();



            using (ExcelPackage package = new ExcelPackage())
            {
                var worksheet = package.Workbook.Worksheets.Add("sheet1");
                for (int i = 0; i < table.Columns.Count; i++)
                {
                    using (ExcelRange range = worksheet.Cells[1, i + 1])
                    {
                        worksheet.Cells[1, i + 1].Style.Fill.PatternType = ExcelFillStyle.Solid;
                        worksheet.Cells[1, i + 1].Style.Fill.BackgroundColor.SetColor(Color.Gray);  //背景色
                        worksheet.Cells[1, i + 1].Style.Font.Color.SetColor(Color.White);
                    }
                    CellOptions options = cellOptions.Where(x => x.ColumnName == table.Columns[i].ColumnName).FirstOrDefault();
                    if (options != null)
                    {
                        worksheet.Column(i + 1).Width = options.ColumnWidth / 6.00;
                        worksheet.Cells[1, i + 1].Value = options.ColumnCNName;
                    }
                    else
                    {
                        worksheet.Column(i + 1).Width = 15;
                        worksheet.Cells[1, i + 1].Value = table.Columns[i].ColumnName;
                    }
                }

                for (int i = 0; i < table.Rows.Count; i++)
                {
                    for (int j = 0; j < table.Columns.Count; j++)
                    {
                        string cellValue = (table.Rows[i][j] ?? "").ToString();
                        if (dicNoKeys.Exists(x => x.ColumnName == table.Columns[j].ColumnName))
                        {
                            cellOptions.Where(x => x.ColumnName == table.Columns[j].ColumnName)
                                .Select(s => s.KeyValues)
                                .FirstOrDefault()
                                .TryGetValue(cellValue, out string result);
                            cellValue = result ?? cellValue;
                        }
                        worksheet.Cells[i + 2, j + 1].Value = cellValue;
                    }
                }
                package.SaveAs(new FileInfo(savePath + fileName));
            }
            return savePath + fileName;
        }


        /// <summary>
        /// 下载导出模板(仅限框架导出模板使用)(202.05.07)
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="exportColumns">指定导出的列</param>
        /// <param name="ignoreColumns">忽略不导出的列(如果设置了exportColumns,ignoreColumns不会生效)</param>
        /// <param name="savePath">导出文件的绝对路径</param>
        /// <param name="fileName">导出的文件名+后缀,如:123.xlsx</param>
        /// <returns></returns>
        public static string ExportTemplate<T>(List<string> exportColumns, List<string> ignoreColumns, string savePath, string fileName)
        {
            return Export<T>(null, exportColumns, ignoreColumns, savePath, fileName, true);
        }

        /// <summary>
        /// 下载导出模板(仅限框架导出模板使用)(202.05.07)
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="exportColumns">指定导出的列</param>
        /// <param name="ignoreColumns">忽略不导出的列(如果设置了exportColumns,ignoreColumns不会生效)</param>
        /// <param name="savePath">导出文件的绝对路径</param>
        /// <param name="fileName">导出的文件名+后缀,如:123.xlsx</param>
        /// <returns></returns>
        public static string ExportTemplate<T>(Expression<Func<T, object>> exportColumns, List<string> ignoreColumns, string savePath, string fileName)
        {
            return Export<T>(null, exportColumns?.GetExpressionToArray(), ignoreColumns, savePath, fileName, true);
        }

        /// <summary>
        /// 下载导出模板(仅限框架导出模板使用)(202.05.07)
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="ignoreColumns">忽略不导出的列</param>
        /// <param name="savePath">导出文件的绝对路径</param>
        /// <param name="fileName">导出的文件名+后缀,如:123.xlsx</param>
        /// <returns></returns>
        public static string ExportTemplate<T>(List<string> ignoreColumns, string savePath, string fileName)
        {
            return Export<T>(null, null, ignoreColumns, savePath, fileName, true);
        }

        /// <summary>
        /// 导出excel文件(导入功能里的导出模板也使用的此功能，list传的null，导出的文件只有模板的标题)
        /// (202.05.07)
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="list"></param>
        /// <param name="cellOptions">对应代码生成器的配置</param>
        /// <param name="ignore">忽略不导出的字段</param>
        /// <param name="savePath"></param>
        /// <param name="fileName"></param>
        /// <param name="template"></param>
        /// <returns></returns>
        public static string Export<T>(List<T> list, Expression<Func<T, object>> ignore, string savePath, string fileName, bool template = false)
        {
            return Export(list, null, ignore?.GetExpressionProperty(), savePath, fileName, template);
        }

        /// <summary>
        /// 导出excel文件(导入功能里的导出模板也使用的此功能，list传的null，导出的文件只有模板的标题)
        /// (202.05.07)
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="list">导出的对象</param>
        /// <param name="exportColumns">指定导出的列</param>
        /// <param name="ignoreColumns">忽略不导出的列(如果设置了exportColumns,ignoreColumns不会生效)</param>
        /// <param name="savePath">保存路径</param>
        /// <param name="fileName">保存的文件名</param>
        ///  <param name="template">是否为下载模板</param>
        /// <returns></returns>
        public static string Export<T>(List<T> list, IEnumerable<string> exportColumns, IEnumerable<string> ignoreColumns, string savePath, string fileName, bool template = false)
        {
            if (!Directory.Exists(savePath)) Directory.CreateDirectory(savePath);

            //获取代码生成器对应的配置信息
            //  List<CellOptions> cellOptions = GetExportColumnInfo(typeof(T).GetEntityTableName(), template);
            //2020.06.02修复使用表别名时读取不到配置信息
            List<CellOptions> cellOptions = GetExportColumnInfo(typeof(T).Name, template, columns: exportColumns?.ToArray());
            string fullPath = savePath + fileName;
            //获取所有有值的数据源
            var dicNoKeys = cellOptions
                 .Where(x => !string.IsNullOrEmpty(x.DropNo) && x.KeyValues != null && x.KeyValues.Keys.Count > 0)
                 .Select(x => new { x.DropNo, x.ColumnName, x.SearchType, x.EditType }).Distinct().ToList();
            //2021.01.24修复多选类型，导出excel文件没有转换数据源的问题
            var selectList = dicNoKeys.Where(x => x.SearchType == "checkbox" || x.SearchType == "selectList" || x.EditType == "checkbox" || x.EditType == "selectList")
                  .Select(s => s.ColumnName).ToArray();

            List<PropertyInfo> propertyInfo = null;

            /*导出时，代码生成器中的表配置信息Sys_TableInfo/Sys_TableColumn必须与当前数据库相同，否则导出来可能没有数据*/

            //2020.06.02优化读取导出列配置信息
            //导出指定的列
            //如果指定了导出的标题列，忽略的标题列不再起作用
            if (exportColumns != null && exportColumns.Count() > 0)
            {
                propertyInfo =
                   typeof(T).GetProperties()
                  .Where(x => exportColumns.Select(g => g.ToLower()).Contains(x.Name.ToLower())).ToList();
                //.Where(x => cellOptions.Select(s => s.ColumnName) //获取代码生成器配置的列
                //.Contains(x.Name)).ToList();
            }
            else if (ignoreColumns != null && ignoreColumns.Count() > 0)
            {
                propertyInfo = typeof(T).GetProperties()
                  .Where(x => !ignoreColumns.Select(g => g.ToLower()).Contains(x.Name.ToLower()))
                  .Where(x => cellOptions.Select(s => s.ColumnName).Contains(x.Name)) //获取代码生成器配置的列
                  .ToList();
            }
            else
            {
                //默认导出代码生成器中配置【是否显示】=是的列
                propertyInfo = typeof(T).GetProperties()
                  .Where(x => cellOptions.Select(s => s.ColumnName).Contains(x.Name)) //获取代码生成器配置的列
                  .ToList();
                /*
                 * 如果propertyInfo查出来的长度=0
                 * 1、代码生成器中的配置信息是否同步到当前数据库
                 * 2、代码生成器中的配置列名与model的字段是否大小写一致
                 */
            }
            string[] dateArr = null;
            if (!template)
            {
                dateArr = propertyInfo.Where(x => x.PropertyType == typeof(DateTime)
                || x.PropertyType == typeof(DateTime?))
                .Select(s => s.Name).ToArray();
            }

            using (ExcelPackage package = new ExcelPackage())
            {
                var worksheet = package.Workbook.Worksheets.Add("sheet1");
                for (int i = 0; i < propertyInfo.Count; i++)
                {
                    string columnName = propertyInfo[i].Name;
                    using (ExcelRange range = worksheet.Cells[1, i + 1])
                    {
                        worksheet.Cells[1, i + 1].Style.Fill.PatternType = ExcelFillStyle.Solid;
                        //默认灰色背景，白色字体
                        Color backgroundColor = Color.Gray;
                        //字体颜色
                        Color fontColor = Color.White;
                        //下载模板并且是必填项，将表格设置为黄色
                        if (template)
                        {
                            fontColor = Color.Black;
                            if (cellOptions.Exists(x => x.ColumnName == columnName && x.Requierd))
                            {
                                backgroundColor = Color.Yellow;  //黄色必填
                            }
                            else
                            {
                                backgroundColor = Color.White;
                            }
                        }
                        worksheet.Cells[1, i + 1].Style.Fill.BackgroundColor.SetColor(backgroundColor);  //背景色
                        worksheet.Cells[1, i + 1].Style.Font.Color.SetColor(fontColor);//字体颜色
                    }
                    CellOptions options = cellOptions.Where(x => x.ColumnName == columnName).FirstOrDefault();
                    if (options != null)
                    {
                        worksheet.Column(i + 1).Width = options.ColumnWidth / 6.00;
                        worksheet.Cells[1, i + 1].Value = options.ColumnCNName;
                    }
                    else
                    {
                        worksheet.Column(i + 1).Width = 15;
                        worksheet.Cells[1, i + 1].Value = columnName;
                    }
                }
                //下载模板直接返回
                if (template)
                {
                    package.SaveAs(new FileInfo(fullPath));
                    return fullPath;
                }
                //2021.01.24修复多选类型，导出excel文件没有转换数据源的问题
                IEnumerable<string> GetListValues(string cellValues, string propertyName)
                {
                    var values = cellValues.Split(",");
                    for (int i = 0; i < values.Length; i++)
                    {
                        cellOptions.Where(x => x.ColumnName == propertyName)
                      .Select(s => s.KeyValues)
                      .FirstOrDefault()
                     .TryGetValue(values[i], out string result);
                        yield return result ?? values[i];
                    }

                }
                for (int i = 0; i < list.Count; i++)
                {
                    for (int j = 0; j < propertyInfo.Count; j++)
                    {
                        object cellValue = null;
                        if (dateArr != null && dateArr.Contains(propertyInfo[j].Name))
                        {
                            object value = propertyInfo[j].GetValue(list[i]);
                            cellValue = value == null ? "" : ((DateTime)value).ToString("yyyy-MM-dd HH:mm:sss").Replace(" 00:00:00", "");
                        }
                        else
                        {
                            cellValue = propertyInfo[j].GetValue(list[i]);
                        }
                        if (cellValue != null && dicNoKeys.Exists(x => x.ColumnName == propertyInfo[j].Name))
                        {
                            //2021.01.24修复多选类型，导出excel文件没有转换数据源的问题
                            if (selectList.Contains(propertyInfo[j].Name))
                            {
                                cellValue = string.Join(",", GetListValues(cellValue.ToString(), propertyInfo[j].Name));
                            }
                            else
                            {
                                cellOptions.Where(x => x.ColumnName == propertyInfo[j].Name)
                            .Select(s => s.KeyValues)
                            .FirstOrDefault()
                            .TryGetValue(cellValue.ToString(), out string result);
                                cellValue = result ?? cellValue;
                            }

                        }
                        worksheet.Cells[i + 2, j + 1].Value = cellValue;
                    }
                }

                package.SaveAs(new FileInfo(fullPath));
            }
            return fullPath;
        }


        /// <summary>
        /// 获取导出的列的数据信息
        /// </summary>
        /// <param name="tableName"></param>
        /// <param name="temlate">是否为下载模板</param>
        /// filterKeyValue是否过滤Key相同的数据
        /// <returns></returns>
        private static List<CellOptions> GetExportColumnInfo(string tableName, bool temlate = false, bool filterKeyValue = true, string[] columns = null)
        {
            //&& x.IsDisplay == 1&&x.IsReadDataset==0只导出代码生器中设置为显示并且不是只读的列，可根据具体业务设置导出列
            // && x.IsReadDataset == 0
            //2020.06.02增加不区分大表名大小写: 原因mysql可能是表名是小写，但生成model的时候强制大写
            //x => x.TableName.ToLower() == tableName.ToLower()
            var query = DBServerProvider.DbContext.Set<Sys_TableColumn>().Where(x => x.TableName.ToLower() == tableName.ToLower());
            if (columns != null && columns.Length > 0)
            {
                query = query.Where(x => columns.Contains(x.ColumnName));
            }
            else
            {
                query = query.Where(x => x.IsDisplay == 1);
            }
            List<CellOptions> cellOptions = query.OrderByDescending(x => x.OrderNo).Select(c => new CellOptions()
            {
                ColumnName = c.ColumnName,
                ColumnCNName = c.ColumnCnName,
                DropNo = c.DropNo,
                Requierd = c.IsNull > 0 ? false : true,
                ColumnWidth = c.ColumnWidth ?? 90,
                EditType = c.EditType,
                SearchType = c.SearchType

            }).ToList();


            if (temlate) return cellOptions;

            var dicNos = cellOptions.Where(x => !string.IsNullOrEmpty(x.DropNo)).Select(c => c.DropNo);

            if (dicNos.Count() == 0) return cellOptions;

            var dictionaries = DictionaryManager.GetDictionaries(dicNos);
            //获取绑定字典数据源下拉框的值
            foreach (string dicNo in dicNos.Distinct())
            {
                Dictionary<string, string> keyValues = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
                List<Sys_DictionaryList> dictionaryLists = dictionaries
                   .Where(x => x.DicNo == dicNo && x.Sys_DictionaryList != null)
                   .Select(s => s.Sys_DictionaryList).FirstOrDefault();
                if (dictionaryLists == null || dictionaryLists.Count == 0) continue;
                foreach (var item in dictionaryLists)
                {
                    ////filterKeyValue为true过滤keyvalue相不的项,key==value相同的则不处理
                    if (filterKeyValue && item.DicName == item.DicValue) continue;
                    if (keyValues.ContainsKey(item.DicValue)) continue;
                    keyValues.Add(item.DicValue, item.DicName);
                }

                foreach (CellOptions options in cellOptions.Where(x => x.DropNo == dicNo))
                {
                    options.KeyValues = keyValues;
                }
            }
            return cellOptions;
        }

        public static string ExportGeneralExcel(
         List<Dictionary<string, object>> rows,
         string fileName,
         string path = null,
         Action<ExcelWorksheet, int, int, object> onFillCell = null,
         Action<ExcelWorksheet> saveBefore = null)
        {
            return ExportGeneralExcel(rows.Select(item => item as IDictionary<string, object>).ToList(), fileName, path, onFillCell, saveBefore);
        }

        /// <summary>
        /// 2021.01.10增加通过excel导出功能
        /// </summary>
        /// <param name="rows"></param>
        /// <param name="fileName"></param>
        /// <param name="path"></param>
        /// <param name="onFillCell"></param>
        /// <param name="saveBefore"></param>
        /// <returns></returns>
        public static string ExportGeneralExcel(
                List<IDictionary<string, object>> rows,
                string fileName,
                string path = null,
                Action<ExcelWorksheet, int, int, object> onFillCell = null,
                Action<ExcelWorksheet> saveBefore = null)
        {
            path = path ?? $"Download/ExcelExport/{ DateTime.Now.ToString("yyyyyMMdd")}/";
            string fullPath = path.MapPath();
            fileName = Guid.NewGuid() + "_" + fileName;
            if (!Directory.Exists(fullPath)) Directory.CreateDirectory(fullPath);

            using (ExcelPackage package = new ExcelPackage())
            {
                var worksheet = package.Workbook.Worksheets.Add("sheet1");
                int j = 0;
                foreach (var item in rows[0])
                {
                    object cellValue = item.Key;

                    int i = 0;
                    worksheet.Cells[1 + i, j + 1].Value = cellValue;
                    //worksheet.Column(j + 1).Width = 11;
                    worksheet.Row(i + 1).Height = 20;//设置行高
                    var style = worksheet.Cells[i + 1, j + 1].Style;
                    style.Fill.PatternType = ExcelFillStyle.Solid;
                    style.HorizontalAlignment = ExcelHorizontalAlignment.Center;//水平居中
                    style.VerticalAlignment = ExcelVerticalAlignment.Center;//垂直剧中
                    style.Font.Bold = true;//字体为粗体
                                           //style
                    style.Fill.BackgroundColor.SetColor(Color.FromArgb(216, 216, 216));//背景色
                    style.Border.BorderAround(ExcelBorderStyle.Thin, Color.FromArgb(191, 191, 191));//边框

                    onFillCell?.Invoke(worksheet, i, j, cellValue);
                    j++;
                }
                for (int i = 0; i < rows.Count; i++)
                {
                    var row = rows[i];
                    j = 0;
                    foreach (var item in row)
                    {
                        object cellValue = item.Value;
                        worksheet.Cells[i + 2, j + 1].Value = cellValue;

                        onFillCell?.Invoke(worksheet, i + 1, j, cellValue);
                        j++;
                    }
                    worksheet.Cells[worksheet.Dimension.Address].AutoFitColumns();
                    for (var col = 1; col <= worksheet.Dimension.End.Column; col++)
                    {
                        worksheet.Column(col).Width = worksheet.Column(col).Width + 2;
                    }
                }
                saveBefore?.Invoke(worksheet);
                package.SaveAs(new FileInfo(fullPath + fileName));
            }
            return path + fileName;
        }




        //将已经获取到的Base64字符串，转换成文件，保存到服务器的某个文件路径下面。
        public string SaveDocumentByBase64(string base64)
        {

            string htmlRptPath = "".MapPath(true);
            string sFileName =  DateTime.Now.ToString("yyyMMddHHmmsss");   //这里的imageFormat就是文件类型
            string sFilePath =$"Upload/Tables/{typeof(T).GetEntityTableName()}/{DateTime.Now.ToString("yyyMMddHHmmsss") + new Random().Next(1000, 9999)}/";//创建路径文件夹

            sFileName = sFilePath + "\\" + sFileName;
            //路径不存在，则创建路径
            if (!Directory.Exists(sFilePath))
            {
                Directory.CreateDirectory(sFilePath);
            }
            //如果文件已经存在，则删除文件
            if (System.IO.File.Exists(sFileName))
            {
                System.IO.File.Delete(sFileName);
            }
            //注意：文件直接转base64前面会带有“data:application/pdf;base64,”前缀，需要去掉。
            byte[] DocBytes = Convert.FromBase64String(base64);
            //文件流创建文件内容
            FileStream fs = new FileStream(sFileName, FileMode.CreateNew);
            BinaryWriter bw = new BinaryWriter(fs);
            bw.Write(DocBytes, 0, DocBytes.Length);
            bw.Close();
            fs.Close();
            return sFileName;
        }

        //文件全路径：fileName
        public string DocumentToBase64Str(string fileName)
        {
            FileStream filestream = new FileStream(fileName, FileMode.Open);

            byte[] bt = new byte[filestream.Length];
            //调用read读取方法
            filestream.Read(bt, 0, bt.Length);
            string base64Str = Convert.ToBase64String(bt);
            filestream.Close();
            return base64Str;
        }

        public static DataSet ImportExcel(string filePath)
        {
            DataSet ds = null;
            try
            {
                //打开文件
                FileStream fileStream = new FileStream(filePath, FileMode.Open);
                //读取文件流
                ExcelPackage package = new ExcelPackage(fileStream);
                //获取sheet表
                ExcelWorksheets worksheets = package.Workbook.Worksheets;
                ExcelWorksheet worksheet = null;
                ds = new DataSet();
                DataTable dt = null;
                for (int i = 1; i <= worksheets.Count; i++)
                {
                    dt = new DataTable();
                    dt.TableName = "table" + i.ToString();
                    worksheet = worksheets[i];
                    //获取行数
                    int rowCount = worksheet.Dimension.End.Row;
                    //获取列数
                    int colCount = worksheet.Dimension.End.Column;
                    //起始行为1
                    int rowIndex = worksheet.Dimension.Start.Row;
                    //起始列为1
                    int colIndex = worksheet.Dimension.Start.Column;
                    DataColumn dc = null;
                    for (int j = colIndex; j <= colCount; j++)
                    {
                        dc = new DataColumn(worksheet.Cells[rowIndex, j].Value.ToString());
                        dt.Columns.Add(dc);
                    }
                    try
                    {
                        rowIndex++;
                        for (int k = rowIndex; k <= rowCount; k++)
                        {
                            DataRow dr = dt.NewRow();
                            for (int l = colIndex; l <= colCount; l++)
                            {
                                if (worksheet.GetValue(k, l) == null)
                                {
                                    continue;
                                }
                                dr[l - 1] = worksheet.GetValue(k, l).ToString();
                            }
                            ds.Tables.Add(dt);
                        }
                    }
                    catch (Exception ex)
                    {

                        throw;
                    }
                  
                    package.Dispose();
                    worksheet = null;
                    worksheets = null;
                    package = null;
                    fileStream.Close();
                    fileStream.Dispose();
                }
            }

            catch (Exception ex)
            {
                throw;
            }
            return ds;
        }



        //根據指定路徑 讀取Excel
        public static DataTable ReadExcel(string filePath)
        {
            using (var package = new ExcelPackage(new FileInfo(filePath)))
            {
                var workbook = package.Workbook;
                var worksheet = workbook.Worksheets.First();
                var table = new DataTable();

                var startRow = worksheet.Dimension.Start.Row;
                var endRow = worksheet.Dimension.End.Row;
                var startColumn = worksheet.Dimension.Start.Column;
                var endColumn = worksheet.Dimension.End.Column;

                for (int i = startColumn; i <= endColumn; i++)
                {
                    table.Columns.Add(worksheet.Cells[startRow, i].Value.ToString());
                }

                for (int row = startRow + 1; row <= endRow; row++)
                {
                    var dataRow = table.NewRow();

                    for (int col = startColumn; col <= endColumn; col++)
                    {
                        dataRow[col - 1] = worksheet.Cells[row, col].Value;
                    }

                    table.Rows.Add(dataRow);
                }

                return table;
            }
        }



        public static List<Dictionary<string, object>> ToDictionary<T>(List<T> list)
        {
            Type tInfo = typeof(T);
            List<object> listHeader = new List<object>();
            List<Dictionary<string, object>> newList = new List<Dictionary<string, object>>();
            Dictionary<string, object> dictData = new Dictionary<string, object>();
            foreach (PropertyInfo p in tInfo.GetProperties())
            {
                string key = p.Name;
                if (key.Equals("salestransfer_dbid")) continue;
                //display名字
                var name = p.GetCustomAttribute<DisplayNameAttribute>().DisplayName;
                ////不存在默认为保存
                GetAttributes<DisplayNameAttribute>(name, out object displayName);
                listHeader.Add(displayName ?? name);
                if (!string.IsNullOrEmpty(name) && list.Count == 0)
                {
                    dictData[name] = null;
                }
                else
                {
                    dictData[name] = null;
                }
            }
            if (list.Count != 0)
            {
                var dictDataList = new Dictionary<string, object>();
                foreach (var model in list)
                {
                    dictDataList = new Dictionary<string, object>();
                    foreach (PropertyInfo p in tInfo.GetProperties())
                    {
                        string key = p.Name;
                        if (key.Equals("salestransfer_dbid")) continue;
                        //display名字
                        var name = p.GetCustomAttribute<DisplayNameAttribute>().DisplayName;
                        GetAttributes<DisplayNameAttribute>(name, out object displayName);
                        if (!string.IsNullOrEmpty(name) && list.Count == 0)
                        {
                            dictDataList[name] = null;
                        }
                        else
                        {
                            dictDataList[name] = null;
                        }
                    }
                    foreach (PropertyInfo p in tInfo.GetProperties())
                    {
                        string key = p.Name;
                        if (key.Equals("salestransfer_dbid")) continue;
                        string name = p.GetCustomAttribute<DisplayNameAttribute>().DisplayName;
                        if (dictDataList.ContainsKey(name))
                        {
                            dictDataList[name] = p.GetValue(model, null);
                        }
                    }
                    newList.Add(dictDataList);
                }
            }
            else
            {
                newList.Add(dictData);
            }
            return newList;

        }
        static bool GetAttributes<A>(string propertyName, out object value)
        {
            value = default;
            Type attributeType = typeof(A);
            PropertyInfo propertyInfo = typeof(T).GetProperties().FirstOrDefault(p => p.Name == propertyName);
            if (propertyInfo != null)
            {
                Attribute attr = Attribute.GetCustomAttribute(propertyInfo, attributeType);
                if (attr != null)
                {
                    value = false;
                    return true;
                }
            }
            return false;
        }

        //將DataTable 轉換成 List
        //使用方法  List<CustomerContact> list2 = DtToList<CustomerContact>.ConvertToModel(dt);
        public static class DtToList<T> where T : new()
        {
            /// <summary>
            /// datatable to list
            /// </summary>
            /// <param name="dt"></param>
            /// <returns></returns>
            public static List<T> ConvertToModel(DataTable dt)
            {

                List<T> ts = new List<T>();// 定义集合
                Type type = typeof(T); // 获得此模型的类型
                string tempName = "";
                foreach (DataRow dr in dt.Rows)
                {
                    T t = new T();
                    PropertyInfo[] propertys = t.GetType().GetProperties();// 获得此模型的公共属性
                    foreach (PropertyInfo pi in propertys)
                    {
                        tempName = pi.Name;
                        if (dt.Columns.Contains(tempName))
                        {
                            if (!pi.CanWrite) continue;
                            object value = dr[tempName];
                            if (value != DBNull.Value)
                               // pi.SetValue(t, value, null);
                                pi.SetValue(t, Convert.ChangeType(value, pi.PropertyType), null);

                        }
                    }
                    ts.Add(t);
                }
                return ts;
            }

        }

        //將list 轉換成 datatable
        //使用方法  DataTable dt = ListToDt<CustomerContact>(list);
        public static DataTable ListToDt<T>(IEnumerable<T> collection)
        {
            var props = typeof(T).GetProperties();
            var dt = new DataTable();
            dt.Columns.AddRange(props.Select(p => new
            DataColumn(p.Name, p.PropertyType)).ToArray());
            if (collection.Count() > 0)
            {
                for (int i = 0; i < collection.Count(); i++)
                {
                    ArrayList tempList = new ArrayList();
                    foreach (PropertyInfo pi in props)
                    {
                        object obj = pi.GetValue(collection.ElementAt(i), null);
                        tempList.Add(obj);
                    }
                    object[] array = tempList.ToArray();
                    dt.LoadDataRow(array, true);
                }
            }
            return dt;
        }


        //實體映射，獲取某個屬性的全部數據 轉換成List<string>
        public static List<string> GetSingleString<T>(IEnumerable<T> List, Expression<Func<T, object>> SelectFileds = null)
        {
            List<string> temp = new List<string>();
            string[] arr = null;
            if (List.Count() != 0)
            {
                var templist = JsonConvert.DeserializeObject<List<T>>(JsonConvert.SerializeObject(List));
                if (SelectFileds != null)
                {
                    arr = SelectFileds.GetExpressionToArray();
                    if (arr.Length != 0)
                    {
                        foreach (var item in arr)
                        {
                            var thisvalue = templist.Select(p => p.GetType().GetProperty(item).GetValue(p)).Distinct().ToList();
                            temp = JsonConvert.DeserializeObject<List<string>>(JsonConvert.SerializeObject(thisvalue));
                        }
                    }
                }
            }
            return temp;
        }




    }

    public class CellOptions
    {
        public string ColumnName { get; set; }//导出表的列
        public string ColumnCNName { get; set; }//导出列的中文名
        public string DropNo { get; set; }//字典编号
        public int ColumnWidth { get; set; }//导出列的宽度,代码生成维护的宽度
        public bool Requierd { get; set; } //是否必填
        public int Index { get; set; }//列所在模板的序号(导入用)
        //2021.01.24修复多选类型，导出excel文件没有转换数据源的问题
        public string EditType { get; set; }
        public string SearchType { get; set; }
        //对应字典项维护的Key,Value
        public Dictionary<string, string> KeyValues { get; set; }
        //public string Value { get; set; } //对应字典项维护的Value
        //public string Name { get; set; } //对应字典项显示的名称
    }
}
