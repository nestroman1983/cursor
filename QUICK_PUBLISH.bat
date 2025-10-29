@echo off
chcp 65001 >nul
echo ========================================
echo TZ Validation Framework - Quick Publish
echo ========================================
echo.

REM Проверка установки Git
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Git не установлен!
    echo.
    echo Установите Git:
    echo https://git-scm.com/download/win
    echo.
    echo После установки перезапустите этот скрипт.
    echo.
    pause
    exit /b 1
)

echo ✅ Git найден: 
git --version
echo.

REM Проверка конфигурации Git
git config user.name >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ⚠️  Git не настроен!
    echo.
    set /p username="Введите ваше имя для Git (например, nestroman1983): "
    set /p email="Введите ваш email для Git: "
    git config --global user.name "%username%"
    git config --global user.email "%email%"
    echo.
    echo ✅ Git настроен!
    echo.
)

echo Текущая конфигурация:
git config user.name
git config user.email
echo.

REM Инициализация репозитория
echo 📦 Шаг 1/6: Инициализация Git...
if not exist .git (
    git init
    echo ✅ Git репозиторий инициализирован
) else (
    echo ✅ Git репозиторий уже существует
)
echo.

REM Добавление файлов
echo 📦 Шаг 2/6: Добавление файлов...
git add .
echo ✅ Файлы добавлены
echo.

REM Создание коммита
echo 📦 Шаг 3/6: Создание коммита...
git commit -m "Initial commit: TZ Validation Framework v2.0" -m "- 46 правил формулировки требований (R1-R46)" -m "- Требования регламента к структуре ТЗ" -m "- Полная методология проверки" -m "- Инструкции для новых пользователей" -m "- Количественная оценка качества"
if %ERRORLEVEL% EQU 0 (
    echo ✅ Коммит создан
) else (
    echo ⚠️  Коммит не создан (возможно, нет изменений)
)
echo.

REM Добавление remote
echo 📦 Шаг 4/6: Добавление удаленного репозитория...
git remote get-url origin >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    git remote add origin https://github.com/nestroman1983/cursor.git
    echo ✅ Remote добавлен: https://github.com/nestroman1983/cursor.git
) else (
    echo ✅ Remote уже существует
)
echo.

REM Переименование ветки
echo 📦 Шаг 5/6: Переименование ветки в main...
git branch -M main
echo ✅ Ветка переименована в main
echo.

REM Push на GitHub
echo 📦 Шаг 6/6: Отправка на GitHub...
echo.
echo ⚠️  Сейчас будет выполнен git push.
echo Если потребуется аутентификация:
echo - Введите ваш GitHub логин
echo - В качестве пароля используйте Personal Access Token (НЕ пароль!)
echo.
echo Как получить токен:
echo 1. Откройте: https://github.com/settings/tokens
echo 2. Generate new token (classic)
echo 3. Выберите scope: repo
echo 4. Скопируйте токен и вставьте вместо пароля
echo.
pause
echo.

git push -u origin main
if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo ✅ УСПЕШНО ОПУБЛИКОВАНО!
    echo ========================================
    echo.
    echo Репозиторий доступен по адресу:
    echo https://github.com/nestroman1983/cursor
    echo.
    echo Другие пользователи могут клонировать:
    echo git clone https://github.com/nestroman1983/cursor.git
    echo.
    echo Или скачать ZIP:
    echo https://github.com/nestroman1983/cursor/archive/refs/heads/main.zip
    echo.
) else (
    echo.
    echo ========================================
    echo ❌ ОШИБКА ПРИ ПУБЛИКАЦИИ
    echo ========================================
    echo.
    echo Возможные причины:
    echo 1. Неверные учетные данные
    echo 2. Нет прав на репозиторий
    echo 3. Проблемы с интернетом
    echo.
    echo Попробуйте:
    echo - Проверьте, что вы вошли в GitHub
    echo - Используйте Personal Access Token вместо пароля
    echo - Проверьте подключение к интернету
    echo.
    echo Подробная инструкция: ПУБЛИКАЦИЯ_НА_GITHUB.md
    echo.
)

pause

