module Foodie

  require 'active_record'

  class Food < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {case_insensitive: true}
  validates :price, presence: true

    def self.db_configuration
      db_configuration_file = File.join('db', 'config.yml')
      YAML.load(File.read(db_configuration_file))
    end

    def self.create
    establish_connection(Food.db_configuration["development"])
    print "Give me the name of a food: "
    name = gets.chomp
    food = Food.new(name: name, price: "0.5")
    food.save!

    puts "Number of movies in your database: #{Food.count}"
    end

    def self.portray(food)
      if food.downcase == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end
  end

  Food.create
end
