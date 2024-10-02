#!/bin/bash

# Шаг 1: Обновление пакетов и установка зависимостей
pkg update && pkg upgrade -y
pkg install python -y
pkg install wget -y
pkg install unzip -y

# Шаг 2: Скачивание архива с приложением
cd ~/storage/downloads
wget "https://example.com/Dekrovica0917/Dota+.zip" -O Dota+.zip

# Шаг 3: Распаковка архива
unzip Dota+.zip

# Шаг 4: Установка Python-зависимостей
pip install pystyle fake-useragent termcolor

# Шаг 5: Добавление кастомной команды в .bashrc
echo "alias dota='cd ~/storage/downloads/Dota+ && python main.py'" >> ~/.bashrc

# Шаг 6: Применение alias
source ~/.bashrc

# Уведомление об успешной установке
echo "Приложение установлено. Теперь вы можете запускать его командой 'dota'."
