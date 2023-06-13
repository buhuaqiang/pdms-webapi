import { createRouter, createWebHistory, createWebHashHistory } from 'vue-router'
import viewgird from './viewGird'
import store from '../store/index'
import redirect from './redirect'
const routes = [
  {
    path: '/',
    name: 'Index',
    component: () => import('@/views/Index'),
    redirect: '/home',
    children: [
      ...viewgird,
      ...redirect,
      {
        path: '/home',
        name: 'home',
        component: () => import('@/views/Home.vue')
      }, {
        path: '/UserInfo',
        name: 'UserInfo',
        component: () => import('@/views/sys/UserInfo.vue')
      },
      {
        path: '/sysMenu',
        name: 'sysMenu',
        component: () => import('@/views/sys/Sys_Menu.vue')
      }, {
        path: '/coder',
        name: 'coder',
        component: () => import('@/views/builder/coder.vue')
      },
      {
        path: '/formDraggable',  //表單設計
        name: 'formDraggable',
        component: () => import('@/views/formDraggable/formDraggable.vue')
      },
      {
        path: '/formSubmit',  //表單提交頁面
        name: 'formSubmit',
        component: () => import('@/views/formDraggable/FormSubmit.vue'),
        meta:{
          keepAlive:false
        }
      },
      {
        path: '/formCollectionResultTree',  //顯示收集的數據表單
        name: 'formCollectionResultTree',
        component: () => import('@/views/formDraggable/FormCollectionResultTree.vue'),
        meta:{
          keepAlive:false
        }
      },
      {
        path: '/signalR',  //消息推送
        name: 'signalR',
        component: () => import('@/views/signalR/Index.vue'),
        meta:{
          keepAlive:false
        }
      },
      {
        path: '/db',  //消息推送
        name: 'db',
        component: () => import('@/views/db/db.vue'),
        meta:{
          keepAlive:false
        }
      },
      {
        path: '/print',  //消息推送
        name: 'print',
        component: () => import('@/views/print/print.vue'),
        meta:{
          keepAlive:false
        }
      },
      {
        path: '/message',  //消息推送
        name: 'message',
        component: () => import('@/views/message/message.vue'),
        meta:{
          keepAlive:false
        }
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: () => import('@/views/Login.vue')
  }
]

const router = createRouter({
  history: createWebHashHistory(), //createWebHistory(process.env.BASE_URL),
  routes
})


router.beforeEach((to, from, next) => {
  if (to.matched.length == 0) return next({ path: '/404' });
  //2020.06.03增加路由切換時加載提示
  store.dispatch("onLoading", true);
  if ((to.hasOwnProperty('meta') && to.meta.anonymous) || store.getters.isLogin() || to.path == '/login') {
    return next();
  }

  next({ path: '/login', query: { redirect: Math.random() } });
})
router.afterEach((to, from) => {
  store.dispatch("onLoading", false);
})
router.onError((error) => {
  // const targetPath = router.currentRoute.value.matched;
  try {
    console.log(error.message);
    if (process.env.NODE_ENV == 'development') {
      alert(error.message)
    }
    localStorage.setItem("route_error", error.message)
  } catch (e) {

  }
  window.location.href = '/'
});
export default router
