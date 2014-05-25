require 'pry'

# def unique_teams(game_data)
#   unique_teams=[]
#   game_data.each do |game|
#     unique_teams << game[:home_team]
#     unique_teams << game[:away_team]
#   end
#   unique_teams
#   unique_teams.uniq
# end







game_data =[
            {home_team: "Patriots", away_team: "Broncos", home_score: 7, away_score: 3},
            {home_team: "Broncos", away_team: "Colts", home_score: 3, away_score: 0},
            {home_team: "Patriots", away_team: "Colts", home_score: 11, away_score: 7},
            {home_team: "Steelers", away_team: "Patriots", home_score: 7, away_score: 21}
           ]


##################

new_array=[]
game_data.each do |game|
  new_array << {game[:home_team] => game[:home_score], game[:away_team] => game[:away_score]}
end

# puts new_array

##################

new_array = new_array.values.max


puts new_array





