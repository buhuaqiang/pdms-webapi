// import en from 'element-plus/es/locale/lang/en'
 //import zhCn from "element-plus/lib/locale/lang/zh-cn";
const locale = function () {
    let locale;
    let currnet_lang = currentLang();
    if (currnet_lang == 'zh-tw') {//繁體中文
        locale = require('element-plus/lib/locale/lang/zh-tw')
    } else if (currnet_lang == 'en') {//英語
        locale = require('element-plus/lib/locale/lang/en')
    } else if (currnet_lang == 'fr') {//法語
        locale = require('element-plus/lib/locale/lang/fr')
    } else if (currnet_lang == 'es') {//西班牙語
        locale = require('element-plus/lib/locale/lang/es')
    }  else if (currnet_lang == 'ru') { //鱷魚
        locale = require('element-plus/lib/locale/lang/ru')
    } else if (currnet_lang == 'ar') {//阿拉伯語
        locale = require('element-plus/lib/locale/lang/ar')
    }else {
        locale =require('element-plus/lib/locale/lang/zh-cn')//zhCn;
    }
    return locale.default;
}
const currentLang = function () {
    let currnet_lang = localStorage.getItem(lang_storage_key);
    if (!currnet_lang) {
        currnet_lang = navigator.language || navigator.userLanguage;
    }
    currnet_lang = currnet_lang;
    if (['zh-tw','en','fr','es','ru','ar'].indexOf(currnet_lang)==-1) {
        return 'zh-cn';
    }
    return currnet_lang;
}

export {
    locale,
    currentLang
}