def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# number % divisor is dividing the two numbers and returning the remainder
# The factors on the last line is used to return the results otherwise this would return nil
