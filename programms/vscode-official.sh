#!/bin/bash

# Создание папки для скачивания билда
if [ ! -d ~/programms-deb ]; then
    mkdir ~/programms-deb
    echo "[Install Programms] Папка programms-deb создана | The programms-deb folder has been created"
else
    echo "[Install Programms] Папка programms-deb уже была создана | The programms-deb folder has already been created"
fi

# Удаление старого файла если есть
if [ -e ~/programms-deb/vscode-install.deb]; then
    rm ~/programms-deb/vscode-install.deb
    echo "[Install Programms] Старый файл удалён, идёт скачивание нового | The old file has been deleted, and a new one is being downloaded"
fi

# Получение билда из git
wget -O ~/programms-deb/vscode-install.deb "https://go.microsoft.com/fwlink/?LinkID=760868"
# Очистка консоли
clear

# Установка программы
sudo apt install ~/programms-deb/vscode-install.deb

# Очистка консоли
clear
