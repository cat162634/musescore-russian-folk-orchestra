#!/usr/bin/env bash
set -e

MS4_DIR="$HOME/Documents/MuseScore4"
mkdir -p "$MS4_DIR/Plugins/NarodniyOrkestr"
mkdir -p "$MS4_DIR/Templates/Народный оркестр"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cp "$SCRIPT_DIR/Plugins/NarodniyOrkestr/NarodniyOrkestr.qml" "$MS4_DIR/Plugins/NarodniyOrkestr/"
cp "$SCRIPT_DIR/Templates/Народный оркестр/"*.mscz "$MS4_DIR/Templates/Народный оркестр/"

echo "Установлено в $MS4_DIR"
echo "1. Шаблоны: Файл -> Создать -> Выбрать шаблон -> Народный оркестр"
echo "2. Плагин: Плагины -> Управление плагинами -> Народный оркестр (ОРНИ)"
