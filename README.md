## git && git submodule
* add: git submoudle add <url> kernel
* delete: git rm --cached kernel
(? git submodule 参考的是submodule 的index, 对于submodule的唯一记录就是这个参考(index) )

## 主要任务
0.0.1:
    系统调用，用户模式的相关code全部理解
    schede相关操作 （基本已经理解完成)
xxxx:
    mmu相关的code全部理解

## 函数思考切入点
set_system_gate

## 文件思考切入点


## flow
1. 系统调用
配置: set_sytem_gate. 使用： 通过内联汇编，调用int 80, 然后找到set_system_gate配置的函数名，调用。

## Todo
完全软件端模拟操作系统的可能性， 并且在软件端递归创建操作系统的最大深度? 
==> 意义: 任何调度都可以进行如此操作而且并不会丢失多少性能。