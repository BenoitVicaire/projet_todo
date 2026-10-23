# projet_todo
Projet de cours PHP POO todolist (DEV312503)

## Démarrage avec Docker (recommandé)

### Pré-requis
- Docker et Docker Compose
- Git

### 1 Cloner le repository
```sh
git clone https://github.com/mithridatem/projet_todo.git
cd projet_todo
```

### 2 Ajouter un fichier .env
Le fichier `.env` est à la racine du projet. 
Avec Docker, la connexion à la base est fournie par `docker-compose.yml` (`DATABASE_HOST=db:3306`, utilisateur `root`, mot de passe `root`) et prend le pas sur le `.env`.
Les variables d'upload (`UPLOAD_*`) restent lues depuis le `.env` :
```env
DATABASE_USERNAME=root
DATABASE_PASSWORD=
DATABASE_NAME=todolist
DATABASE_HOST=db:3306
UPLOAD_DIRECTORY="assets/img/"
UPLOAD_SIZE_MAX=2097152
UPLOAD_FORMAT_WHITE_LIST='["png", "jpeg", "jpg", "webp"]'
```

### 3 Construire et démarrer les conteneurs
```sh
docker compose up --build
```
Services démarrés :
- `php` : PHP 8.4-FPM (extensions `zip`, `mbstring`, `intl`, `pdo_mysql`) + Composer. `composer install` est lancé automatiquement au démarrage.
- `nginx` : serveur web avec réécriture des URL vers `public/index.php`.
- `db` : MySQL 8.4. Le script `db.sql` est exécuté automatiquement au premier démarrage.

### 4 Accéder à l'application
http://localhost:8080

### Commandes utiles
```sh
docker compose up -d              # démarrer en arrière-plan
docker compose logs -f            # suivre les logs
docker compose exec php composer install   # (ré)installer les dépendances
docker compose exec db mysql -uroot -proot todolist   # console MySQL
docker compose down               # arrêter les conteneurs
docker compose down -v            # arrêter et supprimer la base (db.sql sera rejoué au prochain démarrage)
```

> `db.sql` n'est exécuté que lorsque le volume de données est vide. Pour réinitialiser la base, utilisez `docker compose down -v`.

---

## Démarrage sans Docker

### Pré-requis
PHP 8.2 +
MYSQL
Composer 2.5 +

### 1 Cloner le repository
```sh
git clone https://github.com/mithridatem/projet_todo.git
cd projet_todo
```

### 2 Créer la base de données avec le script `db.sql`

### 3 Installer les dépendances
```sh
composer install
```

### 4 Créer un fichier .env
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

### 5 Démarrer le projet
```sh
php -S 127.0.0.1:8000 -t public
```
