# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'zoo_generator'
  spec.version       = '0.1.0'
  spec.authors       = ['strekoza_kssh']
  spec.email         = ['broslavtseva@sfedu.ru']
  spec.summary       = 'A Ruby gem for generating zoo data.'
  spec.description   = 'A library that generates random animals and something other about zoo.'
  spec.files         = Dir['lib/**/*.rb']
  spec.required_ruby_version = '>= 3.3.0'

  spec.add_runtime_dependency 'csv'
end