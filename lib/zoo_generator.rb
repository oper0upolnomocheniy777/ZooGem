module ZooGenerator
  module AnimalGenerator
    def self.animal_types
      ANIMALS.map { |animal| animal['type'] }.uniq
    end
  end
end
