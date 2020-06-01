Minecraft CLI slaves project
========================

The Minecraft CLI Bots project is a script i made as a fast and easy way to log into my many alts,
on a spesific server. It relies on [Minecraft-Console-Client](https://github.com/ORelio/Minecraft-Console-Client) to launch lightweight minecraft CLI clients.

## Usage

I play on a server with the same minion type plugin as [hypixel](https://hypixel-skyblock.fandom.com/wiki/Minions). Now i don't personally play on hypixel, but from what i've heard its very similar. Basically what i need is a bot that joins the hub, does `/server skyblock` and then `/is coop *player1*`
From there i can use my main account to loot the minions, to then further level up my main island, and sell the resources i don't need for money.
To quit simply just do /quit in the console

## How to use

This script is my first ever project, and it shows. The code is simple, and not very dynamic if you want to add accounts/remove accounts

### On Linux

1. Download and install [Mono](https://www.mono-project.com/download/stable/#download-lin) if not already installed
2. To get started make .ini files for every account you plan to be using. Use `example.ini` as a template
3. Edit `mccli.sh` and add your accounts as following: Changing out account1-4 with whatever you want to call your accounts, and editing the numbers in front the accounts. Make sure to add spaces so all of the accounts line up as shown here, if you don't you're gonna get a very messy script. You can add as many accounts as you want, just copy and paste the line(s) below

```xml
printf "${number} 1) ${menu}Account1        ${number}3) ${menu}Account3 ${normal}\n"
printf "${number} 2) ${menu}Account2        ${number}4) ${menu}Account4 ${normal}\n"
```

4. Here you're going to decide what happends with your input. Edit `mccli.sh` as following: Where 1) is the input and account1 is your account name, and whatever you saved your .ini file as.

```xml
1) clear;
    option_picked "Logging in to account1;
    mono cli.exe users/account1.ini
    show_menu;
;;
```

5. Optional: change onlogin.txt if you want to run ingame commands at login

6. Make the script executable and run it in bash
```xml
chmod +x mccli.sh
./mccli.sh
```

### On Windows

Only difference with windows is the script setup, currently only windows 10 supports colors in batch scripting, so if you're using Windows 8 or older use 'mccliw8.bat'

1. Make .ini files for every account you plan to be using. Use `example.ini` as a template.
2. Edit mccli.bat and add your accounts as following: Changing out the Account1-4 with whatever you want to call your accounts, and editing the numbers in front of the accounts. Again make sure to add spaces so all of the accounts line up as shown here, if you don't you're gonna get a very messy script. You can add as many accounts as you want, just copy and paste the line(s) below

```xml
echo   [90m1)[0m [36mAccount1[0m         [90m3)[0m [36mAccount3[0m
echo   [90m2)[0m [36mAccount2[0m         [90m4)[0m [36mAccount4[0m
```

3. Change the goto command for each input `IF %M%==1 goto unused`, changing it from `goto unused` to `goto x` (where x is your account you specify in the next step)

4. Same as in linux you're gonna decide what your input does. Edit `mccli.bat` or `mccliw8.bat` depending on what operating system your on. Where 1 is your input, and Account1 is your account name or whatever you named your .ini file

```xml
:1
echo [91mLogging into account1[0m
cli.exe users/account1.ini
```

4. Optional: change onlogin.txt if you want to run ingame commands at login

5. Run the script, double click `mccli.bat` or `mccliw8.bat`
