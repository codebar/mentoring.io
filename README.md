## mentoring
[![Build Status](https://travis-ci.org/codebar/mentoring.io.svg?branch=master)](https://travis-ci.org/codebar/mentoring.io)
[![Code Climate](https://codeclimate.com/github/codebar/mentoring.io/badges/gpa.svg)](https://codeclimate.com/github/codebar/mentoring.io)
[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/codebar/mentoring.io?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Connecting mentors and students.

## Getting started

Install Ruby 2.1.5

### Using [rvm](https://rvm.io/rvm/install)

```bash
rvm install 2.1.5
```

### Using [rbenv](https://github.com/sstephenson/rbenv)

```bash
rbenv install 2.1.5
rbenv global 2.1.5
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

### Enable Github authentication

Create an application at `https://github.com/settings/applications/new` with `http://localhost:3000` as the `Homepage URL` and `http://localhost:3000/members/auth/github/callback` as the `Authorization callback URL`.

Once your development application is setup, create a file named .env in the root of the application folder with the GitHub key and secret like so:

```bash
GITHUB_KEY=YOUR_KEY
GITHUB_SECRET=YOUR_SECRET
```
Note: Windows doesn't like creating a file named .env so do the following from a cmd prompt in your application folder:

```bash
echo GITHUB_KEY=YOUR_KEY >> .env
echo GITHUB_SECRET=YOUR_SECRET >> .env
```

### Run the tests
```bash
bundle exec rake
```

## Third Party Libraries
- [haml](http://haml.info/)
- [bootstrap](http://getbootstrap.com/)
- [bootstrap-sass](https://github.com/twbs/bootstrap-sass)
- [font-awesome](http://fortawesome.github.io/Font-Awesome/)
- [simple_form](https://github.com/plataformatec/simple_form)
- [devise](https://github.com/plataformatec/devise)
- [omniauth-github](https://github.com/intridea/omniauth-github)
- [font-mfizz](https://github.com/mfizz-inc/font-mfizz)
- [twilio-ruby](https://www.twilio.com)
- [sass-rails](https://github.com/rails/sass-rails)

### Testing
- [rspec-rails](https://github.com/rspec/rspec-rails)
- [capybara](https://github.com/jnicklas/capybara)

# Team
- [Despo Pentara](http://github.com/despo)
- [Rosa Fox](http://github.com/Rosa-Fox)
- [Kriszta Matyi](http://github.com/matyikriszta)
- [Dorothy Wingrove](http://github.com/dorothyjane)
