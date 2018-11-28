# A method that returns the sum of two integers

# Given two integers.
# set the result to the sum of the two integers
# return the result

START
# Given two integers a, b

SET num = a
SET num2 = b

SET result = num + num2
return result

END

# A method that takes an array of strings, and returns a string that is all those strings concatenated together

# Given an array of strings
# create an empty string
# create an iterator
# for each item in the array add it to the new string update the iterator
# return the new string

START

# Given an array of strings

SET newstring = ""
SET count = 0

While count < array.size
SET newstring += array element
add one to count
return newstring

END

# A method that takes and array of integers, and returns a new array with every other element

# Given and array of integers
# Iterate through each item in the array
# Save the first value to a new array and skip the next, saving every other element. 
# Return the new array

START 

# Given an array of integers called numbers

SET iterator = 1

WHILE iterator <= length of numbers
  SET current_number = value within numbers at space of iterator
  IF iterator is even 
    go to the next interation
  ELSE
    new_array = [current_number]
    iterator = iterator + 1

  RETURN new_array

END

