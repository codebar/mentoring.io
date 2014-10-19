[ ![Codeship Status for railsrumble/r14-team-256](https://www.codeship.io/projects/cc623f40-2f6e-0131-16cc-02924afac62f/status)](https://www.codeship.io/projects/9483)

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
- [simple_form](https://github.com/plataformatec/simple_form)
- [devise](https://github.com/plataformatec/devise)
- [omniauth-github](https://github.com/intridea/omniauth-github)
- [font-mfizz](https://github.com/mfizz-inc/font-mfizz)

### Testing
- [rspec-rails](https://github.com/rspec/rspec-rails)
- [capybara](https://github.com/jnicklas/capybara)

# Team
- Despo Pentara
- Rosa Fox
- Kriszta Matyi
- Dorothy Wingrove
