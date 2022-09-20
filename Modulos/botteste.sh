#!/bin/bash
[[ $(screen -list| grep -c 'bot_teste') == '0' ]] && {
    clear
    echo -e "\E[44;1;37m     ATIVACÃO BOT SSH TESTE     \E[0m"
    echo ""
    echo -ne "\n\033[1;32mINFORME O TOKEN\033[1;37m: "
    read token
    clear
    echo "-----------MODELO-----------"
    echo "=×=×=×=×=×=×=×=×=×=×=×=×=×="
    echo "   MENSAGEM DE BOAS VINDAS   "
    echo "=×=×=×=×=×=×=×=×=×=×=×=×=×="
    echo "        MENSAGEM FINAL         "
    echo ""
    echo -e "\033[1;32mINICIANDO BOT TESTE \033[0m\n"
    cd $HOME/BOT
    rm -rf $HOME/BOT/botteste
    wget https://www.dropbox.com/s/8bg3u09xupwzrmj/botteste >/dev/null 2>&1
    chmod 777 botteste
    echo ""
    sleep 1
    sed -i "s/!#bvindo#!/$bvindo/g" $HOME/BOT/botteste >/dev/null 2>&1
    sed -i "s/!#mfinal#!/$mfinal/g" $HOME/BOT/botteste >/dev/null 2>&1
    sed -i "s/!#bt1#!/$bt1/g" $HOME/BOT/botteste >/dev/null 2>&1
    sed -i "s/!#bt2#!/$bt2/g" $HOME/BOT/botteste >/dev/null 2>&1
    sed -i "s/!#link2#!/$link2/g" $HOME/BOT/botteste >/dev/null 2>&1
    sed -i "s/!#bt3#!/$bt3/g" $HOME/BOT/botteste >/dev/null 2>&1
    sed -i "s/!#link3#!/$link3/g" $HOME/BOT/botteste >/dev/null 2>&1
    sed -i "s/!#dtempo#!/$dtempo/g" $HOME/BOT/botteste >/dev/null 2>&1
    sleep 1
    screen -dmS bot_teste ./botteste $token > /dev/null 2>&1
    clear
    echo "BOT ATIVADO"
    menu
} || {
    screen -r -S "bot_teste" -X quit
    clear
    echo "BOT DESATIVADO"
    menu
}
