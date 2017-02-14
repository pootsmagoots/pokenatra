# require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`

require "pg"  # postgres db library
require 'sinatra'
require 'sinatra/reloader'
require "active_record" # the ORM
require "pry"   # for debugging


require_relative "db/connection" # require the db connection file that connects us to PSQL, prior to loading models
require_relative "models/pokemon" # require the Pokemon class definition that we defined in the models/artist.rb file
require_relative "models/trainer"


get '/pokemons' do
  @pokemons = Pokemon.all
  erb :index
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :show
end

get "/pokemons/:id/edit" do
  @pokemon = Pokemon.find(params[:id])
   erb :edit
end

# get "/" do
#   "hello"
# end
# This will put us into a state of the pry REPL, in which we've established a connection
# with the tunr_db database and have defined the Artist Class as an
# ActiveRecord::Base class.
# binding.pry


puts "end of application"
