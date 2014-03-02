number = rand(10) + 1

puts "Guess my number, 1-10."
print "> "
guess = gets.to_i

if guess == number
  puts "You are correct!"
else 
  puts "Wrong! The answer was #{number}"
end