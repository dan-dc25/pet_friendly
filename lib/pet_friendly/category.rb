require 'pry'
require './lib/pet_friendly'

class Category
  
  attr_reader :name
  attr_accessor :categories, :location
  
  @@all =[]
  
  def initialize(name)
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.check_for_category(category_name)
    self.all.detect { |cat| cat.name == category_name }
  
  end
  
end