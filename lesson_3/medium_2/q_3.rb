def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# "My string looks like this now: pumpkins A non mutating operation is used on this string
# "My array looks like this now: [pumpkins, rutabaga]" The array is mutated by the << operation
# both intialize a variable but the array << operation mutates the original array