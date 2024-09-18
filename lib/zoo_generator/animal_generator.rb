require 'csv'

module ZooGenerator
  module AnimalGenerator
    ANIMALS_FILE = File.expand_path('../data/animals.csv', __dir__)
    ANIMALS = CSV.read(ANIMALS_FILE, headers: true)

    def self.random_animal
      animal = ANIMALS.sample
      "#{animal['name']} (#{animal['type']})"
    end

    def self.random_predator
      predator = ANIMALS.select { |animal| animal['class'] == 'predator' }.sample
      "#{predator['name']} (#{predator['type']})"
    end

    def self.random_herbivore
      herbivore = ANIMALS.select { |animal| animal['class'] == 'herbivore' }.sample
      "#{herbivore['name']} (#{herbivore['type']})"
    end

    def self.random_by_type(animal_type)
      animal = ANIMALS.select { |animal| animal['type'].casecmp(animal_type) == 0 }.sample
      "#{animal['name']} (#{animal['type']})"
    end

    def self.animal_types
      ANIMALS.map { |animal| animal['type'] }.uniq
    end
  end
end
