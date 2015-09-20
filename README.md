# SimpleRESTApp

This is my little playground where I try out **Sinatra** framework for simple REST application.

### Installation for OS X

You will need `gem` and `brew` on your system
* https://rubygems.org/pages/download
* http://brew.sh/

```sh
$ gem install bundler
$ brew install mongodb
$ bundle
$ mkdir -p data/db
$ mongod --dbpath data/db
$ rackup --port 9999
```

* Create new user: `curl -X POST -d 'login=user1&password=password1' http://127.0.0.1:9999/new`
* List users: `curl -X GET http://127.0.0.1:9999/users`
* Login: `curl -X POST -d 'login=user1&password=password1' http://127.0.0.1:9999/login`
