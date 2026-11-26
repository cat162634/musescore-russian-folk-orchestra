@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo ============================================================
echo   Установка плагина и шаблонов "Народный оркестр (ОРНИ)"
echo   для MuseScore Studio 4
echo ============================================================
echo.

set "DOCS=%USERPROFILE%\Documents"
if not exist "%DOCS%\MuseScore4" (
    if exist "%USERPROFILE%\OneDrive\Documents\MuseScore4" (
        set "DOCS=%USERPROFILE%\OneDrive\Documents"
    )
)

set "MS4_DIR=%DOCS%\MuseScore4"
set "PLUGINS_DST=%MS4_DIR%\Plugins\NarodniyOrkestr"
set "TEMPLATES_DST=%MS4_DIR%\Templates\Народный оркестр"

echo Папка MuseScore 4: %MS4_DIR%
if not exist "%MS4_DIR%\Plugins" mkdir "%MS4_DIR%\Plugins"
if not exist "%MS4_DIR%\Templates" mkdir "%MS4_DIR%\Templates"
if not exist "%PLUGINS_DST%" mkdir "%PLUGINS_DST%"
if not exist "%TEMPLATES_DST%" mkdir "%TEMPLATES_DST%"

copy /Y "%~dp0Plugins\NarodniyOrkestr\NarodniyOrkestr.qml" "%PLUGINS_DST%\" >nul
copy /Y "%~dp0Templates\Народный оркестр\*.mscz" "%TEMPLATES_DST%\" >nul

echo.
echo [OK] Плагин скопирован в: %PLUGINS_DST%
echo [OK] Шаблоны скопированы в: %TEMPLATES_DST%
echo.
echo Что делать дальше в MuseScore 4:
echo  1. Перезапустите MuseScore (если он был открыт).
echo  2. Шаблоны сразу появятся в: Файл - Создать - Выбрать шаблон - Мои шаблоны / Народный оркестр.
echo  3. Чтобы включить плагин-конструктор:
echo     Плагины - Управление плагинами - поставьте галочку "Народный оркестр (ОРНИ)" - ОК.
echo     После этого запускайте через: Плагины - Инструменты для композиции и аранжировки - Народный оркестр (ОРНИ).
echo.
pause
