100.times do |number|
  target = number +1
  if target % 15 == 0
    puts "FizzBuzz"
  elsif target % 3 == 0
    puts "Fizz"
  elsif target % 5 == 0
    puts "Buzz"
  else
    puts target
  end
end