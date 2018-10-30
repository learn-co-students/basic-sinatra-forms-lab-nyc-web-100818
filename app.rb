require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @out = ["Team Name: ",
    "Coach: ",
    "Point Guard: ",
     "Shooting Guard: ",
     "Power Forward: ",
     "Center: "]
    @params = params
    erb :team
  end

end



# App
#   GET /newteam
#     sends a 200 status code (FAILED - 1)
#     renders basketball team form (FAILED - 2)
#   POST /team
#     does not return Sinatra error page (FAILED - 3)
#     displays the basketball team name in the browser
#     displays the coach's name in the browser
#     displays the point guard's name in the browser
#     displays the power forward's name in the browser
#     displays the shooting gaurd's name in the browser
#     displays the center's name in the browser
