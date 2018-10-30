require 'sinatra/base'
# CONTROLLER
class App < Sinatra::Base

  get '/newteam' do # route that response to a GET req at /newteam
    erb :newteam # erb template that gets rendered in the /newteam route
  end

  # Post route and action below
  post '/team' do
  @name = params[:name]
  @coach = params[:coach]
  @pg = params[:pg]
  @sg = params[:sg]
  @sf = params[:sf]
  @pf = params[:pf]
  @c = params[:c]

  erb :team
  end

end # end of App class
