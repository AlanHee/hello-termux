#!/bin/bash
source funs.sh
yesOrNo "Change termux repo?(y/n)" termux-change-repo


#Tips
#Why yesOrNo not fuound error? 
#Maybe A脚本和B脚本使用了不同的环境变量配置
#可能A脚本执行时修改或重置了环境变量,导致B脚本运行时无法找到执行环境。
#可以在A脚本末尾打印出PATH变量,然后再运行B脚本,看PATH变量是否被改变。
