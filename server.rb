require 'sinatra'
require 'csv'
require 'pry'

game_data =[
            {home_team: "Patriots", away_team: "Broncos", home_score: 7, away_score: 3},
            {home_team: "Broncos", away_team: "Colts", home_score: 3, away_score: 0},
            {home_team: "Patriots", away_team: "Colts", home_score: 11, away_score: 7},
            {home_team: "Steelers", away_team: "Patriots", home_score: 7, away_score: 21}
           ]

def unique_teams(game_data)
  game_data.map {|game| game[:away_team], game[:home_team]}.uniq
end



get '/leaderboard' do

# game_data =[
#             {home_team: "Patriots", away_team: "Broncos", home_score: 7, away_score: 3},
#             {home_team: "Broncos", away_team: "Colts", home_score: 3, away_score: 0},
#             {home_team: "Patriots", away_team: "Colts", home_score: 11, away_score: 7},
#             {home_team: "Steelers", away_team: "Patriots", home_score: 7, away_score: 21}
#            ]


@team_list = unique_teams(game_data)

binding.pry
erb :show
end


