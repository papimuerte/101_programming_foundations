
def fib(first_num, second_num)
  limit = 15

  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# limit is not in scope for the method. Add limit to method to resolve.
