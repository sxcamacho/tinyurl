# server.rb
require 'sinatra'
require 'sinatra/cross_origin'
require 'mongoid'
require './models/tiny_url'
require './models/statistic'
require './serializers/tiny_url_serializer'
require './helpers'
require 'dotenv'

# DB Setup
Mongoid.load! "mongoid.config"

# Load ENV Variables
Dotenv.load('.env')

set :bind, '0.0.0.0'
configure do
  enable :cross_origin
end

before do
  content_type 'application/json'
  response.headers['Access-Control-Allow-Origin'] = '*'
end

# Endpoints
get '/' do
  response.headers['Location'] = ENV['WEB_CLIENT_URL']
  status 301
end

get '/:id' do |id|
  cache_control :no_cache
  begin 
    halt_if_not_found!
    # Save Statistic
    statistic = Statistic.new
    statistic.tiny_id = tiny_url.tiny_id
    statistic.date = DateTime.now
    statistic.save!
  rescue => e
    puts e.message
    status 500
  else
    response.headers['Location'] = tiny_url.url
    status 301
  end
end

post '/data/shorten' do
  url_to_create = json_params["url"]
  existing_url = TinyUrl.find_by_url(url_to_create)
  unless existing_url.any?
    new_url = TinyUrl.new
    new_url.url = url_to_create
    new_url.tiny_id = SecureRandom.hex(4)
    new_url.tiny_url = "#{base_url}/#{new_url.tiny_id}"
    halt 422, serialize(new_url) unless new_url.save
    serialize(new_url, 0)
  else
    count = Statistic.find_by_tiny_id(existing_url.first.tiny_id).count
    serialize(existing_url.first, count)
  end
end

options "*" do
  response.headers["Allow"] = "GET, POST, OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
  response.headers["Access-Control-Allow-Origin"] = "*"
  200
end