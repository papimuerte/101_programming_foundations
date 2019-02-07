[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# Passes each element of the collection to the given block. The method returns
# true if the block ever returns a value other than false or nil. If the block
# is not given, Ruby adds an implicit block of { |obj| obj } that will cause
# any? to return true if at least one of the collection members is not false or nil.


# true