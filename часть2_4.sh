#!/bin/bash
#скрипт для пункта 4
echo "Создание файла file1"
touch file1

echo "Создание файла file2"
touch file2

echo "Задание времени модификации файла file2 на 1 января 1990 года, 0 часов, 0 минут, 0 секунд"
touch -t 199001010000.00 file2
ls -l

echo "Задание прав доступа для файла file2 rwxrw----"
chmod 760 file2
ls -l

echo "Создание вложенных директорий dir1/dir2/dir3/"
mkdir -p dir1/dir2/dir3
ls

echo "Задание прав доступа для цепочки вложеных директорий"
chmod -R 760 dir1
ls -l

echo "Копирование файла file1 в директорию dir1/dir2/dir3/"
cp file1 dir1/dir2/dir3/

echo "Перемещение файла file2 в директорию dir1/dir2/dir3/"
mv file2 dir1/dir2/dir3/

echo "Определение типа каталога dir1"
file dir1

echo "Количество секунд, прошедших с 1 января 1970 года:"
date +%s

echo "Удаление каталога от созданных файлов и директорий"
rm -rf file1 file2 dir1
