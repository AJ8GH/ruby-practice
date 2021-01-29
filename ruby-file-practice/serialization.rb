require 'yaml'
require 'json'

class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_yaml
    YAML.dump ({
      name: @name,
      age: @age,
      gender: @gender
    })
  end

  def self.from_yaml(string)
    data = YAML.load string
    p data
    self.new(data[:name], data[:age], data[:gender])
  end

  def to_json
    JSON.dump ({
      name: @name,
      age: @age,
      gender: @gender
      })
  end

  def self.from_json(string)
    data = JSON.load(string)
    self.new(data[:name], data[:age], data[:gender])
  end
end

david = Person.new('David', 28, 'male')
puts david.to_yaml

david2 = Person.from_yaml(david.to_yaml)
puts "name: #{david2.name}"
puts "age: #{david2.age}"
puts "gender: #{david2.gender}"

puts

adam = Person.new('Adam', 32, 'male')
puts adam.to_json

adam2 = Person.from_json(adam.to_json)
puts adam2.name
puts adam2.age
puts adam2.gender


p adam2
