require 'pry'
require 'nokogiri'
require 'open-uri'

require './lib/pet_friendly'

class Scraper
  
  @@all =[]
  
  def initialize
    @@all << self
  end 
  
  def get_page
    page = Nokogiri::HTML(open("https://bringfido.com"))
    categories = self.new
    category_name = page.css("span").first.text
    #page.css('.header-link').each do |category|
     # category_name = category.css("a").text
      #new_category = Category.new(category_name)
    binding.pry 
    categories
   # end
  end 
  
  def get_category
    page = self.get_page.css(".item")
    page.each do |category|
      category_name = category.css(".label").text
      new_category = Category.new(category_name)
    end
  end
  
  
end

Scraper.new.get_category
