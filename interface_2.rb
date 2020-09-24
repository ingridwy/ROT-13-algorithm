require_relative "character"
puts "what's your sentence?"
sentence = gets.chomp
puts"what's your rotation number(between 1 to 25)?"
number = gets.chomp
your_sentence = convert(sentence, number)


puts "#{your_sentence}"
