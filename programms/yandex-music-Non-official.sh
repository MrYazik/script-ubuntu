#!/bin/bash

# Создание папки для скачивания билда
if [ ! -d ~/programms-deb ]; then
    mkdir ~/programms-deb
    echo "Папка programms-deb создана"
else
    echo "Папка programms-deb уже создана"
fi

if [ -e ~/programms-deb/yandex-music-Non-official.deb ]; then
    rm ~/programms-deb/yandex-music-Non-official.deb
    echo "Старый файл удалён, идёт скачивание нового файла"
fi

# Получение билда из git
wget -O ~/programms-deb/yandex-music-Non-official.deb https://github.com/cucumber-sp/yandex-music-linux/releases/download/v5.22.1/yandex-music_5.22.1_amd64.deb

# Установка программы
sudo apt install ~/programms-deb/yandex-music-Non-official.deb
