# My Arch Linux Rice

![Screenshot](screenshots/desktop.png)

Данный репозиторий содержит конфигурационные файлы (dotfiles) для моей рабочей среды на **Arch Linux**.  
Все настройки проверены исключительно на Arch Linux и используют возможности этого дистрибутива.

## Особенности

- **Gruvbox**
- **Niri + qs**
- **zsh**

И многое другое — полный список можно посмотреть в соответствующих директориях.

> **Примечание про quickshell**:  
> В настоящее время **quickshell** используется только для управления фоном рабочего стола.  
> В ближайших планах — полностью заменить **waybar** на **quickshell**, превратив его в единый инструмент для панели и фона.  
> Следите за обновлениями репозитория.

## Установка

``` bash
git clone https://github.com/makaYtech/dotfiles.git
cd dotfiles
stow .
```

## Зависимости

Для корректной работы нужно установить следующие пакеты (список может быть неполным):

```bash
# Основные
sudo pacman -S git stow niri xdg-desktop-portal-gtk xdg-desktop-portal-gnome alacritty xwayland-satellite quickshell
