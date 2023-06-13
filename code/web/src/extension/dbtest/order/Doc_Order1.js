/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整文檔見：http://v2.volcore.xyz/document/api 【代碼生成頁面ViewGrid】
 **常用示例見：http://v2.volcore.xyz/document/vueDev
 **后臺操作見：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用來自定義擴展業務代碼，可以擴展一些自定義頁面或者重新配置生成的代碼
//此頁面為全文檔示例代碼
//自定義的組件
import gridBody from './Doc_Order1/Doc_Order1GridBody';
import gridFooter from './Doc_Order1/Doc_Order1GridFooter';

let extension = {
  components: {
    //查詢界面擴展組件
    gridHeader: '',
    gridBody: gridBody, //按鈕下面的提示文字
    gridFooter: gridFooter, //訂單明細顯示的位置
    //新建、編輯彈出框擴展組件
    modelHeader: '',
    modelBody: '',
    modelFooter: ''
  },
  text: '此頁面是對框架所有文檔功能進行展示', //界面上的提示文字
  tableAction: '', //指定某張表的權限(這里填寫表名,默認不用填寫)
  buttons: { view: [], box: [], detail: [] }, //擴展的按鈕
  methods: {
    print() {
      //自定義權限按鈕(打印)
      //獲取選中的行數據
      let rows = this.getSelectRows();
      if (rows.length === 0) {
        return this.$message.error('請選中要打印的數據');
      }
      //從后臺獲取返回要打印的內容
      this.http.get('api/Demo_Order/print', {}, true).then((result) => {
        //打印的標簽
        let html = '';
        rows.forEach((row) => {
          //訂單類型orderType值是數字，從columns里面找到數據源轉換為名稱
          //字典轉換
          let data = this.columns.find((x) => {
            return x.field == 'OrderType';
          }).bind.data;
          //獲取字典項
          let obj = data.find((x) => {
            return x.key == row.OrderType;
          });
          let orderType = row.OrderType;
          //如果有查到字典，獲取字典的名稱
          if (obj) {
            orderType = obj.value;
          }
          //訂單日期
          let orderDate = (row.OrderDate || '').substr(0, 10);
          //生成打印的的樣式，打印什么樣的都自己寫css樣式
          html += `<div>
               <div style="display:flex;">
                 <div style="flex:1;">訂單編號：${row.OrderNo}</div>
                 <div style="flex:1;">訂單類型：${orderType}</div>
                 <div style="flex:1;">訂單日期：${orderDate}</div>
               </div>
            </div>`;
        });
        html += result;
        //調用打印
        this.printHtml(html);
      });
    },
    printHtml(html) {
      //調用打印
      var iframe = document.createElement('iframe');
      iframe.setAttribute('style', 'position:absolute;width:0;height:0;');
      document.body.appendChild(iframe);

      var doc = iframe.contentWindow.document;
      doc.write(html);
      doc.close();
      iframe.contentWindow.print();
      document.body.removeChild(iframe);
    },
    // activatedLoad(){
    //   this.search();
    // },
    onInit() {
      //設置界面上為單選
      this.single = true;
      //  this.maxBtnLength = 8;
      // this.ck=false;
      this.columnIndex = true;
      //table表格格式化與事件處理
      this.columns.forEach((columm) => {
        if (columm.field == 'TotalQty') {
          //設置總數量字段格式化顯示
          columm.formatter = (row) => {
            if (row.TotalQty < 120) {
              return '<a style="color:red;">' + row.TotalQty + '(點擊)</a>';
            }
            return '<a style="color:blue;">' + row.TotalQty + '(點擊)</a>';
          };
          //設置總數量字段點擊事件
          columm.click = (row, column, event) => {
            this.$message.info('點擊了單元格');
            //打開彈出框1
            this.$refs.gridBody.openModel1('cellClick');
          };
        }
      });
      //表格添加自定義按鈕(刪除、編輯)
      this.columns.push({
        field: '操作',
        title: '操作',
        width: 100,
        fixed: 'right', //按鈕右浮動
        render: this.getRender() //通過render渲染按鈕
      });

      //設置明細表求和，對應后臺Demo_OrderService.cs中的方法GetPageData
      this.columns.forEach((column) => {
        //指定主表的求和字段
        if (column.field == 'TotalPrice' || column.field == 'TotalQty') {
          column.summary = true;
        }
      });

      //設置頁面表格高度(使用document.body.clientHeight-其他標簽的高度)
      // this.tableMaxHeight = 500;
      this.tableMaxHeight = document.body.clientHeight - 260;

      //通過splice往buttons數組指定位置插入數據
      this.buttons.splice(1, 0, {
        name: '按鈕1', //按鈕名稱
        icon: 'el-icon-search', //按鈕圖標，參照iview圖標
        type: 'primary', //按鈕類型,可參照iview buttons設置此屬性
        hidden: false, //是否隱藏按鈕(如果想要隱藏按鈕，在onInited方法中遍歷buttons，設置hidden=true)
        onClick: function() {
          //打開彈出框1
          this.$refs.gridBody.openModel1();
        }
      });
      //添加第二個按鈕
      this.buttons.splice(2, 0, {
        name: '按鈕2', //按鈕名稱
        icon: 'el-icon-search',
        type: 'primary',
        hidden: false,
        onClick: function() {
          //打開彈出框2
          this.$refs.gridBody.openModel2();
        }
      });

      //設置訂單日期的時間范圍選擇
      this.editFormOptions.forEach((options) => {
        options.forEach((item) => {
          if (item.field == 'OrderDate') {
            item.min = '2022-04-05';
            item.max = Date.now(); //2022-04-11
          }
        });
      });
    },
    onInited() {
     // this.detailOptions.xxx
      //設置明細表求和與求平均值，對應后臺Demo_OrderService.cs中的方法GetDetailSummary
      this.detailOptions.columns.forEach((column) => {
        //指定明細表的求和字段
        if (column.field == 'Price' || column.field == 'Qty') {
          column.summary = true;
        }
      });
      //設置明細表表格的高度
      this.detailOptions.height = this.detailOptions.height + 40;

      this.detailOptions.beginEdit= (row, column, index) => {
        this.$Message.info("明細表開啟編輯")
        return true;
      }
      this.detailOptions.endEditBefore= (row, column, index) => {
        this.$Message.info("明細表結束編輯")
        return true;
      }
     // this.boxOptions.height=document.body.clientHeight*0.9;
    },
    getRender() {
      //生成查詢界面表格的按鈕
      //通過render渲染按鈕
      return (h, { row, column, index }) => {
        //如果使用的vue2版本的代碼，直接使用http://v2.volcore.xyz/document/api中voltable中的示例
        return h('div', { style: {} }, [
          h(
            'a',
            {
              style: { 'border-bottom': '1px solid', color: 'blue' },
              onClick: (e) => {
                this.del(row);
              }
            },
            '刪除'
          ),
          h(
            'a',
            {
              style: {
                'margin-left': '9px',
                color: 'blue',
                'border-bottom': '1px solid'
              },
              onClick: (e) => {
                this.edit(row);
              }
            },
            '編輯'
          )
        ]);
      };
    },
    searchAfter(rows) {
      //頁面查詢返回數據時，加載第一條數據的明細
      this.$nextTick(() => {
        this.$refs.gridFooter.rowClick(rows[0]);
      });
      return true;
    },
    rowClick({ row, column, event }) {
      //查詢界面點擊行事件
      this.$refs.table.$refs.table.toggleRowSelection(row); //單擊行時選中當前行;
      //調用Doc_Order1GridFooter.vue文件中(訂單明細)的查詢
      this.$refs.gridFooter.rowClick(row);
    },
    addRow () {
      //明細表添加行，在此處可以設置添加的默認值
      let obj = {Price:1000};
      //給明細表添加行時，設置默認值。--onInited方法中對this.detailOptions.columns進行formatter也可以實現)
      //obj.xx=123;
      this.$refs.detail.addRow(obj);

    },
    modelOpenAfter() {
      //編輯新建彈出框打事件
      this.editFormOptions.forEach((options) => {
        options.forEach((item) => {
          //新建時設置訂單狀態可以選擇，編輯時只讀
          if (item.field == 'OrderStatus') {
            if (this.currentAction == 'Add') {
              item.readonly = false;
            } else {
              item.readonly = true;
            }
            // item.readonly=this.currentAction != 'Add';
          }
          //新建時給訂單日期設置默認日期、訂單狀態下拉框默認值
          if (this.currentAction == 'Add') {
            if (item.field == 'OrderDate') {
              //這里的日期暫時是寫死的，后面的章節講封裝js方法來獲取當前日期
              this.editFormFields.OrderDate = '2022-04-11 00:00:00';
            }
            //給訂單狀態設置默認值
            if (item.field == 'OrderStatus') {
              //item.data是下拉框的數據源
              let obj = item.data.find((x) => {
                return x.key == '1';
              });
              //綁定下拉框的默認值
              if (obj) {
                this.editFormFields.OrderStatus = obj.key;
              }
            }
          }
        });
      });
    }
  }
};
export default extension;
