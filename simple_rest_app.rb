require 'sinatra'
require 'json'

class SimpleRESTApp < Sinatra::Base
  set :data do
    JSON.parse(File.read('users.json'))
  end

  get '/users' do
    content_type :json
    SimpleRESTApp.data.to_json
  end
end
