#!/bin/sh
show_menu(){
    normal=`echo "\033[m"`
    menu=`echo "\033[36m"`
    number=`echo "\033[90m"`
    mg=`echo "\033[95m"`
    lg=`echo "\033[92m"`
    yl=`echo "\033[93m"`
    re=`echo "\033[91m"`
    or=`echo "\033[33m"`
    gr=`echo "\033[92m"`
    bl=`echo "\033[94m"`
    pu=`echo "\033[95m"`
    e=`echo "\033[92m[E]\033[0m"`
    g=`echo "\033[93m[G]\033[0m"`
    u=`echo "\033[90m[U]\033[0m"`
    bgred=`echo "\033[41m"`
    fgred=`echo "\033[31m"`
    printf "\n${number}*************** ${lg}Minecraft Alt Menu ${number}****************${normal}\n"
    printf "${number} 1) ${menu}Account1          ${number}16) ${menu}Account3 ${normal}\n"
    printf "${number} 2) ${menu}Account2          ${number}17) ${menu}Account4 ${normal}\n"
    printf "${number}***************** ${lg}Made by ${re}R${or}a${yl}g${gr}g${bl}e${pu}_ ${number}******************${normal}\n"
    printf "Choose a Minecraft account, or ${fgred}q to exit. ${normal}"
    read opt
}

option_picked(){
    msgcolor=`echo "\033[01;31m"` # bold red
    normal=`echo "\033[00;00m"` # normal white
    message=${@:-"${normal}Error: No message passed"}
    printf "${msgcolor}${message}${normal}\n"
}

clear
show_menu
while [ $opt != '' ]
    do
    if [ $opt = '' ]; then
      exit;
    else
      case $opt in
        1) clear;
            option_picked "Logging in to Account1";
            mono cli.exe users/Account1.ini
            show_menu;
        ;;
        2) clear;
            option_picked "Logging in to Account2";
            mono cli.exe users/Account1.ini
            show_menu;
        ;;
        3) clear;
            option_picked "Logging in to Account3";
            mono cli.exe users/Account1.ini
            show_menu;
        ;;
        4) clear;
            option_picked "Logging in to Account4";
            mono cli.exe users/Account1.ini
            show_menu;
        ;;
        q)exit;
        ;;
        \n)exit;
        ;;
        *)clear;
            option_picked "Not a valid option!";
            show_menu;
        ;;
      esac
    fi
done
