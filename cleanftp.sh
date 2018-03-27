#!/bin/bash
#

# 向pubdir.log中写入时间
date >> /var/ftp/pubdir.log
# 列出/var/ftp/pub下所有的信息（递归）
ls -lhR /var/ftp/pub >> /var/ftp/pubdir.log
# 清空/var/ftp/pub下所有内容
rm -rf /var/ftp/pub/*

##
# 使用crontab将本脚本加入定时任务
# crontab -e
# 在内部输入以下内容：
# 30 17 * * 5 <当前脚本路径>
# 每周五晚上17:30执行当前脚本
##
