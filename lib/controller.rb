# $:.unshift File.expand_path("./../lib", __FILE__)
# require 'router.rb'

class ApplicationController < Sinatra::Base
  get "/" do
    erb :index
  end
  get "/gossips/new/" do
    erb :new_gossip
  end

  post "/gossips/new/" do
    Gossip.new(author, content).save
  end
end
