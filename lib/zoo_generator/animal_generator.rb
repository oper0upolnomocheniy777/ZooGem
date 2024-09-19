require 'csv'  # Подключаем библиотеку для работы с CSV-файлами

module ZooGenerator  # Определяем модуль ZooGenerator
  module AnimalGenerator  # Вложенный модуль AnimalGenerator
    ANIMALS_FILE = File.expand_path('../data/animals.csv', __dir__)  # Указываем путь к файлу animals.csv
    ANIMALS = CSV.read(ANIMALS_FILE, headers: true)  # Читаем CSV-файл и сохраняем данные в массив с заголовками

    def self.random_animal  # Метод для получения случайного животного
      animal = ANIMALS.sample  # Выбираем случайное животное из массива
      "#{animal['name']} (#{animal['type']})"  # Возвращаем строку с именем и типом животного
    end

    def self.random_predator  # Метод для получения случайного хищника
      predator = ANIMALS.select { |animal| animal['class'] == 'predator' }.sample  # Фильтруем хищников и выбираем случайного
      "#{predator['name']} (#{predator['type']})"  # Возвращаем строку с именем и типом хищника
    end

    def self.random_herbivore  # Метод для получения случайного травоядного
      herbivore = ANIMALS.select { |animal| animal['class'] == 'herbivore' }.sample  # Фильтруем травоядных и выбираем случайного
      "#{herbivore['name']} (#{herbivore['type']})"  # Возвращаем строку с именем и типом травоядного
    end

    def self.random_by_type(animal_type)  # Метод для получения случайного животного по типу
      animal = ANIMALS.select { |animal| animal['type'].casecmp(animal_type) == 0 }.sample  # Фильтруем по типу и выбираем случайного
      "#{animal['name']} (#{animal['type']})" if animal  # Возвращаем строку с именем и типом животного, если найдено
    end

    def self.animal_types  # Метод для получения уникальных типов животных
      ANIMALS.map { |animal| animal['type'] }.uniq  # Извлекаем типы и убираем дубликаты
    end

    def self.all_predators  # Метод для получения всех хищников
      predators = ANIMALS.select { |animal| animal['class'] == 'predator' }  # Фильтруем по классу "хищник"
      predators.map { |predator| "#{predator['name']} (#{predator['type']})" }  # Возвращаем массив строк с именами и видами хищников
    end

    def self.all_herbivores  # Метод для получения всех травоядных
      herbivores = ANIMALS.select { |animal| animal['class'] == 'herbivore' }  # Фильтруем по классу "травоядный"
      herbivores.map { |herbivore| "#{herbivore['name']} (#{herbivore['type']})" }  # Возвращаем массив строк с именами и видами травоядных
    end
  end
end
