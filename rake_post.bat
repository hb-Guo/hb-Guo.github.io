@echo off
echo -----------------------------------------
echo   Jekyll Rake Post Generator (Windows)
echo -----------------------------------------
echo.

:: 切换到 Jekyll 目录
cd /d D:\PhdStudy\github_pages\academicpages.github.io

:: 等待用户输入标题
set /p POSTTITLE=input title: 

echo.
echo Your Title: %POSTTITLE%
echo.

:: 执行 rake post title="xxx"
call rake post title="%POSTTITLE%"

echo.
echo Successed……
pause > nul
