require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    $game = Game.new(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_name($game.player_1)
    @player_2_name = $game.player_name($game.player_2)
    @player_2_fame_points = $game.player_2.fp
    erb :play
  end

  post '/attack' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $player_1_attack = params[:player_1_attack]
    $game.attack(@player_2, $player_1_attack)
    redirect '/fight'
  end

  get '/fight' do
    # @player_1_attack = $game.attack($game.player_1, params[:player_1_attack])
    @player_1_name = $game.player_name($game.player_1)
    @player_2_name = $game.player_name($game.player_2)
    @player_2_fame_points = $game.player_2.fp
    erb :fight
  end

  get '/play2' do
    @player_1_name = $game.player_name($game.player_1)
    @player_2_name = $game.player_name($game.player_2)
    @player_1_fame_points = $game.player_1.fp
    erb :play2
  end

  post '/attack2' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $player_2_attack = params[:player_2_attack]
    $game.attack(@player_1, $player_2_attack)
    redirect '/fight2'
  end

  get '/fight2' do
    # @player_1_attack = $game.attack($game.player_1, params[:player_1_attack])
    @player_1_name = $game.player_name($game.player_1)
    @player_2_name = $game.player_name($game.player_2)
    @player_1_fame_points = $game.player_1.fp
    erb :fight2
  end


    # start the server if ruby file executed directly
    run! if app_file == $0

end
