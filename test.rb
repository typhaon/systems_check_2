require 'pry'

game_data =[
            {home_team: "Patriots", away_team: "Broncos", home_score: 7, away_score: 3},
            {home_team: "Broncos", away_team: "Colts", home_score: 3, away_score: 0},
            {home_team: "Patriots", away_team: "Colts", home_score: 11, away_score: 7},
            {home_team: "Steelers", away_team: "Patriots", home_score: 7, away_score: 21}
           ]


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


def update_leader_board(results)

  winner = results[0]
  loser = results[1]

  w = team_stats["Win"]
  team_stats["Win"] = w + 1

  l = team_stats["Loss"]
  team_stats["Loss"] = l + 1
end



results = []

game_data.each do |game|
  results = check_scores(game)
end






##################

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






