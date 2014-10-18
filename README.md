## mentoring

Connecting mentors and students.



## Getting started

Install Ruby 2.1.2

### Using [rvm](https://rvm.io/rvm/install)

```bash
rvm install 2.1.2
```

### Using [rbenv](https://github.com/sstephenson/rbenv)

```bash
rbenv install 2.1.2
rbenv global 2.1.2
```

### Install the gems

```bash
gem install bundler
bundle install --without production
```

### Setup the database

```bash
bundle exec rake db:create
```

### Run the tests
```bash
bundle exec rake
```

## Third Party Libraries
- [haml](http://haml.info/)
- [bootstrap](http://getbootstrap.com/)
- [bootstrap-sass](https://github.com/twbs/bootstrap-sass)

### Testing
- [rspec-rails](https://github.com/rspec/rspec-rails)
- [capybara](https://github.com/jnicklas/capybara)

# Team
- Despo Pentara
- Rosa Fox
- Kriszta Matyi
- Dorothy Wingrove
