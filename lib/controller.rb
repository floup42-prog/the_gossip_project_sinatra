require "gossip"

#cette partie sers à controler elle vas chercher les ficher à afficher pour l'utilisateur ou les action à faire comme mettre un contenu dans un CSV

class ApplicationController < Sinatra::Base
  get "/" do
    erb :index
  end
  get "/gossips/new/" do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
  end
end