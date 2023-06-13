<template>
  <div style="margin-bottom: 10px">
    <!-- 查詢頁面的提示信息 -->
    <el-alert title="這里是頁面擴展的組件" type="success" show-icon> </el-alert>
    <!-- 彈出框1-->
    <vol-box
      :lazy="true"
      v-model="model"
      title="彈出框1"
      :height="400"
      :width="700"
      :padding="15"
    >
      <div>
        彈出框1內容,<el-button
          type="primary"
          size="small"
          @click="model1BtnClick"
          >刷新頁面</el-button
        >
      </div>
      <template #footer>
        <div>
          <el-button type="primary" size="mini" @click="model = false"
            >確認</el-button
          >
          <el-button type="default" size="mini" @click="model = false"
            >關閉</el-button
          >
        </div></template
      >
    </vol-box>
    <!-- 彈出框2 -->
    <vol-box
      :lazy="true"
      v-model="model2"
      title="彈出框2"
      :height="400"
      :width="700"
      :padding="15"
    >
      <div>彈出框2內容</div>
      <template #footer>
        <div>
          <el-button type="primary" size="mini" @click="model2 = false"
            >確認</el-button
          >
          <el-button type="default" size="mini" @click="model2 = false"
            >關閉</el-button
          >
        </div></template
      >
    </vol-box>
  </div>
</template>

<script>
import VolBox from '@/components/basic/VolBox.vue';
export default {
  components: { 'vol-box': VolBox },
  data() {
    return {
      model: false,
      model2: false
    };
  },
  methods: {
    //按鈕1點擊彈出框
    openModel1(param) {
      //可以自己傳一些參數
      console.log(param);
      this.model = true;
    },
    //按鈕2點擊彈出框
    openModel2() {
      this.model2 = true;
    },
    model1BtnClick() {
      //彈出框1中的按鈕
      //通過this.$emit('parentCall'獲取生成頁面的所有對象屬性
      this.$emit('parentCall', ($parent) => {
        //調用生成頁面的查詢方法
        $parent.search();
      });
      this.model = false;
    }
  }
};
</script>

<style></style>
