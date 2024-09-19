# frozen_string_literal: true
# Включает заморозку строковых литералов, что может повысить производительность и предотвратить изменения строк.

Gem::Specification.new do |spec|
  spec.name          = 'zoo_generator'
  # Указывает имя гема.

  spec.version       = '0.1.0'
  # Указывает версию гема.

  spec.authors       = ['strekoza_kssh']
  # Указывает авторов гема.

  spec.email         = ['broslavtseva@sfedu.ru']
  # Указывает контактный email автора.

  spec.summary       = 'A Ruby gem for generating zoo data.'
  # Краткое описание гема.

  spec.description   = 'A library that generates random animals and something other about zoo.'
  # Полное описание гема.

  spec.files         = Dir['lib/**/*.rb']
  # Указывает файлы, которые будут включены в гем. В данном случае это все Ruby-файлы в папке lib и её подпапках.

  spec.required_ruby_version = '>= 3.3.0'
  # Указывает минимальную версию Ruby, необходимую для работы гема.

  spec.add_runtime_dependency 'csv'
  # Добавляет зависимость на стандартную библиотеку CSV, которая используется в рантайме.
end
