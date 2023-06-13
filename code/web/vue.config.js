// const webpack = require("webpack");

module.exports = {
  productionSourceMap: false,
  lintOnSave: false,
  devServer: {
    port: 9000,
    overlay: {
      warning: false,
      errors: false
    }
  },
  css: {
    //查看CSS屬于哪個css文件
    sourceMap: true
  },
  configureWebpack: {
    module: {
      rules: [
        {
          test: /\.mjs$/,
          include: /node_modules/,
          type: "javascript/auto"
        },
      ]
    }
  },
  //https://cli.vuejs.org/zh/guide/html-and-static-assets.html#html
  chainWebpack: (config) => {
    // 移除 prefetch 插件
    config.plugins.delete('prefetch');
    //自下定義title
    config.plugin('html').tap((args) => {
      args[0].title = 'vol.pro開發框架企業版本(1.0)';
      return args;
    });

    // 或者
    // 修改它的選項：
    // config.plugin('prefetch').tap(options => {
    //   options[0].fileBlacklist = options[0].fileBlacklist || []
    //   options[0].fileBlacklist.push(/myasyncRoute(.)+?\.js$/)
    //   return options
    // })
  }
  // configureWebpack: {
  //     plugins: [
  //         new webpack.optimize.MinChunkSizePlugin({
  //             minChunkSize: 100000 // 通過合并小于 minChunkSize 大小的 chunk，將 chunk 體積保持在指定大小限制以上
  //         })
  //     ]
  // }
};
