### Base64图片上传以及下载


```shell
# install
npm install

# build
gulp

# server
coffee server.coffee
```

* 访问http://localhost:3000/demo1.html
    * 第一张图为构建工具自动把图片链接变成base64的字符串
    * 第二张图片是ajax获取json后自动填充的数据
    * 第三章图片是ajax获取json已上传的图片(若无显示请先点击`上传图片`)
* 图片上传到得文件`./dist/img/tmp.json`，json的格式保存