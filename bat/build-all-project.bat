echo off
rem ����: ����
rem ����: lirui10093622@163.com
rem �汾: 1.0.0.20180106160900
rem ˵��: ����(�ýű�����)Ŀ¼�µ�����maven��Ŀ

for /d %%a in ( ./* ) do (
  if "%%a" neq ".idea" (
    echo ������Ŀ: %%a
    cd %%a
    if exist "pom.xml" (
      call mvn clean install -DskipTests
	  rem �첽ִ��: call mvn clean install -DskipTests
    ) else (
	  echo %%a����maven��Ŀ
	)
	cd ..
	echo off
  )
)
pause