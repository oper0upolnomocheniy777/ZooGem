module ZooGenerator
  module AnimalGenerator
    def self.animal_types
      ANIMALS.map { |animal| animal['type'] }.uniq
    end

    def self.random_by_type(type)
      animals = ANIMAL_DATA.select { |animal| animal[:type] == type }
      random_animal = animals.sample
      "#{random_animal[:name]} (#{random_animal[:species]})"
    end
  end
end
