# ruby-getting-started

A barebones Rails app, which can easily be deployed to Heroku.

This application supports the [Getting Started on Heroku with Ruby](https://devcenter.heroku.com/articles/getting-started-with-ruby) article - check it out.

## Running Locally

Make sure you have Ruby installed.  Also, install the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) (formerly known as the Heroku Toolbelt).

```sh
$ git clone git@github.com:heroku/ruby-getting-started.git
$ cd ruby-getting-started
$ bundle install
$ bundle exec rake db:create db:migrate
$ heroku local
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

Using resources for this example app counts towards your usage. [Delete your app](https://devcenter.heroku.com/articles/heroku-cli-commands#heroku-apps-destroy) and [database](https://devcenter.heroku.com/articles/heroku-postgresql#removing-the-add-on) as soon as you are done experimenting to control costs.

By default, apps use Eco dynos if you are subscribed to Eco. Otherwise, it defaults to Basic dynos. The Eco dynos plan is shared across all Eco dynos in your account and is recommended if you plan on deploying many small apps to Heroku. Learn more about our low-cost plans [here](https://blog.heroku.com/new-low-cost-plans).

Eligible students can apply for platform credits through our new [Heroku for GitHub Students program](https://blog.heroku.com/github-student-developer-program).

Ensure you're in the correct directory:

```sh
$ ls
Gemfile		Procfile	Rakefile	app.json	config		db		log		public		tmp
Gemfile.lock	README.md	app		bin		config.ru	lib		package.json	test		vendor
```

You should see a `Gemfile` file. Then run:

```sh
$ heroku create
$ git push heroku main
$ heroku run rake db:migrate
$ heroku open
```

or

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)
