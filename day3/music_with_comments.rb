require 'csv'
require 'pp'

database = {}
CSV.foreach("music.csv", { headers: true }) do |row|
  artist = row["Artist"]
  song_name = row["Name"]
  if database.keys.include?(artist)
    database[artist] << song_name
  else
    database[artist] = [song_name] #creates a hash with the string
                                   #artist as a key, with song_name
                                   #as it's first element
  end
end
pp database