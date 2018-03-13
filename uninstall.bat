@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
@echo off
cls
setlocal EnableDelayedExpansion

@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
@if not exist "%HOME%" @set HOME=%USERPROFILE%

@set APP_PATH=%HOME%\vim-plug

call rm "%HOME%\.vimrc"
call rm "%HOME%\_vimrc" 
call rm "%HOME%\AppData\Local\nvim\init.vim"
call rm "%HOME%\.eslintrc.json"
call rm "%HOME%\.eslintrc.js"
call rm "%HOME%\.npmrc"
call rm "%HOME%\.tern-config" 
call rmdir "%HOME%\AppData\Local\nvim"
call rmdir "%HOME%\.vim" 
call rmdir "%APP_PATH%""