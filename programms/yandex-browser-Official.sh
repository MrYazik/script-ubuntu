#!/bin/bash

# Создание папки для скачивания билда
if [ ! -d ~/programms-deb ]; then
    mkdir ~/programms-deb
    echo "[Install Programms] Папка programms-deb создана | The programms-deb folder has been created"
else
    echo "[Install Programms] Папка programms-deb уже была создана | The programms-deb folder has already been created"
fi

# Удаление старого файла если есть
if [ -e ~/programms-deb/yandex-browser.deb]; then
    rm ~/programms-deb/yandex-browser.deb
    echo "[Install Programms] Старый файл удалён, идёт скачивание нового | The old file has been deleted, and a new one is being downloaded"
fi

# Получение билда из git
wget -O ~/programms-deb/yandex-browser.deb "https://browser.yandex.ru/download?os=linux&partner_id=switch-browser&banerid=6301000000&switch=1"
# Очистка консоли
clear

# Установка программы
sudo apt install ~/programms-deb/yandex-browser.deb

# Очистка консоли
clear
