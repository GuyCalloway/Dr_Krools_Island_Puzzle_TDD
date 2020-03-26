# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/environment_builder'
require_relative './lib/game_runner'

class DrKroolsIsland < Sinatra::Base
  enable :sessions

  before do
    @game = session[:game]
  end

  get '/' do
    erb :home
  end

  post '/start' do
    session[:number1] = params[:participants].to_i
    redirect '/game'
  end

  get '/game' do
    session[:game] = Game.new(Environment.new(session[:number1]))
    @game = session[:game]
    erb :game
  end

  post '/game' do
    @game.take_turn(params[:move])
    redirect '/outcome'
  end

  post '/info' do
    session[:number_count] = params[:number]
    session[:colour_count] = params[:colour]
    redirect '/details'
  end

  # get "/outcome" do
  #   @winner = @game.winner
  #   erb :outcome
  # end

  run! if app_file == $PROGRAM_NAME
end
