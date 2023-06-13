/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整文檔見：http://v2.volcore.xyz/document/api 【代碼生成頁面ViewGrid】
 **常用示例見：http://v2.volcore.xyz/document/vueDev
 **后臺操作見：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用來自定義擴展業務代碼，可以擴展一些自定義頁面或者重新配置生成的代碼
import modelHeader from './orderModelHeader';

let extension = {
  components: {
    //查詢界面擴展組件
    gridHeader: '',
    gridBody: '',
    gridFooter: '',
    //新建、編輯彈出框擴展組件
    modelHeader: modelHeader,
    modelBody: '',
    modelFooter: ''
  },
  text: '', //界面上的提示文字
  tableAction: '', //指定某張表的權限(這里填寫表名,默認不用填寫)
  buttons: { view: [], box: [], detail: [] }, //擴展的按鈕
  methods: {
    //下面這些方法可以保留也可以刪除
    onInit() {
      //頁面利用時使用
      if (this.$route.path == '/Demo_Order_New') {
        this.table.cnName = '新訂單';
        this.table.url = '/Demo_Order_New/';
        this.columns.forEach(c=>{
          if (c.field=="Remark") {
             c.hidden=true;
          }
        })
      } else if (this.$route.path == '/Demo_Order_Purchase') {
        this.table.cnName = '采購訂單';
        this.table.url = '/Demo_Order_Purchase/';
      } else if (this.$route.path == '/Demo_Order_Return') {
        this.table.cnName = '退貨訂單';
        this.table.url = '/Demo_Order_Return/';
      }

      //顯示按鈕個數
      this.maxBtnLength = 8;

      //示例：設置修改新建、編輯彈出框字段標簽的長度
      // this.boxOptions.labelWidth = 150;
      //自定義按鈕
      this.buttons.push({
        name: '測試按鈕', //按鈕名稱
        icon: 'el-icon-document', //按鈕圖標，參照iview圖標
        type: 'success', //按鈕類型,可參照iview buttons設置此屬性
        hidden: false, //是否隱藏按鈕(如果想要隱藏按鈕，在onInited方法中遍歷buttons，設置hidden=true)
        onClick: function() {
          //觸發事件
          // this.http.get('api/Demo_Order/test', {}, true).then((x) => {
          //   this.$message.success(this.base.getDate());
          // });

          this.http.download('api/Demo_Order/test', {},'2022.xlsx', true);
          // this.$message.success('點擊了按鈕');
        }
      });

      //彈出框添加選擇數據的操作
      this.editFormOptions.forEach((option) => {
        option.forEach((item) => {
          if (item.field == 'Customer') {
            item.extra = {
              icon: 'el-icon-zoom-out', //顯示圖標
              text: '選擇數據', //顯示文本
              style: 'color: #3a8ee6;font-size: 13px;cursor: pointer;',
              //觸發事件
              click: (item) => {
             
                //全局狀態記錄參數，用于加載彈出框的數據,這里只是演示(2022.12.06)
                this.$store.getters.data().orderId=this.editFormFields.Order_Id;

                this.$refs.modelHeader.open(this.editFormFields);
              }
            };
          }
        });
      });
    },
    onInited() {
      //框架初始化配置后
      //如果要配置明細表,在此方法操作
      //this.detailOptions.columns.forEach(column=>{ });
      //unshift、splice、push
      //批量添加
      this.detailOptions.buttons.unshift({
        name: '選擇數據', //按鈕名稱
        icon: 'el-icon-plus', //按鈕圖標，參照iview圖標
        hidden: false, //是否隱藏按鈕(如果想要隱藏按鈕，在onInited方法中遍歷buttons，設置hidden=true)
        onClick: function() {
          //觸發事件
          this.$refs.modelHeader.openDetail();
        }
      });
      //手動調整明細表高度
      this.detailOptions.height = this.detailOptions.height + 40;
    },
    searchBefore(param) {
      //界面查詢前,可以給param.wheres添加查詢參數
      //返回false，則不會執行查詢
      return true;
    },
    searchAfter(result) {
      //查詢后，result返回的查詢數據,可以在顯示到表格前處理表格的值
      return true;
    },
    addBefore(formData) {
      //新建保存前formData為對象，包括明細表，可以給給表單設置值，自己輸出看formData的值
      return true;
    },
    updateBefore(formData) {
      //編輯保存前formData為對象，包括明細表、刪除行的Id
      return true;
    },
    rowClick({ row, column, event }) {
      //查詢界面點擊行事件
      // this.$refs.table.$refs.table.toggleRowSelection(row); //單擊行時選中當前行;
    },
    modelOpenAfter(row) {
      //點擊編輯、新建按鈕彈出框后，可以在此處寫邏輯，如，從后臺獲取數據
      //(1)判斷是編輯還是新建操作： this.currentAction=='Add';
      //(2)給彈出框設置默認值
      //(3)this.editFormFields.字段='xxx';
      //如果需要給下拉框設置默認值，請遍歷this.editFormOptions找到字段配置對應data屬性的key值
      //看不懂就把輸出看：console.log(this.editFormOptions)
    }
  }
};
export default extension;
