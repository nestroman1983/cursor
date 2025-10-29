# 🔧 Инструкция по настройке Git-репозитория

## Статус

⚠️ **Git не установлен** в вашей системе. Следуйте инструкциям ниже для установки и публикации фреймворка.

---

## Шаг 1: Установка Git

### Windows:
1. Скачайте Git: https://git-scm.com/download/win
2. Запустите установщик
3. Следуйте инструкциям (оставьте настройки по умолчанию)
4. Перезапустите PowerShell/Cursor

### Проверка установки:
```bash
git --version
```

Должно вывести: `git version 2.x.x`

---

## Шаг 2: Настройка Git (первый раз)

```bash
# Укажите ваше имя и email
git config --global user.name "nestroman1983"
git config --global user.email "your-email@example.com"

# Проверьте настройки
git config --list
```

---

## Шаг 3: Создание репозитория

### Вариант A: Через командную строку (после установки Git)

```bash
# 1. Перейти в директорию фреймворка
cd d:\cursor_projects\tz-validation-framework

# 2. Инициализировать Git
git init

# 3. Добавить все файлы
git add .

# 4. Создать первый коммит
git commit -m "Initial commit: TZ Validation Framework v2.0"

# 5. Добавить удаленный репозиторий
git remote add origin https://github.com/nestroman1983/cursor.git

# 6. Отправить на GitHub
git branch -M main
git push -u origin main
```

### Вариант B: Через GitHub Desktop (GUI)

1. Скачайте GitHub Desktop: https://desktop.github.com/
2. Установите и войдите в аккаунт GitHub
3. File → Add Local Repository → Выберите `d:\cursor_projects\tz-validation-framework`
4. Нажмите "Publish repository"
5. Выберите репозиторий: `nestroman1983/cursor`
6. Нажмите "Publish"

---

## Шаг 4: Проверка

После публикации откройте: https://github.com/nestroman1983/cursor

Вы должны увидеть:
- ✅ 13 файлов
- ✅ README.md как главную страницу
- ✅ Структуру директории

---

## 🎯 Что будет в репозитории

```
cursor/
├── START_HERE.md                           ← Точка входа
├── README.md                                ← Главная навигация
├── MANIFEST.md                              ← Список файлов
├── GIT_SETUP.md                             ← Эта инструкция
├── .gitignore                               ← Игнорируемые файлы
│
├── Критерии требований.md                  ← Все 46 правил
├── reglament1_7.md                          ← Регламент
│
├── Память_критериев_требований.md          ← Память для AI
├── Справочник_уточнений_критериев.md       ← Справочник
├── README_BANNER.md                         ← Шпаргалка
│
├── Методология_проверки_ТЗ.md              ← Методология R1-R17
├── Методология_проверки_ТЗ_часть2.md       ← Методология R18-R46
├── МЕТОДОЛОГИЯ_ПРОВЕРКИ_ПОЛНАЯ.md          ← Полная методология
│
├── ИНСТРУКЦИЯ_ДЛЯ_НОВЫХ_ПОЛЬЗОВАТЕЛЕЙ.md   ← Инструкция
└── README_FRAMEWORK.md                      ← Полное описание
```

---

## 📝 .gitignore (будет создан автоматически)

Следующие файлы/папки будут игнорироваться:
- Временные файлы Windows
- Файлы конфигурации IDE
- Локальные настройки пользователя

---

## 🔄 Обновление репозитория (в будущем)

### После изменения файлов:

```bash
# 1. Проверить изменения
git status

# 2. Добавить измененные файлы
git add .

# 3. Создать коммит
git commit -m "Описание изменений"

# 4. Отправить на GitHub
git push
```

---

## 🌟 Как другие пользователи будут использовать

### Клонирование репозитория:

```bash
# Клонировать в любую директорию
git clone https://github.com/nestroman1983/cursor.git

# Перейти в директорию
cd cursor

# Готово! Все файлы на месте
```

### Или скачать ZIP:

1. Открыть: https://github.com/nestroman1983/cursor
2. Нажать зеленую кнопку "Code"
3. Выбрать "Download ZIP"
4. Распаковать в нужную директорию

---

## 📚 Рекомендации для README.md на GitHub

После публикации репозиторий автоматически покажет `README.md` как главную страницу.

### Структура главной страницы (уже готова):

1. ✅ Название и описание фреймворка
2. ✅ Быстрый старт (3 шага)
3. ✅ Содержимое (11 файлов)
4. ✅ Что проверяется (46 правил)
5. ✅ Уровни проверки
6. ✅ Формат результата
7. ✅ Примеры использования
8. ✅ Документация
9. ✅ Кастомизация
10. ✅ Лицензия

---

## 🏷️ GitHub Topics (рекомендуется добавить)

После публикации добавьте теги (topics) в настройках репозитория:

```
requirements-engineering
technical-specification
quality-assurance
documentation
validation
ai-tools
cursor-ai
requirements-validation
quality-control
technical-documentation
```

### Как добавить:
1. Откройте: https://github.com/nestroman1983/cursor
2. Нажмите ⚙️ рядом с "About"
3. Добавьте Topics в поле "Topics"
4. Нажмите "Save changes"

---

## 📄 GitHub Description (рекомендуется добавить)

В настройках репозитория (⚙️ рядом с "About") добавьте описание:

```
🔍 TZ Validation Framework - проверка технических заданий на соответствие 46 правилам качества + регламент. Методология, инструкции, количественная оценка.
```

И Website:
```
https://github.com/nestroman1983/cursor
```

---

## 🚀 После публикации

### Поделитесь ссылкой:

```
Фреймворк для проверки ТЗ теперь доступен:
https://github.com/nestroman1983/cursor

Клонируйте:
git clone https://github.com/nestroman1983/cursor.git

Или скачайте ZIP:
https://github.com/nestroman1983/cursor/archive/refs/heads/main.zip
```

---

## 🔧 Troubleshooting

### Проблема: "Permission denied"
```bash
# Решение: Настройте SSH ключ или используйте Personal Access Token
# Инструкция: https://docs.github.com/en/authentication
```

### Проблема: "Repository not found"
```bash
# Решение: Проверьте правильность URL
# Должно быть: https://github.com/nestroman1983/cursor.git
```

### Проблема: "Updates were rejected"
```bash
# Решение: Сначала получите изменения
git pull origin main
git push origin main
```

---

## 📞 Помощь

- **Git документация:** https://git-scm.com/doc
- **GitHub Docs:** https://docs.github.com/
- **GitHub Desktop:** https://desktop.github.com/

---

**Следующий шаг:** Установите Git и выполните команды из "Шаг 3: Создание репозитория"

**Версия инструкции:** 1.0  
**Дата:** 2025-10-20


