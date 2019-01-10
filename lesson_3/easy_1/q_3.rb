advice = "Few things in life are as important as house training your pet dinosaur."

p advice.gsub!('important', 'urgent')

# Could also use sub! as there is only one occurance of the word
# important and doesn't specify all occurrances.
