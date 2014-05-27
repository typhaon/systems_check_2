require 'sinatra'
require 'csv'
require 'pry'

game_data =[
            {home_team: "Patriots", away_team: "Broncos", home_score: 7, away_score: 3},
            {home_team: "Broncos", away_team: "Colts", home_score: 3, away_score: 0},
            {home_team: "Patriots", away_team: "Colts", home_score: 11, away_score: 7},
            {home_team: "Steelers", away_team: "Patriots", home_score: 7, away_score: 21}
           ]
#List of unique teams

def unique_teams(game_data)
  unique_teams=[]
  game_data.each do |game|
    unique_teams << game[:home_team]
    unique_teams << game[:away_team]
  end
  unique_teams.uniq
end

#Evaluates winner and loser of each game.

def check_scores(game)
  if game[:home_score] > game[:away_score]
    winner = game[:home_team]
     loser = game[:away_team]
  else
     loser = game[:home_team]
     winner = game[:away_team]
  end
  return [winner, loser]
end

#Wanted to create method to then tally results from check_scores in a hash of hashes(?)
#Have not been successful.



team_records = {}
team_records = unique_teams(game_data)




####
####

#The ultimate structure I want is something like...

results = []

game_data.each do |game|
  results = check_scores(game)
  #update leaderboard here
end

# then i'd just pull data for main page.
# had not figured sort, yet.





#Was working on the non-core part.
#################

new_array=[]
game_data.each do |game|
  if game[:home_team] == "Patriots"
    new_array << {game[:home_team] => game[:home_score].to_i, game[:away_team] => game[:away_score].to_i}
  elsif game[:away_team] == "Patriots"
    new_array << {game[:home_team] => game[:home_score].to_i, game[:away_team] => game[:away_score].to_i}
  else
  end
end

puts new_array

##################

# puts new_array




get '/leaderboard' do


@team_list = unique_teams(game_data)

erb :index
end


get '/leaderboard/:team_name' do

erb :show
end
