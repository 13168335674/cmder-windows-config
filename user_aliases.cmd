;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

od=explorer .
ci=git commit --allow-empty -m "ci: Empty Commit to setup deployments cicd"

opengw=set http_proxy=http://127.0.0.1:49518&& set https_proxy=http://127.0.0.1:49518&& echo "open GW" 
closegw=set http_proxy= && set https_proxy= && echo "close GW"
loggw=echo Current proxy settings: http_proxy=%http_proxy%, https_proxy=%https_proxy%
