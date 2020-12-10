# README

## Requisites

Before running anything pease ensure you have the following properly installed in your machine.

```
Ruby 2.7.2
Rails 6.1
Postgres > 12
```

I recommend you installing rbenv to handle ruby versions, please follow the instructions https://github.com/rbenv/rbenv

Once you have ruby installed install the gems `bundle` and `rails`.

```
gem install bundle
```

```
gem install rails
```

## Setup

Clone the repo, then run inside the root folder of the repository.

Install the gemos for the proyect

```bash
$ bundle install
```

Install the javascript dependencies:

```bash
$ yarn install
```

Setup database:

```bash
$ rails db:create db:migrate
```

Run the server:

```bash
$ rails s
```

And in another shell, compile the assets (JS and CSS) with the command

```bash
$ ./bin/webpack-dev-server
```

If all went well, you are ready. Go to http://localhost:3000
