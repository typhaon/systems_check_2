require 'csv'

def export_csv(filename)
  teams = []
  CSV.foreach(filename, headers: true) do |row|
    teams << row.to_hash
  end
  teams
end

teams = export_csv('./public/nfl_data.csv')

puts teams
