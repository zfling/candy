@echo off

set dir=%2
echo ---------------------------
echo ---get generated files---
::%1 -azvP --password-file=./.vscode/password %dir%include/generated/* ./include/generated/
%1 -azvP --password-file=./.vscode/password %dir%requirements.txt ./
echo ---------------------------

echo ---end of get.cmd---
@echo on
