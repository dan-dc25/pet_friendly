require 'pry'
require 'nokogiri'
require 'open-uri'
require './lib/pet_friendly'

class Category
  
  attr_reader :name
  attr_accessor :categories, :location
  
  @@categories =[]
  
  def self.list_categories
    self.get_categories
  end
  
   def self.get_categories
    doc = Nokogiri::HTML(open("https://bringfido.com"))
    #categories = self.new
    category_name = doc.css("span").first.text
    
    category_name.each_with_index{|c| }
      categories << self.get_categories
      puts categories
    end
  end
    #page.css('.header-link').each do |category|
     # category_name = category.css("a").text
      #new_category = Category.new(category_name)
    #binding.pry 
    categories
   # end
  #end 
  
end