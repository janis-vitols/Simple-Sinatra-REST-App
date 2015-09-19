# Check code coverage
require 'simplecov'
SimpleCov.start

require File.join(File.dirname(__FILE__), '..', '..', 'simple_rest_app')
require 'pry'
require 'rack/test'

# SimpleRESTApp helper module
# Rack-Test needs to know which Rack application it should talk to
module AppHelper
  # Rack-Test expects the app method to return application Class
  def app
    SimpleRESTApp
  end
end

# To be able to use Rack-Test’s helper methods
# (Rack::Test::Methods) HTTP simulation methods like get
World(Rack::Test::Methods, AppHelper)
