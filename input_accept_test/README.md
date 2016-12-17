测试input标签accept的性能

测试预览

![](https://dn-coding-net-production-pp.qbox.me/57ceffca-d853-4df3-a519-c212f8acfdfb.png)

[demo](http://jayinton.com/frontend-demos/input_accept_test/)


```
<input type="file" accept="image/*">
```
VS
```
<input type="file" accept="image/jpeg,image/jpg,image/png/image/gif">
```


实战结论：后者更快，前者适配性更强
