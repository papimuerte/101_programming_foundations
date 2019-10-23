statement = "The Flintstones Rock"

output = { }

letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_times = statement.scan(letter).count
  output[letter] = letter_times if letter_times > 0
end
p output

