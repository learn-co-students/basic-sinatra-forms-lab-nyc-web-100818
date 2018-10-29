require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
      erb :newteam
    end

    post '/team' do
      @team = params["name"]
      @coach = params["coach"]
      @point_guard = params["pg"]
      @shooting_guard = params["sg"]
      @small_forward = params["sf"]
      @power_forward = params["pf"]
      @center = params["c"]
      @a_team = [@team, @coach, @point_guard, @shooting_guard, @small_forward, @center]
      erb :team
    end

end
