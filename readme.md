Minecraft CLI slaves project
========================

The Minecraft CLI Bots project is a script i made as a fast and easy way to log into my many alts,
on a spesific server. It relies on [Minecraft-Console-Client](https://github.com/ORelio/Minecraft-Console-Client) to launch lightweight minecraft CLI clients.

## Usage

I play on a server with the same minion type plugin as [hypixel](https://hypixel-skyblock.fandom.com/wiki/Minions). Now i don't personally play on hypixel, but from what i've heard its very similar. Basically what i need is a bot that joins the hub, does '/server skyblock' and then '/is coop *player1*'
From there i can use my main account to loot the minions, to then further level up my main island, and sell the resources i don't need for money.
To quit simply just do /quit in the console

## How to use

This script is my first ever project, and it shows. The code is simple, and not very dynamic if you want to add accounts/remove accounts

### On Linux

1. To get started make .ini files for every account you plan to be using. Use 'example.ini' as a template
2. Edit mccli.sh and add your accounts as following:

```xml
<printf "\n${number}*************** ${lg}Minecraft Alt Menu ${number}****************${normal}\n"
 printf "${number} 1) ${e} ${menu}BusinessKid         ${number}16) ${e} ${menu}GrunesEi ${normal}\n"
 printf "${number}***************** ${lg}Made by ${re}R${or}a${yl}g${gr}g${bl}e${pu}_ ${number}******************${normal}\n"
 printf "Choose a Minecraft account, or ${fgred}q to exit. ${normal}"
 read opt
>
