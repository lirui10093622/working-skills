echo off
rem 作者: 李锐
rem 邮箱: lirui10093622
rem 版本: 1.0.0.20180106133400
rem 说明: 更新(该脚本所在)目录下的所有git项目

for /d %%a in ( ./* ) do (
if "%%a" neq ".idea" (
 echo 更新项目: %%a
 cd %%a
 git fetch --all
 git checkout master
 git merge origin/master
 cd ..
 )
)
pause