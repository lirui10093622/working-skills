echo off
rem ����: ����
rem ����: lirui10093622
rem �汾: 1.0.0.20180106133400
rem ˵��: ����(�ýű�����)Ŀ¼�µ�����git��Ŀ

for /d %%a in ( ./* ) do (
if "%%a" neq ".idea" (
 echo ������Ŀ: %%a
 cd %%a
 git fetch --all
 git checkout master
 git merge origin/master
 cd ..
 )
)
pause