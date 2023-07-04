# Supabase Postgres with Apache AGE

## Introduction
Apache AGE is a PostgreSQL extension that provides graph database functionality. It is an acronym for A Graph Extension, and is inspired by Bitnine's AgensGraph, a multi-model database fork of PostgreSQL. The goal of Apache AGE is to create a single storage that can handle both relational and graph model data so that users can use standard ANSI SQL along with openCypher, the Graph query language.

### Features

* Fully open-source project
* Compatible with PostgreSQL
* Provides a unified view of both relational and graph data
* Supports the openCypher query language

At the moment, Apache AGE only supports up to PostgreSQL 13. The PostgreSQL 14 version is in beta. On the other hand the currently stable version of Supabase uses Postgres 15. It creates a problem for us, because to run our own postgres database we have to run some migrations scripts for supabase to work with it.

We played around with those migrations and made them compatible with Postgres 13 and also created a docker image with Postgres 13 and Apache AGE extension.

## How to use it
Follow this step by step guide to run your own Supabase Postgres with Apache AGE along with other supabase required services.

### 1. Clone this repository
```bash
git clone git@github.com:auxcube/supabase-postgres-age.git
```

### 2. Create a .env file
```bash
cd supabase-postgres-age
cp .env.example .env
```

### 3. Create a docker image
```bash
docker build -t supabase/postgresql_with_age .
```

### 4. Run all services using docker-compose
```bash
docker-compose up -d
```

## Auxcube
[Auxcube](https://auxcube.com/) is your premium software engineering services and consultancy partner. Our energetic and experienced people collaborate closely with you to fulfill your software development, engineering team augmentation, and team-building needs.

