require 'rspec'
require_relative '../lib/zoo_generator/animal_generator'

RSpec.describe ZooGenerator::AnimalGenerator do
  describe '#random_animal' do
    it 'returns a random animal' do
      expect(ZooGenerator::AnimalGenerator.random_animal).to match(/\w+\s+\(\w+\)/)
    end
  end

  describe '#random_predator' do
    it 'returns a random predator' do
      expect(ZooGenerator::AnimalGenerator.random_predator).to match(/\w+\s+\(\w+\)/)
    end
  end

  describe '#random_herbivore' do
    it 'returns a random herbivore' do
      expect(ZooGenerator::AnimalGenerator.random_herbivore).to match(/\w+\s+\(\w+\)/)
    end
  end

  describe '#random_by_type' do
    it 'returns a random animal of specified type' do
      animal_type = 'mammal'
      expect(ZooGenerator::AnimalGenerator.random_by_type(animal_type)).to match(/\w+\s+\(\w+\)/)
    end
  end

  describe '#animal_types' do
    it 'returns all unique animal types' do
      expect(ZooGenerator::AnimalGenerator.animal_types).to include('mammal', 'bird', 'reptile')
    end
  end
end
