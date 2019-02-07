#  Score lyrics project (backend)

Training skills project, sample code.
Applications for viewing and rating lyrics.

## Run the app:

### 1. Clone the repo

- ```git clone...```
- ```cd score-lyrics-backend```

### 2. Install Ruby 2.5.1

[Install RVM](https://rvm.io/rvm/install)

After installing go to project directory and install 2.5.1 ruby version
- ```rvm install 2.5.1```

### 3. Install PostgreSQL

Example for Ubuntu:
- ```sudo apt-get update```
- ```sudo apt-get install postgresql postgresql-contrib```
- ```sudo -u postgres psql```

Create a user and grant access on database:
- ```CREATE USER user2 WITH password '123456'```
- ```CREATE DATABASE '"song-lyrics-test";```
- ```CREATE DATABASE '"song-lyrics-prod";```
- ```ALTER USER user2 createdb;```

### 4. Install gems

- ```gem install bundler```
- ```bundle install```

#### 5. Create the databases

- ```bundle exec rake db:setup```

## Features

* [ActiveModel::Serializer](https://github.com/rails-api/active_model_serializers) - Fast serializer
* [FactoryBot](https://github.com/thoughtbot/factory_bot) - A library for setting up Ruby objects as test data.
* [Faker](https://github.com/stympy/faker) A library for generating fake data .
* [Rubocop](http://rubocop.readthedocs.io) - A Ruby static code analyzer, based on the community [Ruby style guide](https://github.com/bbatsov/ruby-style-guide).
