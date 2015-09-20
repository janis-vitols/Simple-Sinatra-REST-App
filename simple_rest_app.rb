require 'sinatra'
require 'json'
require 'mongoid'

Mongoid.load!('mongoid.yml')

class SimpleRESTApp < Sinatra::Base
  set :data do
    JSON.parse(File.read('users.json'))
  end

  get '/users' do
    content_type :json
    SimpleRESTApp.data.to_json
  end

  post '/login' do
    code = SimpleRESTApp.data.include?(params) ? 200 : 400
    status code
  end
end
