@echo off
rem command scrpts

echo %~dp0
echo ---uboot command main call---
::echo %1
::echo %2

set RSYNC=C:/software/developer/cygwin64/bin/rsync
::set UBOOT=zfling@192.168.101.107::candy/
set CODE=zfling@192.168.101.107::candy/
set SSH=C:/software/developer/cygwin64/bin/ssh
set LINUX=candy@192.168.101.107
set LINUX_DIR=/home/candy/code/candy
::echo %RSYNC%
::echo %UBOOT%

rem test
if "%1" == "test" (
	%~dp0test.cmd %SSH% %LINUX% %LINUX_DIR%
	exit 0
)

rem rsync
if "%1" == "rsync" (
	%~dp0rsync.cmd %2 %RSYNC% %CODE%
	exit 0
)

rem Get Files
if "%1" == "get" (
	%~dp0get.cmd %RSYNC% %CODE%
	exit 0
)

echo ---end of command.cmd---
@echo on
