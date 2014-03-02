puts "Enter a list of names followed by a blank line to start the lottery."
names = []

print "> "
name = gets.strip

while name != "" do  
  names << name
  print "> "
  name = gets.strip
end

winner = names.sample
puts "\n#{winner} is the winner!"
