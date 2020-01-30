rem command scrpts
::echo %1
::echo %2
::echo %3

echo ---rsync command %1---

if "increment" == "%1" (
	echo ---------------------------
	echo ---rsync code increment---
	%2 -azvP ./ --include-from=./.vscode/include.txt --exclude-from=./.vscode/exclude.txt --exclude '/*' --password-file=./.vscode/password %3
	echo ---------------------------
	exit 0
)
if "total_forbid" == "%1" (
	echo ---------------------------
	echo ---rsync code total---
	%2 -azvP --delete ./ --include-from=./.vscode/include.txt --exclude-from=./.vscode/exclude.txt --exclude '/*' --delete-excluded --password-file=./.vscode/password %3
	echo ---------------------------
	exit 0
)
echo ---end of rsync.cmd---
@echo on
	
