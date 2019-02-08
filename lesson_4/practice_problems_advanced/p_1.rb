flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flinstones_hash = {}

flintstones.each_with_index do |key, value|
  flinstones_hash[key] = value
end
p flinstones_hash
