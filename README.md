# buptLab-computer_architecture

这个仓库包含了北京邮电大学 2024-2025 春季学期《计算机系统结构》课程实验的相关代码和报告（见 Release）。

## 实验任务列表

- 实验二 流水线及流水线中的冲突；
- 实验三 使用 MIPS 指令实现求两个数组的点积；
- 实验四 使用 MIPS 指令实现冒泡排序法；
- 实验五 指令调度与延迟分支。

## 目录结构

```plain
.
├── README.md
├── bin
│   ├── MIPS.exe                      # 可执行文件，32 位系统可运行
│   ├── MIPS_64bit.exe                # 可执行文件，64 位系统可运行
│   └── <others>
└── lab<n>-<lab_name>                 # 实验材料文件夹
    ├── README.md                     # 实验内容介绍
    └── mipssim                       # 所用指令集名称
        ├── config                    # 配置文件集合
        │   └── <config_name>.cfg     # 配置文件
        └── src
            └── <code_name>.s         # 实验用汇编代码
```
