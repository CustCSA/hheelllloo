#!/usr/bin/bash

printf "\033[30;47m==================================================\033[0m\n"
printf "\033[1m	⣿⣿⣷⠻⣦⡶⢈⣴⣿⣿⣿⢿⣿⣿⣿⣿⣿⣷⣝⢮⠻⣷⣝⢾⡿⠃⠻⣿⣿⣿\n	⣿⣿⣷⣴⠞⣴⣿⡏⣿⣿⣿⣦⠻⢿⣿⣿⣿⣿⣿⣷⡀⠙⣿⣷⡙⣆⣿⣿⣿⣿\n	⣿⣿⣿⡟⣼⣿⠿⢃⠻⢿⣿⣿⠰⢇⢽⡟⢿⣿⣿⣿⣿⡄⢿⣿⣷⠘⢿⣿⣿⣿\n	⣿⣿⡿⢹⢸⣿⢰⡝⡅⡆⢿⣿⣿⢸⣦⠙⠆⠙⢿⡏⠿⣷⡈⣿⣿⡇⠰⣍⢿⣿\n	⣿⣿⡇⣿⢸⣿⢸⢡⣷⡘⡄⠻⣿⡆⡷⠚⡙⠢⡀⣙⠀⣿⡇⢹⣿⣿⡀⣿⣆⣿\n	⣿⣿⠃⣿⢸⡿⢎⠴⠚⢿⣮⣬⣦⡉⣇⠠⣷⠂⢹⣿⢠⢇⣴⢸⣿⣿⠁⣿⣿⢸\n	⣿⡇⡀⣿⠀⠇⢸⢀⣧⠄⣿⣿⣿⣿⣿⣆⣘⣠⣾⣇⡄⣾⣿⠘⠟⠁⠀⣿⣿⣸\n	⣿⡇⣧⠹⡇⠀⣿⣇⠘⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⢹⣿⡀⡖⠀⢸⡿⢃⡘\n	⣿⣷⠹⠆⠳⠀⣿⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⡿⠀⣿⡇⠀⠀⠘⠁⣾⣇\n	⣿⣿⢢⡀⠱⣆⠹⣿⣿⣿⣿⣿⣿⣘⣣⣼⢿⣿⠿⠋⠀⠀⢻⡇⢀⠀⣀⠀⣿⡟\n\033[0m"
printf "\033[30;47m==================================================\033[0m\033[32;1m\n"
user=$(whoami)
printf "		\033[32;1;4m用户 \033[34m%s \033[0m\033[32;1;4m欢迎您!\033[32;1m\n" ${user}
printf "\033[0m\033[31m"
time=$(last | grep -o root | wc -l)
printf "	\033[4;1m你最近已经登录 %d 次了 请注意休息\033[0m\n" $time
              
printf "\033[30;47m==================================================\033[0m\033[32;1;4m\n"

printf "当前CPU型号为："
sed -n '5p' /proc/cpuinfo | cut -c 13-340

kbmember=$(sed -n '1p' /proc/meminfo | cut -c 17-25)
mbmember=$(expr $kbmember / 1024)

printf "当前电脑内存容量为: %s mb\033[0m\n" ${mbmember}

printf "\033[30;47m==================================================\033[0m\033[32;1m\n"
logtime=$(last | head -2 | tail -1 |cut -d  '('  -f2|cut -d  ')'  -f1)
printf "	     \033[4m上次登录时长为 %s \n" $logtime

printf "\033[0m\033[32m\n"
printf "	\033[1;4m距离开机已经过了" 
uptime | cut -c 13-27

ip=$(who am i | awk '{print $5}' | sed 's/(//g' | sed 's/)//g')

printf "\033[0m\033[30;47m==================================================\033[0m\n"

url=$(printf "https://wttr.in/%s?lang=zh" $ip)

curl -k -s $url | head -7

printf "\033[30;47m==================================================\033[0m\033[32;1;4m\n"

printf "\033[32;4;1m%s\033[0m\033[1m\n" $(curl -k -s https://api.uixsj.cn/hitokoto/get)


printf "\033[30;47m==================================================\033[0m\n"

printf "\033[37;1m	—————————— ฅ՞• •՞ฅ ———————————\033[0m"

printf "\n\033[34;1m	言葉にならない　ここにある想い\033[0m\n"

printf "\033[37;1m	—————————— ฅ՞• •՞ฅ ———————————\033[0m\n"
