[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => hi

# Actually returns [1, 2, 3]
# select returns a new array of the original elements
