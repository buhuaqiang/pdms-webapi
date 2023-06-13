<template>
  <div class="home-content" data-v-7f6868a7="">
    <el-scrollbar style="height: 100%;">
      <div style="margin:10px 0 -5px 12px;font-size: 14px;font-weight: bold;">
        <i class="el-icon-warning-outline"></i> 功能說明
        <a class="contact" target="_blank">
          <!-- href="https://qm.qq.com/cgi-bin/qm/qr?k=t6OMhfBOnZ3urZiH4_keyIaKA98C9ieH&noverify=0&personal_qrcode_source=4" -->
          企業版可以面向更復雜的系統，支持分庫與動態無限分庫等功能，并提供技術支持、包括更完整的功能,
          <img src="/static/qq.png" style="height: 15px;" />聯系方式：283591387</a>
      </div>
      <div class="home-list">
        <div class="list-item" v-for="(item, index) in list" :key="index">
          <div class="content">
            <!-- <div class="content-left">
             <i class="el-icon-warning-outline"></i>
            </div> -->
            <div class="content-right">
              <div class="name">
                <i class="el-icon-warning-outline"></i>{{ item.name }}
              </div>
              <div class="data" data-v-7f2e9c68="">
                {{ item.desc }}
              </div>
            </div>
            <div class="mouse-enter-class"></div>
          </div>
          <div :class="[item.type == '增強' ? 'item-strengthen' : (item.type == '新增' ? 'item-new' : 'item-other')]">{{ item.type }}</div>
        </div>
      </div>
      <div class="home-list-content">
        <div id="h-chart1" style="height: 250px; background: white; width: 400px;"></div>
        <div id="h-chart2" style="height: 250px; background: white; flex: 1;"></div>
      </div>
    </el-scrollbar>
  </div>
</template>
<script>
import {
  defineComponent,
  ref,
  reactive,
  toRefs,
  getCurrentInstance,
  onMounted,
  onUnmounted
} from 'vue';
import { chart1, chart2, chart3, chart4 } from './home/home-chart-options';
import * as echarts from 'echarts';
import { useRouter, useRoute } from 'vue-router';
import store from '../store/index';
import http from '@/../src/api/http.js';
export default {
  components: {},
  setup(props) {
    const list = reactive([
      {
        name: '移動端開發',
        desc: '移動端基于uniapp開發,同樣自動生成代碼,小程序搜：vol開發框架',
        type: "基礎"
      },
      {
        name: '審批流程',
        desc: '流程支持條件分支與條件按部門、角色、用戶審批',
        type: "基礎"
      },
      { name: '多組織架構、多角色', desc: '支持用戶分配多組織、多角色并支持層級關系', type: "增強" },
      { name: '國際化', desc: '后臺生成語言包,前后端實時顯示翻譯', type: "新增" },
      {
        name: '一對多代碼生成',
        desc: '代碼生成器生成一對多明細(開發中)',
        type: "新增"
      },
      { name: '業務分庫', desc: '支持按業務劃分不同的數據', type: "增強" },
      {
        name: '動態無限分庫',
        type: "新增",
        desc: '支持全自動無限動態分庫(如：每個租戶都有一個獨立的數據庫)'
      },
      { name: '數據權限', desc: '支持配置角色與者組織部門數據權限', type: "新增" },
      {
        name: '字段權限',
        type: "新增",
        desc: '支持配置角色或者組織部門字段權限(開發中)'
      },
      {
        name: 'tab頁面編輯功能',
        type: "新增",
        desc: '默認編輯彈出框編輯,支持tab選項卡編輯'
      },
      { name: '物理刪除與邏輯刪除', type: "新增", desc: '支持配置文件設置物理、邏輯刪除' },
      { name: '消息推送、消息提醒', type: "新增", desc: '開發中' },
      { name: '打印及支持vite、ts', type: "新增", desc: '開發中' },
      { name: '數據庫與緩存支持', type: "基礎", desc: 'sqlserver、mysql、pgsql、oracle、redis' },
      { name: '其他', type: "新增", desc: '100%提供源碼、技術支持、二次開發、銷售商業使用及正規發票' }

    ]);
    onMounted(() => {
      let $chart = echarts.init(document.getElementById('h-chart1'));
      $chart.setOption(chart1);
      let $chart2 = echarts.init(document.getElementById('h-chart2'));
      $chart2.setOption(chart2);
    });
    return {
      list
    };
  }
};
</script>
<style lang="less" scoped>
// @import './home/index.less';

.home-content {
  position: absolute;
  height: 100%;
  width: 100%;
  background: #f3f7fb;

  .home-list {
    margin: 12px;
    display: grid;
    -moz-column-gap: 12px;
    column-gap: 12px;
    grid-template-columns: repeat(5, auto);
  }

  .list-item {
    position: relative;
    cursor: pointer;
    margin-bottom: 12px;
    transition: transform 0.8s;
    .content {
      position: relative;
      height: 110px;
      // padding-left: 40px;
      background: #ffffff;
      display: flex;
      align-items: center;
      transition: all 1.5s;
      border-radius: 5px;
      overflow: hidden;

      .content-right {
        color: #1d252f;
        padding: 0 20px;

        .el-icon-warning-outline {
          margin-right: 5px;
        }
      }

      .name {
        transition: transform .5s;
        color: #060606;
        font-size: 16px;
        font-weight: 400;
        padding-bottom: 5px;
      }

      .data {
        font-size: 12px;
        font-family: Source Han Sans CN, sans-serif;
        color: #6f6f6f;
      }
    }

    .mouse-enter-class {
      position: absolute;
      left: 0;
      bottom: 0;
      width: 0;
      height: 40px;
      border-bottom: 3px #0763ee solid;
      transition: 1s;
    }

 
  }
}

.list-item:hover {

  transform: scale(1.04);
  .content {
    background: #ecf5f9;

    .mouse-enter-class {
      width: 100%;
    }

  }
}


.home-list-content {
  margin: -12px 12px;
  background: #ffff;
  padding: 20px;
  display: flex;
  margin-bottom: 12px;
}

.contact {
  cursor: pointer;
  font-size: 12px;
  font-weight: 500;
  margin-left: 24px;
  color: #8e8888;

  img {
    height: 15px;
    margin-bottom: -3px;
    margin-right: 5px;
  }
}

.item-strengthen,
.item-new,
.item-other {
  position: absolute;
  top: 0;
  right: 0;
  font-size: 12px;
  padding: 2px 10px;
  background: #daf3ff;
  border-bottom-left-radius: 6px;
  color: #339aed;
  border-top-right-radius: 5px;
}

.item-new {
  background: #ffebe9;
  color: #f94638;
}

.item-other {
  background: #e1fae2;
  color: #2ad431;
}</style>
