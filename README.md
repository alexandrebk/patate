# Patate

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Technical stack

Patate is developped using Ruby on Rails.

### Ruby version (2.7.5)

To install it with `rbenv` please run

```sh
$ rbenv install 2.7.5
```

### Rails version: 7.0.4

### Database: SQLite

## Setup

```sh
git clone git@github.com:alexandrebk/patate.git
cd patate
bundle install
yarn install
bin/rails db:drop db:create db:migrate db:seed
```

## Solution

```sh
bin/rails server
```

### Première API

[Lien](http://localhost:3000/api/potato_quotations/2022-11-12/history)

### Deuxième API

[Lien](http://localhost:3000/api/potato_quotations/2022-11-12/maximum_gain)
