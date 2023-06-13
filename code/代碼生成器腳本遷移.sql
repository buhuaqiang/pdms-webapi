
--此腳本是將原來數據庫代碼生成器配置移植到企業版數據庫，執行完成后直接點生成代碼即可


--遷移主表
INSERT INTO Sys_TableColumn(ApiInPut, ApiIsNull, ApiOutPut, ColSize, ColumnCNName, ColumnName, ColumnType, 
ColumnWidth, Columnformat, CreateDate, CreateID, Creator, DropNo, EditColNo, EditRowNo, EditType, Enable, 
IsColumnData, IsDisplay, IsImage, IsKey, IsNull, IsReadDataset, Maxlength, Modifier, ModifyDate, ModifyID,
 OrderNo, Script, SearchColNo, SearchRowNo, SearchType, Sortable, TableName, Table_Id)

SELECT ApiInPut, ApiIsNull, ApiOutPut, ColSize, ColumnCNName, ColumnName, ColumnType, 
ColumnWidth, Columnformat, CreateDate, CreateID, Creator, DropNo, EditColNo, EditRowNo, EditType, Enable, 
IsColumnData, IsDisplay, IsImage, IsKey, IsNull, IsReadDataset, Maxlength, Modifier, ModifyDate, ModifyID,
 OrderNo, Script, SearchColNo, SearchRowNo, SearchType, Sortable, TableName, Table_Id  FROM netcoredev.dbo.Sys_TableColumn 
WHERE TableName IN ('表名1','表名2','表名3')


--遷移明細表
INSERT INTO Sys_TableInfo(CnName, ColumnCNName, DBServer, DataTableType, DetailCnName,
 DetailName, EditorType, Enable, ExpressField, FolderName, Namespace, OrderNo, 
ParentId, RichText, SortName, TableName, TableTrueName, UploadField, UploadMaxCount)
SELECT CnName, ColumnCNName, DBServer, DataTableType, DetailCnName,
 DetailName, EditorType, Enable, ExpressField, FolderName, Namespace, OrderNo, 
ParentId, RichText, SortName, TableName, TableTrueName, UploadField, UploadMaxCount  FROM netcoredev.dbo.Sys_TableInfo 
WHERE TableName IN ('表名1','表名2','表名3')

--設置明細表的父級id
UPDATE a SET a.Table_Id=(SELECT b.Table_Id FROM Sys_TableInfo AS b WHERE a.TableName=b.TableName) FROM Sys_TableColumn AS a 
WHERE TableName IN ('表名1','表名2','表名3')


--設置明細表放到某個目錄下，注意:ParentId=0是代碼生成器創建的文件夾id,自己修改值
UPDATE Sys_TableInfo SET ParentId=0 WHERE TableName IN ('表名1','表名2','表名3')



