## 0.0.1
* error: macro names must be identifiers

* 
```
<command-line>:0:1: error: macro names must be identifiers
```
这个错误是gcc命令引入 -D32_BIT导致的。macros不能以数字开头.
resolved: 改为-m32