#!/bin/bash

# Создание папки для скачивания билда
if [ ! -d ~/programms-deb ]; then
    mkdir ~/programms-deb
    echo "[Install Programms] Папка programms-deb создана | The programms-deb folder has been created"
else
    echo "[Install Programms] Папка programms-deb уже была создана | The programms-deb folder has already been created"
fi

# Удаление старого файла если есть
if [ -e ~/programms-deb/yandex-music-Non-official.deb ]; then
    rm ~/programms-deb/yandex-music-Non-official.deb
    echo "[Install Programms] Старый файл удалён, идёт скачивание нового файла | The old file has been deleted, and a new one is being downloaded"
fi

# Получение билда из git
wget -O ~/programms-deb/yandex-music-Non-official.deb https://github.com/cucumber-sp/yandex-music-linux/releases/download/v5.22.1/yandex-music_5.22.1_amd64.deb

# Очистка консоли
clear

# Установка программы
sudo apt install ~/programms-deb/yandex-music-Non-official.deb

# Очистка консоли
clear
