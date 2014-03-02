puts "Welcome to my flashcards app"
puts "-" * 28

deck = []
deck_file = File.open("deck.txt", "r")
card_count = deck_file.gets.to_i
card_count.times do
  front = deck_file.gets.strip
  back = deck_file.gets.strip
  deck << { front: front, back: back}
end

deck.each do |card|
  puts "Guess the answer to #{card[:front]}: "

  correct_guess = false

  3.times do
    print "> "
    guess = gets.strip

    if guess.downcase == card[:back].downcase
      correct_guess = true
      break
    end
  end


  if correct_guess
    puts "Correct!"
  else  
    puts "Sorry, it was actually #{card[:back]}."
  end
end