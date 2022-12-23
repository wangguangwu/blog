#!/bin/bash
cd /root/.halo
# 时间格式化成 2020-08-09 11:10:43
message=`date "+%Y-%m-%d %H:%M:%S"`
git add application.yaml db/ static/ templates/ upload/ toGit
git commit -m "$message"
git push origin main

