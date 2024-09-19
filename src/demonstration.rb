require_relative '../lib/zoo_generator/animal_generator'

puts "=== AnimalGenerator ==="
puts "Random Animal: #{ZooGenerator::AnimalGenerator.random_animal}"
puts "Random Predator: #{ZooGenerator::AnimalGenerator.random_predator}"
puts "Random Herbivore: #{ZooGenerator::AnimalGenerator.random_herbivore}"

puts "\n=== Animal Types ==="
ZooGenerator::AnimalGenerator.animal_types.each do |type|
  puts "Random #{type.capitalize}: #{ZooGenerator::AnimalGenerator.random_by_type(type)}"
end

puts "\n=== Predators ==="
puts ZooGenerator::AnimalGenerator.all_predators.join(', ')

puts "\n=== Herbivores ==="
puts ZooGenerator::AnimalGenerator.all_herbivores.join(', ')
