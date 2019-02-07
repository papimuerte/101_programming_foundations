['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# Iterates the given block for each element with an arbitrary object, obj, and returns obj

#takes the first element of value and assigns value to it. Returns the new obj
# {"a"=>"ant", "b"=>"bear", "c"=>"cat"}
