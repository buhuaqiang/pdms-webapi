import { createApp } from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
import ElementPlus from 'element-plus';
// import 'element-plus/lib/theme-chalk/index.css';
import 'element-plus/dist/index.css';
import './assets/element-icon/icon.css';
import base from './uitils/common';
import http from './api/http';
// import 'dayjs/locale/zh-cn'
// import locale from 'element-plus/lib/locale/lang/zh-cn'
import translator from './uitils/translator';
import permission from './api/permission';
import viewgird from './components/basic/ViewGrid';
import ServiceSelect from './components/ServiceSelect';
import VolEdit from './components/basic/VolEdit.vue';   
import * as ElementPlusIconsVue from '@element-plus/icons-vue';

const app = createApp(App);

for (const [key, component] of Object.entries(ElementPlusIconsVue)) {
  app.component(key, component);
}

translator.init(app);
app.config.globalProperties.base = base;
app.config.globalProperties.http = http;
app.config.globalProperties.$tabs = {};
app.config.globalProperties.permission = permission;
app.config.globalProperties.$global = {
  border: true,
  lang: true, //是否使用多語言
  db: true,//是否使用分庫
  signalR: false, //是否開啟signalR
  audit: { //審核選項
    data: [
      { text: '通過', value: 1 },
      { text: '拒絕', value: 3 },
      { text: '駁回', value: 4 }
    ],
    status: [0, 2] //審核中的數據
    // 待審核 = 0,
    // 審核通過 = 1,
    // 審核中 = 2,
    // 審核未通過 = 3,
    // 駁回 = 4
  }
};
app
  .use(store)
  .use(ElementPlus, { size: 'default' })
  .use(router)
  .use(ServiceSelect)
  .use(VolEdit)
  .use(viewgird)
  .mount('#app');
app.config.globalProperties.$Message = app.config.globalProperties.$message;
