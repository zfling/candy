@echo off
set dir=%3
::set cmd="cd %dir% ; ls ;pwd"
::echo %cmd%

echo ---------------------------
echo ---test---
%1 %2 "cd %dir%; ls; pwd"
echo ---------------------------

echo ---end of test.cmd---
@echo on
