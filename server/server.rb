# server.rb
require 'sinatra'
require "sinatra/namespace"
require 'mongoid'
require './models/tiny_url'
require './serializers/tiny_url_serializer'
require './helpers'
require 'dotenv'

# DB Setup
Mongoid.load! "mongoid.config"

# Load ENV Variables
Dotenv.load('.env')

before do
  content_type 'application/json'
end

# Endpoints
get '/' do
  response.headers['Location'] = ENV['WEB_CLIENT_URL']
  status 301
end

get '/:id' do |id|
  halt_if_not_found!
  response.headers['Location'] = tiny_url.url
  status 301
end

post '/' do
  url_to_create = json_params["url"]
  existing_url = TinyUrl.find_by_url(url_to_create)
  unless existing_url.any?
    new_url = TinyUrl.new
    new_url.url = url_to_create
    new_url.tiny_id = SecureRandom.hex(4)
    new_url.tiny_url = "#{base_url}/#{new_url.tiny_id}"
    halt 422, serialize(new_url) unless new_url.save
    serialize(new_url)
  else
    serialize(existing_url.first)
  end
end