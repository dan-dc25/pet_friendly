require 'pry'
require './lib/pet_friendly'

class Cli
  
  def call
    welcome
    display_categories
    user_select
  end
    
  def welcome
    puts ""
    puts "Welcome to Pet Friendly! "
    puts ""
    puts "Where would you like to take your furry friend? "
  end
  
  def display_categories
    puts " "
    puts "Here are the availables categories: "
    puts " "
    Category.all.each_with_index do |category, index|
      puts " #{index+1}. #{category.name}"
      
      binding.pry
    end
  end
  
  def user_select
    puts " "
    puts "Please select a category "
    display_categories
    input = gets.strip
  end
    
end