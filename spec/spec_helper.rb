RACK_ENV = "test"
require File.join(File.dirname(__FILE__), "..", "lyrics_api.rb")
require "rack/test"
require "rspec"

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end
