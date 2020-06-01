@echo off

:MENU
echo *************** Minecraft Alt Menu ***************
echo  1) [E] Account1           16) [E] Account3
echo  2) [E] Account2           17) [E] Account4
echo ***************** Made by Ragge_ *****************
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
echo Not a valid option, please choose and option from the list!
goto MENU

:1
echo Logging into Account1
cli.exe users/Account1.ini

:2
echo Logging into Account2
cli.exe users/Account2.ini

:3
echo Logging into Account3
cli.exe users/Account3.ini

:4
echo Logging into Account4
cli.exe users/Account4.ini

:unused
echo Unused account, not set up yet!
goto menu

:x
echo done
