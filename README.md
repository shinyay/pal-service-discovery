# Movie Fun!

## Tests

Smoke Tests require server running on port 8080 by default.

### Build JAR ignoring tests

```bash
$ ./gradlew clean build -xtest
```

### Run Smoke Tests against specific URL

```bash
$ MOVIE_FUN_URL=http://moviefun.example.com ./gradlew test
```

## Migrations

Create databases needed for local development with

```bash
mysql -h127.0.0.1 -uroot -pmysql < databases/create_databases.sql
```

Run local migrations with

```bash
./gradlew flywayMigrate
```

Run migrations on the PCF environment which you're logged in to with

```bash
CF_MIGRATE=true ./gradlew cfMigrate
```

## Setup Database

```
$ docker-compose up -d
$ mysql -h127.0.0.1 -uroot -pmysql -e 'DROP DATABASE IF EXISTS movies; CREATE DATABASE movies;'
$ mysql -h127.0.0.1 -uroot -pmysql movies < ./db/schema.ddl
```

## Setyo Minio

- [Minio Dashboard: http://localhost:9000](http://localhost:9000)

  - AccessKey: access_key
  - SecretKey: access_secret
  - Bucket: movie-fun-course (Create on Dashboard)
