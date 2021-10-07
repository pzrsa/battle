require "sinatra/base"
require "sinatra/reloader"
require "./lib/player"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect("/play")
  end

  get "/play" do
    erb(:play)
  end

  get "/attack" do
    erb(:attack)
  end
end
