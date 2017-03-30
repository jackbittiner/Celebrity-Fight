require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    @game = Game.create(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player_1_name = @game.player_name(@game.player_1)
    @player_2_name = @game.player_name(@game.player_2)
    @player_2_fame_points = @game.player_2.fp
    @player_1_fame_points = @game.player_1.fp
    erb :play
  end

  post '/attack' do
    @game = Game.instance
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    $player_1_attack = params[:player_1_attack]
    if $player_1_attack != "is filled with rage as you restore your celebrity status by adopting a village of African children"
      @game.attack(@player_2, $player_1_attack)
    else
      @game.restore_points(@player_1, $player_1_attack)
    end
    if @game.player_2.fp <= 0
      redirect '/win'
    else
      redirect '/fight'
    end
  end

  get '/fight' do
    @game = Game.instance
    @player_1_name = @game.player_name(@game.player_1)
    @player_2_name = @game.player_name(@game.player_2)
    @player_2_fame_points = @game.player_2.fp
    @player_1_fame_points = @game.player_1.fp
    erb :fight
  end

  get '/play2' do
    @game = Game.instance
    @player_1_name = @game.player_name(@game.player_1)
    @player_2_name = @game.player_name(@game.player_2)
    @player_1_fame_points = @game.player_1.fp
    @player_2_fame_points = @game.player_2.fp
    erb :play2
  end

  post '/attack2' do
    @game = Game.instance
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    $player_2_attack = params[:player_2_attack]
    if $player_2_attack != "is filled with rage as you restore your celebrity status by adopting a village of African children"
      @game.attack(@player_1, $player_2_attack)
    else
      @game.restore_points(@player_2, $player_2_attack)
    end
    if @game.player_1.fp <= 0
      redirect '/win2'
    else
      redirect '/fight2'
    end
  end

  get '/fight2' do
    @game = Game.instance
    @player_1_name = @game.player_name(@game.player_1)
    @player_2_name = @game.player_name(@game.player_2)
    @player_1_fame_points = @game.player_1.fp
    @player_2_fame_points = @game.player_2.fp
    erb :fight2
  end

  get '/win' do
    @game = Game.instance
    @player_1_name = @game.player_name(@game.player_1)
    @player_2_name = @game.player_name(@game.player_2)
    erb :win
  end

  get '/win2' do
    @game = Game.instance
    @player_1_name = @game.player_name(@game.player_1)
    @player_2_name = @game.player_name(@game.player_2)
    erb :win2
  end


    # start the server if ruby file executed directly
    run! if app_file == $0

end
