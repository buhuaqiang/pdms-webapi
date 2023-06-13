<template>
  <div class="edit-container">
    <el-scrollbar style="height: 100%;  padding: 12px;">
      <slot name="header"></slot>
      <div class="edit-form">
        <div class="edit-form-header">
          <div class="edit-form-header-table-name">
            <div class="border"></div>
            <div class="name">
              {{ $ts(tableCNName) }}{{ keyValue ? '('+$ts('編輯')+')' : '('+$ts('新建')+')' }}
            </div>
          </div>
          <div class="edit-form-buttons">
            <template v-for="(btn, index) in buttons" :key="index">
              <el-dropdown v-if="btn.drop" @click="() => { }">
                <el-button link plain size="small">
                  {{$ts( item.name)
                  }}<i class="el-icon-arrow-down el-icon-right"></i>
                </el-button>
                <template #dropdown>
                  <el-dropdown-menu>
                    <el-dropdown-item @click="() => { }" :name="item.name" v-show="!item.hidden"
                      v-for="(item, dIndex) in btn.data" :key="dIndex">
                      <i :class="item.icon"></i>
                      {{ $ts(item.name) }}</el-dropdown-item>
                  </el-dropdown-menu>
                </template>
              </el-dropdown>
              <el-button v-else :disabled="btn.readonly" link v-show="!btn.hidden" @click="btnClick(btn)">
                <i :class="btn.icon"></i>
                {{ btn.name }}
              </el-button>
            </template>
          </div>
        </div>
        <!-- :label-position="labelPosition" -->
        <vol-form  :load-key="false" ref="form" :label-width="labelWidth"
          :formRules="formOptions" :formFields="formFields"></vol-form>
      </div>

      <slot name="content"></slot>

      <div v-if="detail.columns.length" class="edit-form edit-detail">
        <div class="edit-form-header">
          <div class="edit-form-header-table-name">
            <div class="border"></div>
            <div class="name">{{ $ts(detail.cnName) }}</div>
          </div>
          <div class="edit-form-buttons">
            <template v-for="(btn, index) in detailButtons" :key="index">
              <el-dropdown v-if="btn.drop" @click="() => { }">
                <el-button link plain size="small">
                  {{ $ts(item.name)
                  }}<i class="el-icon-arrow-down el-icon-right"></i>
                </el-button>
                <template #dropdown>
                  <el-dropdown-menu>
                    <el-dropdown-item @click="() => { }" :name="item.name" v-show="!item.hidden"
                      v-for="(item, dIndex) in btn.data" :key="dIndex">
                      <i :class="item.icon"></i>
                      {{ $ts(item.name) }}</el-dropdown-item>
                  </el-dropdown-menu>
                </template>
              </el-dropdown>
              <el-button v-else link v-show="!btn.hidden" @click="btnClick(btn)">
                <i :class="btn.icon"></i>
                {{ $ts(btn.name) }}
              </el-button>
            </template>
          </div>
        </div>
        <vol-table ref="table" @loadBefore="loadDetailTableBefore" @loadAfter="loadDetailTableAfter" @rowClick="rowClick"
          :url="detail.url" :load-key="true" :index="true" :columns="detail.columns" :pagination="detail.pagination"
          :max-height="detail.height" :pagination-hide="false" :beginEdit="beginEdit" :endEditBefore="endEditBefore"
          :summary="true" :column-index="columnIndex" :ck="ck" :text-inline="textInline"></vol-table>
      </div>

      <slot name="footer"></slot>
    </el-scrollbar>
  </div>
</template>
<script>
import { ElMessage, ElMessageBox } from 'element-plus';

