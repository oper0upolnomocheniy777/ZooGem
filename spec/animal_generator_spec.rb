require 'rspec'
require_relative '../lib/zoo_generator/animal_generator'

RSpec.describe ZooGenerator::AnimalGenerator do
  # Тестируем метод random_animal
  describe '#random_animal' do
    it 'возвращает случайное животное' do
      expect(ZooGenerator::AnimalGenerator.random_animal).to match(/\w+\s+\(\w+\)/)
    end
  end

  # Тестируем метод random_predator
  describe '#random_predator' do
    it 'возвращает случайного хищника' do
      expect(ZooGenerator::AnimalGenerator.random_predator).to match(/\w+\s+\(\w+\)/)
    end
  end

  # Тестируем метод random_herbivore
  describe '#random_herbivore' do
    it 'возвращает случайного травоядного' do
      expect(ZooGenerator::AnimalGenerator.random_herbivore).to match(/\w+\s+\(\w+\)/)
    end
  end

  # Тестируем метод random_by_type с заданным типом
  describe '#random_by_type' do
    it 'возвращает случайное животное заданного типа' do
      animal_type = 'mammal'
      expect(ZooGenerator::AnimalGenerator.random_by_type(animal_type)).to match(/\w+\s+\(\w+\)/)
    end
  end

  # Тестируем метод animal_types для получения всех уникальных типов животных
  describe '#animal_types' do
    it 'возвращает все уникальные типы животных' do
      expect(ZooGenerator::AnimalGenerator.animal_types).to include('mammal', 'bird', 'reptile')
    end
  end

  # Тестируем метод all_predators для получения всех хищников
  describe '#all_predators' do
    it 'возвращает всех хищников' do
      expect(ZooGenerator::AnimalGenerator.all_predators).to include('Tiger (Panthera tigris)', 'Wolf (Canis lupus)')
    end
  end

  # Тестируем метод all_herbivores для получения всех травоядных
  describe '#all_herbivores' do
    it 'возвращает всех травоядных' do
      expect(ZooGenerator::AnimalGenerator.all_herbivores).to include('Elephant (Loxodonta africana)', 'Giraffe (Giraffa camelopardalis)')
    end
  end
end
