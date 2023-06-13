/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整文檔見：http://v2.volcore.xyz/document/api 【代碼生成頁面ViewGrid】
 **常用示例見：http://v2.volcore.xyz/document/vueDev
 **后臺操作見：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用來自定義擴展業務代碼，可以擴展一些自定義頁面或者重新配置生成的代碼

let extension = {
  components: {
    //查詢界面擴展組件
    gridHeader: '',
    gridBody: '',
    gridFooter: '',
    //新建、編輯彈出框擴展組件
    modelHeader: '',
    modelBody: '',
    modelFooter: ''
  },
  tableAction: '', //指定某張表的權限(這里填寫表名,默認不用填寫)
  buttons: { view: [], box: [], detail: [] }, //擴展的按鈕
  methods: {
    //下面這些方法可以保留也可以刪除
    onInit() {
      //框架初始化配置前，
      this.tableHeight = 270;
      //頁面打開時不加載數據
      if (this.$route.path == '/Demo_Product') {
        this.load = false;
      }

      //可以重新定義明表的按鈕
      // console.log(this.buttons);
      // this.buttons.forEach((btn) => {
      //   if (btn.value == '自己看console.log的值') {
      //     btn.hidden = true; //隱藏按鈕
      //   }
      // });
      //或者添加其他按鈕
      //   this.buttons.unshift({  //也可以用push或者splice方法來修改buttons數組
      //     name: '按鈕', //按鈕名稱
      //     icon: 'el-icon-document', //按鈕圖標vue2版本見iview文檔icon，vue3版本見element ui文檔icon(注意不是element puls文檔)
      //     type: 'primary', //按鈕樣式vue2版本見iview文檔button，vue3版本見element ui文檔button
      //     onClick: function () {
      //       this.$Message.success('點擊了按鈕');
      //     }
      //   });
    },
    searchBefore(param) {
      //明細表查詢前方法

      //操作步驟3：主表點擊行時,設置查詢條件
      if (this.$route.path == '/Demo_Product') {
        //產品管理界面必須選中行數據后才能查詢
        if (!this.$store.getters.data().ProductId) {
         // this.$message.error('請選中產品行數據');
          return false;
        }
        //查詢選中行的數據
        param.wheres.push({
          name: 'ProductId', //查詢字段
          value: this.$store.getters.data().ProductId //查詢值為主表的主鍵id值
        });
      }
      return true;
    },
    addBefore(params) {
      //新建保存前
      //操作步驟5：將主表選行的值添加到明細表中(注意代碼生成器，明細表的ProductId字段必須設置編輯為0，并生成下model)

      params.mainData.ProductId = this.$store.getters.data().ProductId;
      //查詢后，result返回的查詢數據,可以在顯示到表格前處理表格的值
      return true;
    },
    modelOpenBeforeAsync() {
      //操作步驟4：打開彈出框時判斷是否為新建操作，新建時必須讓選中行數據

      //新建時產品管理界面必須選中行數據后才能彈出框
      if (this.$route.path == '/Demo_Product') {
        if (this.currentAction == 'Add') {
          if (!this.$store.getters.data().ProductId) {
            this.$message.error('請選中產品行數據');
            return false;
          }
        }
      }
      return true;
    }
  }
};
export default extension;
