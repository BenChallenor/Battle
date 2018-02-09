require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post "/names" do
    # session[:player_1] = params[:player_1]
    # session[:player_2] = params[:player_2]
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    # $player_1 = Player.new(params[:player_1])
    # $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get "/play" do
    @attacker = $game.attacker
    @victim = $game.victim
    erb(:play)
  end

  get "/attack" do
    @attacker = $game.attacker
    @victim = $game.victim
    $game.attack
    erb(:attack)
  end

  run! if app_file == $0

end
