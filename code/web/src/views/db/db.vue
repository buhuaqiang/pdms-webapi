<template>
    <div style="padding:20px;">
        <div>
            <el-alert type="success" show-icon>
                腳本更新
                <span slot="desc">此頁面為統一管理所有學校的業務數據庫，會執行每個學校的業務庫

                </span>
            </el-alert>
        </div>
        <div style="margin-top:10px">
            <el-input v-model="text" type="textarea" :autosize="{ minRows: 20, maxRows: 20 }" placeholder="輸入腳本..." />

        </div>
        <div style="text-align: center; padding: 10px;"> <el-button @click="btnClick" type="primary"
                plain="">執行腳本</el-button>
        </div>

        <el-dialog v-model="centerDialogVisible" title="執行結果" width="30%" center>
            <div style="text-align: center;">
                {{ message }}
            </div>
            <template #footer>
                <span class="dialog-footer">
                    <el-button @click="centerDialogVisible = false">確定</el-button>

                </span>
            </template>
        </el-dialog>
    </div>
</template>
  
<script>
export default {
    data() {
        return {
            centerDialogVisible: false,
            text: "",
            message: ""
        }
    },
    methods: {
        btnClick() {
            if (!this.text) {
                return;
            }
            this.http.post("api/db/exectue", { text: this.text }, true).then(x => {
                this.message = x;
                this.centerDialogVisible = true;
            });
        }
    }
}
</script>
  
<style></style>