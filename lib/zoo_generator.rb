module ZooGenerator  # Определяем модуль ZooGenerator
  module AnimalGenerator  # Вложенный модуль AnimalGenerator

    # Метод для получения уникальных типов животных
    def self.animal_types
      ANIMALS.map { |animal| animal['type'] }  # Извлекаем типы животных из массива ANIMALS
             .uniq  # Убираем дубликаты, оставляя только уникальные типы
    end

    # Метод для получения случайного животного по заданному типу
    def self.random_by_type(type)
      animals = ANIMAL_DATA.select { |animal| animal[:type] == type }  # Фильтруем животных по указанному типу
      random_animal = animals.sample  # Выбираем случайное животное из отфильтрованных
      "#{random_animal[:name]} (#{random_animal[:species]})"  # Возвращаем строку с именем и видом выбранного животного
    end
  end
end
