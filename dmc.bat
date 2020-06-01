@echo off

:MENU
echo [90m***************[0m [92mMinecraft Alt Menu[0m [90m***************[0m
echo   [90m1)[0m [36mAccount1[0m            [90m16)[0m [36mAccount3[0m
echo   [90m2)[0m [36mAccount2[0m            [90m17)[0m [36mAccount4[0m
echo [90m*****************  [92mMade by[0m [91mR[0m[33ma[93mg[0m[92mg[0m[94me[0m[95m_[0m [90m*****************[0m

SET /P M=Choose a Minecraft account, or q to exit
IF %M%==1 goto 1
IF %M%==2 goto 2
IF %M%==3 goto 3
IF %M%==4 goto 4
IF %M%==5 goto unused
IF %M%==6 goto unused
IF %M%==7 goto unused
IF %M%==8 goto unused
IF %M%==9 goto unused
IF %M%==10 goto unused
IF %M%==11 goto unused
IF %M%==12 goto unused
IF %M%==13 goto unused
IF %M%==14 goto unused
IF %M%==15 goto unused
IF %M%==16 goto unused
IF %M%==17 goto unused
IF %M%==18 goto unused
IF %M%==19 goto unused
IF %M%==20 goto unused
IF %M%==q exit
IF %M%==x goto x

CLS
echo [91mNot a valid option, please choose an option from the list![0m
goto MENU

:1
echo [91mLogging into Account1[0m
cli.exe users/Account1.ini

:2
echo [91mLogging into Account2[0m
cli.exe users/Account2.ini

:3
echo [91mLogging into Account3[0m
cli.exe users/Account3.ini

:4
echo [91mLogging into Account4[0m
cli.exe users/Account4.ini

:unused
echo [91mUnused account, not set up yet![0m
goto menu

:x
echo done
