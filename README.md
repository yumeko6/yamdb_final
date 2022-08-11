## Проект YaMDb
### Описание
###### Проект YaMDb собирает отзывы (Review) пользователей на произведения (Titles). Произведения делятся на категории: «Книги», «Фильмы», «Музыка».

### Сайт проекта Yatube
https://yumeko.serveblog.net/

### Сайт проекта Yamdb
https://yumeko.serveblog.net/api/

### Документация проекта Yamdb
https://yumeko.serveblog.net/redoc/

### Используется
[![Python](https://img.shields.io/badge/-Python_3.7.9-464646??style=flat-square&logo=Python)](https://www.python.org/downloads/)
[![Django](https://img.shields.io/badge/-Django-464646??style=flat-square&logo=Django)](https://www.djangoproject.com/)
[![Django](https://img.shields.io/badge/-Django_rest_framework_3.12.4-464646??style=flat-square&logo=Django)](https://www.django-rest-framework.org)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/yumeko1/api_yamdb?label=docker&logo=docker)](https://hub.docker.com/r/yumeko1/api_yamdb/tags)
![Yamdb CI](https://github.com/yumeko6/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg)
### Установка. Docker

- Склонировать проект

`git clone https://github.com/yumeko6/yamdb_final.git`

- Перейти в папку *infra*

`cd infra/`

- Запустить сборку docker-compose

`docker-compose up`

### Примеры работы с API для авторизованных пользователей

- Добавление категории:
Права доступа: Администратор.
__POST /api/v1/categories/__
```json
{
  "name": "string",
  "slug": "string"
}
```

- Удаление категории:
Права доступа: Администратор.
__DELETE /api/v1/categories/{slug}/__

- Добавление жанра:
Права доступа: Администратор.
__POST /api/v1/genres/__
```json
{
  "name": "string",
  "slug": "string"
}
```


- Обновление публикации:
__PUT /api/v1/posts/{id}/__
```json
{
  "text": "string",
  "image": "string",
  "group": 0
}
```

- Добавление произведения:
Права доступа: Администратор. 
__POST /api/v1/titles/__
```json
{
  "name": "string",
  "year": 0,
  "description": "string",
  "genre": [
    "string"
  ],
  "category": "string"
}
```


Добавление произведения:
Права доступа: Доступно без токена
__GET /api/v1/titles/{titles_id}/__
```json
{
  "id": 0,
  "name": "string",
  "year": 0,
  "rating": 0,
  "description": "string",
  "genre": [
    {
      "name": "string",
      "slug": "string"
    }
  ],
  "category": {
    "name": "string",
    "slug": "string"
  }
}
```


## Работа с пользователями:
- Получение списка всех пользователей.
Права доступа: Администратор
__GET /api/v1/users/__ - Получение списка всех пользователей

- Добавление пользователя:
Права доступа: Администратор
Поля email и username должны быть уникальными.
__POST /api/v1/users/__ - Добавление пользователя


- Получение пользователя по username:
Права доступа: Администратор
__GET /api/v1/users/{username}/__ - Получение пользователя по username

- Изменение данных пользователя по username:
Права доступа: Администратор
__PATCH /api/v1/users/{username}/__ - Изменение данных пользователя по username
```json
{
  "username": "string",
  "email": "user@example.com",
  "first_name": "string",
  "last_name": "string",
  "bio": "string",
  "role": "user"
}
```

- Удаление пользователя по username:
Права доступа: Администратор
__DELETE /api/v1/users/{username}/__ - Удаление пользователя по username

- Получение данных своей учетной записи:
Права доступа: Любой авторизованный пользователь
__GET /api/v1/users/me/__ - Получение данных своей учетной записи

- Изменение данных своей учетной записи:
Права доступа: Любой авторизованный пользователь
__PATCH /api/v1/users/me/__ - Изменение данных своей учетной записи