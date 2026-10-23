# projet_todo
Projet de cours PHP POO todolist (DEV312503)

### prés-requis :
PHP 8.2 +
MYSQL
Composer 2.5 +

## 1 Cloner le repository
```sh
git clone https://github.com/mithridatem/projet_todo
```
## 2 Créer la base de données avec le script `db.sql`

## 3 Installer les dépendances :
```sh
composer install
```
## 4 Créer un fichier .env
```env
# adapter avec vos propres valeurs
DATABASE_USERNAME=root
DATABASE_PASSWORD=
DATABASE_NAME=todolist
DATABASE_HOST=localhost:3306
UPLOAD_DIRECTORY="assets/img/"
UPLOAD_SIZE_MAX=2097152
UPLOAD_FORMAT_WHITE_LIST='["png", "jpeg", "jpg", "webp"]'
```

## 5 démarrer le projet
```sh
php -S 127.0.0.1:8000 -t public
```
