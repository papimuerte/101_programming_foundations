flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index do |name|
  puts name[0, 2] == "Be"
end
