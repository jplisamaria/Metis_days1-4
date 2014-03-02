require 'csv'

#building database of artists and song
database = Hash.new { |hash,key| hash[key] = [] }
CSV.foreach("music.csv", { headers: true }) do |row|
  artist = row["Artist"]
  song_name = row["Name"]
  database[artist] << song_name
end 

def puts_header(artist_name)
  artist_intro = "Catalogue of "
  title = "* #{artist_intro}#{artist_name} *"
  bar = "*" * title.length
  puts
  puts bar
  puts title
  puts bar
end

def puts_songs(music_database, artist)
  puts music_database[artist].sort
end

#Main program
puts "Enter an artist's name to a list of their songs or enter and empty line to quit program"
print "Query: "
artist = gets.strip

while artist != "" do
  if database.has_key?(artist)
    puts_header(artist)
    puts_songs(database, artist)  
  else
    puts "Artist not found."
  end 
  puts
  print "Query: "
  artist = gets.strip
end

#By Rich & Lisa Maria
