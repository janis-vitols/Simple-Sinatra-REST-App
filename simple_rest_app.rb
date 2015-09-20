require 'sinatra'
require 'json'
require 'mongoid'

require './lib/user.rb'

Mongoid.load!('mongoid.yml')

class SimpleRESTApp < Sinatra::Base

  post '/new' do
    user = User.new(params)
    code = user.save ? 200 : 400

    status code
  end

  get '/users' do
    content_type :json

    User.all.to_json
  end

  post '/login' do
    user = User.where(params)[0]
    code = user ? 200 : 400

    status code
  end
end
