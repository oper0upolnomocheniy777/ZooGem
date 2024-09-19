require_relative '../lib/zoo_generator/animal_generator'

# Выводим заголовок для AnimalGenerator
puts "=== AnimalGenerator ==="

# Генерируем и выводим случайное животное
puts "Случайное животное: #{ZooGenerator::AnimalGenerator.random_animal}"

# Генерируем и выводим случайного хищника
puts "Случайный хищник: #{ZooGenerator::AnimalGenerator.random_predator}"

# Генерируем и выводим случайного травоядного
puts "Случайное травоядное: #{ZooGenerator::AnimalGenerator.random_herbivore}"

# Выводим заголовок для типов животных
puts "\n=== Типы животных ==="

# Перебираем все типы животных и выводим случайное животное для каждого типа
ZooGenerator::AnimalGenerator.animal_types.each do |type|
  puts "Случайный #{type.capitalize}: #{ZooGenerator::AnimalGenerator.random_by_type(type)}"
end

# Выводим заголовок для хищников
puts "\n=== Хищники ==="
# Выводим всех хищников, разделенных запятой
puts ZooGenerator::AnimalGenerator.all_predators.join(', ')

# Выводим заголовок для травоядных
puts "\n=== Травоядные ==="
# Выводим всех травоядных, разделенных запятой
puts ZooGenerator::AnimalGenerator.all_herbivores.join(', ')