import { defineComponent, ref, reactive, getCurrentInstance } from 'vue';
import { useRouter, useRoute } from 'vue-router';
import store from '@/store/index';
import http from '@/api/http.js';
import VolForm from '@/components/basic/VolForm.vue';
import VolBox from '@/components/basic/VolBox.vue';
import VolTable from '@/components/basic/VolTable.vue';
import AuditHis from '@/components/basic/ViewGrid/AuditHis';
export default defineComponent({
  name: 'vol-edit',
  components: {
    'vol-form': VolForm,
    'vol-table': VolTable,
    'vol-box': VolBox,
    'audit-his': AuditHis
  },
  props: {
    keyField: {
      //主鍵字段
      type: String,
      default: ''
    },
    tableName: {
      type: String,
      default: ''
    },
    tableCNName: {
      type: String,
      default: '表名'
    },
    labelPosition: {
      //標簽顯示位置
      type: String,
      default: 'right'
    },
    labelWidth: {
      type: Number, //表單標簽寬度
      default: 100
    },
    formFields: {
      type: Object,
      default: {}
    },
    formOptions: {
      type: Object,
      default: () => {
        return [];
      }
    },
    detail: {
      type: Object,
      default: () => {
        return {
          cnName: '',
          table: '',
          columns: [],
          url: '',
          pagination: { size: 100, sortName: '' },
          height: 0 //明細表高度
        };
      }
    },
    columnIndex: {
      type: Boolean,
      default: false
    },
    ck: {
      //明細表復選框
      type: Boolean,
      default: true
    },
    textInline: {
      //明細表不換行顯示
      type: Boolean,
      default: true
    },
    loadFormBefore: {//表單加載前
      type: Function,
      default: (params, callback) => {
        callback(true);
      }
    },
    loadFormAfter: {//表單加載后
      type: Function,
      default: (result, callback) => {
        callback(true);
      }
    },

    loadTableBefore: { //明細表加載前
      type: Function,
      default: (params, callback) => {
        callback(true);
      }
    },
    loadTableAfter: {//明細表加載后
      type: Function,
      default: (params, result, callback) => {
        callback(true);
      }
    },

    addBefore: { //新建前
      type: Function,
      default: (formData, callback) => {
        callback(true);
      }
    },
    addAfter: {//新建后
      type: Function,
      default: (formData, callback) => {
        callback(true);
      }
    },


    updateBefore: { //更新前
      type: Function,
      default: (formData, callback) => {
        callback(true);
      }
    },
    updateAfter: {//更新后
      type: Function,
      default: (params, callback) => {
        callback(true);
      }
    }
  },
  setup(props, context) {
    const keyValue = ref(null);
    const router = useRouter();

    const route = useRoute();
    const id = ref(null);
    let isAdd = true;
    if (route.query.id) {
      isAdd = false;
      id.value = route.query.id;
    }

    keyValue.value = router.currentRoute.value.query.id;
    if (!props.detail.height) {
      props.detail.height = 500;
    }
    const { appContext, proxy } = getCurrentInstance();
    //主表按鈕
    const buttons = reactive([]);
    //明細表按鈕
    const detailButtons = reactive([]);

    const form = ref(null);
    //保存
    const save = () => {
      form.value.validate((result) => {
        if (!result) {
          return;
        }
        saveExecute();
      });
    };

    const saveExecute = async () => {
      const editFormFields = {};
      let formFields = props.formFields;
      for (const key in formFields) {
        if (Array.isArray(formFields[key])) {
          let u = formFields[key].some((x) => {
            return x.path;
          });
          if (u) {
            let allPath = formFields[key].map((x) => {
              return x.path;
            });
            editFormFields[key] = allPath.join(',');
          } else if (dicInfo[key] && dicInfo[key].type == 'cascader') {
            editFormFields[key] =
              formFields[key][formFields[key].length - 1] || null;
          } else {
            editFormFields[key] = formFields[key].join(',');
          }
        } else if (typeof formFields[key] == 'function') {
          try {
            editFormFields[key] = formFields[key]();
          } catch (error) { }
        } else {
          editFormFields[key] = formFields[key];
        }
      }
      if (id.value) {
        editFormFields[props.keyField] = id.value;
      }
      let formData = {
        mainData: editFormFields,
        detailData: null,
        delKeys: delKeys
      };
      //生成明細表數據d
      if (props.detail.columns.length) {
        formData.detailData = getDetailRows();
      }
      let status = true;
      // proxy.$emit(isAdd ? 'addBefore' : 'updateBefore', formData, (result) => {
      proxy[isAdd ? 'addBefore' : 'updateBefore'](formData, (result) => {
        // status = result;
        if (!result) {
          return;
        }
        saveExecting(formData);
      });
      if (!status) return;
    };

    const saveExecting = (formData) => {
      const saveUrl = `api/${props.tableName}/${isAdd ? 'add' : 'update'}`;
      http.post(saveUrl, formData, true).then((x) => {
        ElMessage({
          type: x.status ? 'success' : 'error',
          message: x.message
        });
        if (!x.status) {
          return;
        }
        proxy[isAdd ? 'addAfter' : 'updateAfter'](x, (result) => {
          //  status = result;
        });
        delKeys.splice(0);
        if (isAdd) {
          form.value.reset();
          //重置明細表數據
          table.value && table.value.reset();
          return;
        }
      });
    };

    const getDetailRows = () => {
      let detailData = table.value.rowData;
      let _fields = props.detail.columns
        .filter((c) => {
          return (
            c.type == 'selectList' || (c.edit && c.edit.type == 'selectList')
          );
        })
        .map((c) => {
          return c.field;
        });
      //2022.06.20增加保存時對明細表下拉框多選的判斷
      if (_fields.length) {
        detailData = JSON.parse(JSON.stringify(detailData));
        detailData.forEach((row) => {
          for (let index = 0; index < _fields.length; index++) {
            const _field = _fields[index];
            if (Array.isArray(row[_field])) {
              row[_field] = row[_field].join(',');
            }
          }
        });
      }
      return detailData;
    };
    //刪除
    const delClick = () => {
      if (isAdd) {
        return;
      }
      ElMessageBox.confirm('確定要刪除此數據嗎?', '提示', {
        confirmButtonText: '確定',
        cancelButtonText: '取消',
        center: true,
        type: 'warning'
      }).then(() => {
        const delUrl = `api/${props.tableName}/del`;
        http.post(delUrl, [id.value], true).then((x) => {
          ElMessage({
            type: x.status ? 'success' : 'error',
            message: x.message
          });
          if (!x.status) {
            return;
          }
          appContext.config.globalProperties.$tabs.close(route.path);
        });
      });
    };

    let permission = store.getters.getPermission('/' + props.tableName);
    if (!permission || !permission.permission) {
      permission = [];
    } else {
      permission = permission.permission;
    }

    if (permission.includes('Add') || permission.includes('Update')) {
      buttons.push({
        name: '保存',
        hidden: false,
        readonly: false,
        icon: 'el-icon-check',
        click: () => {
          save();
        }
      });

      detailButtons.push({
        name: '刷新',
        hidden: false,
        icon: 'el-icon-refresh',
        click: () => {
          getDetailData();
        }
      });

      detailButtons.push({
        name: '刪除行',
        hidden: false,
        readonly: false,
        icon: 'el-icon-delete',
        click: () => {
          delRow();
        }
      });

      detailButtons.push({
        name: '添加行',
        readonly: false,
        hidden: false,
        icon: 'el-icon-plus',
        click: () => {
          addRow();
        }
      });
    } else {
      //沒有新建與編輯權限的設置為只讀
      props.formOptions.forEach((options) => {
        options.forEach((op) => {
          op.readonly = true;
        });
      });
    }
    if (permission.includes('Audit') && !isAdd) {
      buttons.unshift({
        name: '審核',
        readonly: false,
        hidden: false,
        value: 'Audit',
        icon: 'el-icon-edit-outline',
        click: () => {
          auditClick();
        }
      });
    }
    if (id.value) {
      if (permission.includes('Delete')) {
        buttons.unshift({
          name: '刪除',
          readonly: false,
          hidden: false,
          icon: 'el-icon-delete',
          click: () => {
            delClick();
          }
        });
      }
    }

    // buttons.unshift({
    //   name: '刷新',
    //   hidden: false,
    //   icon: 'el-icon-refresh',
    //   click: () => {}
    // });
    proxy.$emit('initButtons', buttons);

    proxy.$emit('initDetailButtons', detailButtons);

    //明細表加載前
    const loadDetailTableBefore = (param, callback) => {
      if (!id.value) {
        callback(false);
        return;
      }
      param.value = id.value;

      //這里現在不支持異步請求,需要修改voltable
      // proxy.$emit('loadTableBefore', param, (x) => {
      proxy.loadTableBefore(param, (x) => {
        callback(x);
      });
    };
    //明細表加載后
    const loadDetailTableAfter = (rows, result) => {
      proxy.loadTableAfter(rows, result, (x) => { });
      return true;
    };

    const rowClick = () => { };

    //開始編輯
    const beginEdit = (row, column, index) => {
      return true;
    };
    //結束編輯前
    const endEditBefore = (row, column, index) => {
      return true;
    };

    //明細表refs
    const table = ref(null);
    //添加行
    const addRow = () => {
      table.value.rowData.unshift({});
    };

    const delKeys = [];
    const delRow = () => {
      const selectRows = table.value.getSelected();

      if (!selectRows.length) {
        ElMessage({
          type: 'error',
          message: '請選擇行數據'
        });
        return;
      }

      ElMessageBox.confirm('確定要刪除選中的行嗎?', '提示', {
        confirmButtonText: '確定',
        cancelButtonText: '取消',
        center: true,
        type: 'warning'
      }).then(() => {
        let key = props.detail.key;
        //記錄刪除的行數據
        selectRows.forEach((x) => {
          if (x.hasOwnProperty(key) && x[key]) {
            delKeys.push(x[key]);
          }
        });
        table.value.delRow();
        updateDetailTableSummaryTotal();
      });
    };

    const updateDetailTableSummaryTotal = () => {
      //2021.09.25增加明細表刪除、修改時重新計算行數與匯總
      //2021.12.12增加明細表判斷(強制刷新合計時會用到)
      if (!props.detail.columns.length) {
        return;
      }
      //刪除或新增行時重新設置顯示的總行數
      table.value.paginations.total = table.value.rowData.length;
      //重新設置合計
      if (table.value.summary) {
        table.value.columns.forEach((column) => {
          if (column.summary) {
            table.value.getInputSummaries(null, null, null, column);
          }
        });
      }
    };

    const workFlowSteps = reactive([]);
    //獲取審核節點信息
    const auditClick = () => {
   
    };



    let $message = appContext.config.globalProperties.$message;
    //當前操作的行數據
    const row = reactive({});

    const execGetPageData = (url, params) => {
      http.post(url, params, true).then((result) => {
        if (!result.rows) {
          ElMessage({
            type: 'error',
            message: '參數不正確'
          });
          return;
        }
        if (result.rows[0].hasOwnProperty('AuditStatus')) {
          if (result.rows[0].AuditStatus === 1) {
            buttons.forEach((x) => {
              if (x.value == 'Audit') {
                x.readonly = true;
              }
            });
          }
        }
        Object.assign(row, result.rows[0]);
        for (const key in props.formFields) {
          let val = result.rows[0][key];

          if (val === null || val === '' || val === undefined) {
            if (Array.isArray(props.formFields[key])) {
              props.formFields[key] = [];
            } else {
              props.formFields[key] = null;
            }
            continue;
          }
          //文件處理
          if (files.indexOf(key) != -1) {
            props.formFields[key] = val.split(',').map((x) => {
              let index = x.lastIndexOf('/');
              return {
                name: x.substr(x.length, index - 1),
                path: x
              };
            });
            continue;
          }

          if (dicInfo[key]) {
            //多選
            if (
              dicInfo[key].type == 'selectList' ||
              dicInfo[key].type == 'checkbox'
            ) {
              //多選
              val = val.split(',');
              if (dicInfo[key].isNumber) {
                props.formFields[key] = val.map((x) => {
                  return x * 1;
                });
              }
              continue;
            }
            if (dicInfo[key].type == 'cascader') {
              let orginData = [];
              props.formOptions.forEach((option) => {
                option.forEach((item) => {
                  if (item.field == key) {
                    orginData = item.orginData || [];
                  }
                });
              });
              let treeVal = appContext.config.globalProperties.base.getTreeAllParent(
                val,
                orginData
              );
              props.formFields[key] = treeVal.map((x) => {
                return x.id;
              });
              //console.log('編輯級聯');
              continue;
            }
            if (dicInfo[key].isNumber) {
              if (typeof val === 'string') {
                props.formFields[key] = val + '';
              } else {
                props.formFields[key] = val * 1;
              }
            } else {
              props.formFields[key] = val + '';
            }
            continue;
          }

          props.formFields[key] = val + '';
          //校驗圖片、多選字段設置值
          //校驗字段值類型
        }

        proxy.loadFormAfter(result, () => {

        });
      });
    };

    const getData = () => {
      if (!id.value) {
        return;
      }
      const url = `api/${props.tableName}/getPageData`;
      const params = {
        page: 1,
        row: 1,
        wheres: JSON.stringify([{ name: props.keyField, value: id.value }])
      };
      //proxy.$emit('loadFormBefore', params, (x) => {
      proxy.loadFormBefore(params, (x) => {
        if (!x) {
          return;
        }
        execGetPageData(url, params);
      });
    };

    const getDetailData = () => {
      if (!id.value) {
        return;
      }
      delKeys.length = 0;
      table.value.load({}, true);
      // http.post(props.detail.url,{page:})
    };

    // if (id.value) {
    //   getData();
    //   //獲取明細表數據
    //   // getDetailData();
    // }
    //圖片與文件上傳字段
    const files = [];
    const dicInfo = reactive({});
    const initDic = () => {
      const keys = [];
      props.formOptions.forEach((options) => {
        options.forEach((op) => {
          if (route.query.audit) {
            op.readonly = true;
          }
          if (['img', 'excel', 'file'].indexOf(op.type) != -1) {
            files.push(op.field);
            if (!op.url) {
              op.url = 'api/' + props.tableName + '/upload';
            }
          } else if (op.dataKey) {
            dicInfo[op.field] = {
              data: [],
              type: op.type,
              isNumber: false,
              key: op.dataKey
            };
            keys.push(op.dataKey);
            op.data = dicInfo[op.field].data;
          }
        });
      });
      if (!keys.length) {
        getData();
        return;
      }
      //初始化數據字典
      const dicUrl = 'api/Sys_Dictionary/GetVueDictionary';
      http.post(dicUrl, keys, true).then((result) => {
        for (let index = 0; index < result.length; index++) {
          const dicData = result[index];
          for (const key in dicInfo) {
            if (dicInfo[key].key == dicData.dicNo) {
              //生成級聯數據
              if (dicInfo[key].type == 'cascader') {
                let _data = JSON.parse(JSON.stringify(dicData.data));
                let cascaderArr = appContext.config.globalProperties.base.convertTree(
                  _data,
                  (node, data, isRoot) => {
                    if (!node.inited) {
                      node.inited = true;
                      node.label = node.value;
                      node.value = node.key;
                    }
                  }
                );
                props.formOptions.forEach((option) => {
                  option.forEach((item) => {
                    if (item.dataKey == dicData.dicNo) {
                      item.orginData = dicData.data;
                      item.data = cascaderArr;
                      if (!item.hasOwnProperty('checkStrictly')) {
                        item.checkStrictly = true;
                      }
                    }
                  });
                });
              } //select2組件
              else if (dicData.data.length >= 500 && !dicData.data[0].label) {
                dicData.data.forEach((item) => {
                  item.label = item.value;
                  item.value = item.key;
                });
              }
              dicInfo[key].data.splice(0);
              dicInfo[key].data.push(...dicData.data);
              if (dicData.data.length) {
                dicInfo[key].isNumber = typeof dicData.data[0].key !== 'string';
              }
            }
          }
        }
        //獲取數據
        getData();
      });
    };
    initDic();

    const btnClick = (item) => {
      if (item.click) {
        item.click();
      } else if (item.onClick) {
        item.onClick();
      }
    };

    return {
      id,
      dicInfo,
      getData,
      buttons,
      detailButtons,
      loadDetailTableAfter,
      loadDetailTableBefore,
      rowClick,
      beginEdit,
      endEditBefore,
      form,
      table,
      addRow,
      keyValue,
      workFlowSteps,
      row,
      btnClick
    };
  }
});
</script>
<style lang="less" scoped>
@import './edit.less';
</style>
