# Запуск приложения локально:

* Создаем БД PostgreSQL:
```
sudo su postgres
psql
CREATE USER umanage;
ALTER ROLE umanage SUPERUSER;
ALTER USER umanage WITH PASSWORD 'umanage';
CREATE DATABASE umanage OWNER umanage;
```

Содержимое `config/credentials/development.key`:

```
3c580dbdc7d2b4c979745d6de5275061
```
