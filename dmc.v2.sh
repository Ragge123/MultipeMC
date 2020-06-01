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
    printf "${number} 1) ${e} ${menu}BusinessKid         ${number}16) ${e} ${menu}GrunesEi ${normal}\n"
    printf "${number} 2) ${e} ${menu}RoastyToastyMan     ${number}17) ${e} ${menu}sepxar ${normal}\n"
    printf "${number} 3) ${e} ${menu}kr0nkisop           ${number}18) ${e} ${menu}adisian ${normal}\n"
    printf "${number} 4) ${e} ${menu}akab9               ${number}19) ${e} ${menu}Ayu_Okomaru ${normal}\n"
    printf "${number} 5) ${e} ${menu}br4ndon426          ${number}20) ${u} ${menu} ${normal}\n"
    printf "${number} 6) ${e} ${menu}WISI77              ${number}21) ${u} ${menu} ${normal}\n"
    printf "${number} 7) ${e} ${menu}benooi              ${number}22) ${u} ${menu} ${normal}\n"
    printf "${number} 8) ${e} ${menu}skilfulpie          ${number}23) ${u} ${menu} ${normal}\n"
    printf "${number} 9) ${e} ${menu}CurryKing200        ${number}24) ${u} ${menu} ${normal}\n"
    printf "${number}10) ${e} ${menu}DieselDan           ${number}25) ${u} ${menu} ${normal}\n"
    printf "${number}11) ${g} ${menu}MirukoCat           ${number}26) ${u} ${menu} ${normal}\n"
    printf "${number}12) ${g} ${menu}VallahGuteKind      ${number}27) ${u} ${menu} ${normal}\n"
    printf "${number}13) ${g} ${menu}devkupo             ${number}28) ${u} ${menu} ${normal}\n"
    printf "${number}14) ${g} ${menu}deltaromeotango     ${number}29) ${u} ${menu} ${normal}\n"
    printf "${number}15) ${g} ${menu}crDicegod           ${number}30) ${u} ${menu} ${normal}\n"
    printf "\n"
    printf "${e} ${menu}= Emeralds      ${g} ${menu}= Gold      ${u} ${menu}= Unused\n"
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
            option_picked "Logging in to BusinessKid";
            mono cli.exe users/BusinessKid.ini
            show_menu;
        ;;
        2) clear;
            option_picked "Logging in to RoastyToastyMan";
            mono cli.exe users/RoastyToastyMan.ini
            show_menu;
        ;;
        3) clear;
            option_picked "Logging in to kr0nkisop";
            mono cli.exe users/kr0nkisop.ini
            show_menu;
        ;;
        4) clear;
            option_picked "Logging in to akab9";
            mono cli.exe users/akab9.ini
            show_menu;
        ;;
        5) clear;
            option_picked "Logging in to br4ndon426";
            mono cli.exe users/br4ndon426.ini
            show_menu;
        ;;
        6) clear;
            option_picked "Logging in to WISI77";
            mono cli.exe users/WISI77.ini
            show_menu;
        ;;
        7) clear;
            option_picked "Logging in to benooi";
            mono cli.exe users/benooi.ini
            show_menu;
        ;;
        8) clear;
            option_picked "Logging in to skilfulpie";
            mono cli.exe users/skilfulpie.ini
            show_menu;
        ;;
        9) clear;
            option_picked "Logging in to CurryKing200";
            mono cli.exe users/CurryKing200.ini
            show_menu;
        ;;
        10) clear;
            option_picked "Logging in to DieselDan";
            mono cli.exe users/DieselDan.ini
            show_menu;
        ;;
        11) clear;
            option_picked "Logging in to MirukoCat";
            mono cli.exe users/MirukoCat.ini
            show_menu;
        ;;
        12) clear;
            option_picked "Logging in to VallahGuteKind";
            mono cli.exe users/VallahGuteKind.ini
            show_menu;
        ;;
        13) clear;
            option_picked "Logging in to devkupo";
            mono cli.exe users/devkupo.ini
            show_menu;
        ;;
        14) clear;
            option_picked "Logging in to deltaromeotango";
            mono cli.exe users/deltaromeotango.ini
            show_menu;
        ;;    
        15) clear;
            option_picked "Logging in to crDicegod";
            mono cli.exe users/crDicegod.ini
            show_menu;
        ;;
        16) clear;
            option_picked "Logging in to GrunesEi";
            mono cli.exe users/GrunesEi.ini
            show_menu;
        ;;
        17) clear;
            option_picked "Logging in to sepxar";
            mono cli.exe users/sepxar.ini
            show_menu;
        ;;
        18) clear;
            option_picked "Logging in to adisian";
            mono cli.exe users/adisian.ini
            show_menu;
        ;;
        19) clear;
            option_picked "Logging in to Ayu_Okomaru";
            mono cli.exe users/Ayu_Okomaru.ini
            show_menu;
        ;;
        q)exit;
        ;;
        \n)exit;
        ;;
        *)clear;
            option_picked "Not a valid option, or unused account!";
            show_menu;
        ;;
      esac
    fi
done
