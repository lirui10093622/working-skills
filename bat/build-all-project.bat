echo off
rem 作者: 李锐
rem 邮箱: lirui10093622@163.com
rem 版本: 1.0.0.20180106160900
rem 说明: 构建(该脚本所在)目录下的所有maven项目

for /d %%a in ( ./* ) do (
  if "%%a" neq ".idea" (
    echo 构建项目: %%a
    cd %%a
    if exist "pom.xml" (
      call mvn clean install -DskipTests
	  rem 异步执行: call mvn clean install -DskipTests
    ) else (
	  echo %%a不是maven项目
	)
	cd ..
	echo off
  )
)
pause