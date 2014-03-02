def thrice
  yield 1
  yield 2
  yield 3
end

thrice do |number|
  puts "Hello World: #{number}"
end

puts "-" * 20

thrice do |number|
  puts "Goodbye."
end
