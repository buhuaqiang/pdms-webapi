/*****************************************************************************************
 **  Author:jxx 2022
 **  QQ:283591387
 **完整文檔見：http://v2.volcore.xyz/document/api 【代碼生成頁面ViewGrid】
 **常用示例見：http://v2.volcore.xyz/document/vueDev
 **后臺操作見：http://v2.volcore.xyz/document/netCoreDev
 *****************************************************************************************/
//此js文件是用來自定義擴展業務代碼，可以擴展一些自定義頁面或者重新配置生成的代碼

let provinceOption, //省
  cityOption, //市
  countyOption; //縣

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
    onInit() {
      this.editFormOptions.forEach((options) => {
        options.forEach((item) => {
          //省的配置參數
          if (item.field == 'Province') {
            provinceOption = item;
          }
          //市的配置參數
          if (item.field == 'City') {
            cityOption = item;
          }
          //縣的配置參數
          if (item.field == 'County') {
            countyOption = item;
          }
        });
      });
      //省選擇事件
      provinceOption.onChange = (value, option) => {
        let url = 'api/Sys_Region/getList?code=' + value;
        //給市重新綁定數據源
        this.http.get(url, {}, true).then((result) => {
          cityOption.data = result;
        });
      };
      //市選擇事件
      cityOption.onChange = (value, option) => {
        let url = 'api/Sys_Region/getList?code=' + value;
        //給縣重新綁定數據源
        this.http.get(url, {}, true).then((result) => {
          countyOption.data = result;
        });
      };

    },
    onInited() {
      //在訂單管理的選擇數據彈出框顯示此頁面時，重新調整頁面高度與隱藏其他的按鈕
      if (this.$route.path == '/Demo_Order') {
        this.height = 550 - 150;
        //訂單頁面隱藏按鈕
        this.buttons.forEach((item) => {
          if (item.value != 'Search') {
            item.hidden = true;
          }
        });
      }
    },
    searchBefore(params) {
      
      //訂單管理頁面打開彈出框設置查詢條件
      if (this.$route.path == "/Demo_Order") {

        params.wheres.push({
          name: "查詢的字段",
          //訂單管理查詢打開時全局緩存的值,見Demo_Order.js第78行與orderModelHeader.vue第133行(2022.12.06)
          value: this.$store.getters.data().orderId
        })
      }
      return true;
    },
    modelOpenAfter(row) {     //點擊編輯/新建按鈕打開彈出框

      //新建操作市與縣的數據源清空
      if (this.currentAction == 'Add') {
        cityOption.data = []; //市
        countyOption.data = []; //縣
      } else {
        //編輯操作重新綁定當省對應下的市、縣的數據
        let url = 'api/Sys_Region/getList?code=' + this.editFormFields.Province; //row.Province;
        //給市重新綁定數據源
        this.http.get(url, {}, true).then((result) => {
          cityOption.data = result;
        });

        //給縣重新綁定數據源
        url = 'api/Sys_Region/getList?code=' + this.editFormFields.City; //row.City;
        this.http.get(url, {}, true).then((result) => {
          countyOption.data = result;
        });
      }
    }
  }
};
export default extension;
