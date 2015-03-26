:: Patches TFS branch with shelveset from other.
:: cd (change directory) to up to date local <target> branch
:: Usage:
::   tfpt-patch <source> <target> <shelveset_name>
:: Example:
::   tfpt-patch "$/ProjectName/SourceBranch" "$/ProjectName/Targetbranch" "My Shelveset Name"
:: See also : http://benjii.me/2014/04/move-shelveset-to-different-branch-in-tfs/
tfpt unshelve /migrate /source:%~1 /target:%~2 %~3