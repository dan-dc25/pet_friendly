require 'pry'

class Scraper
  
  @@all =[]
  
  def initialize
    @@all << self
  end 
  
  def get_page
    page = Nokogiri::HTML(open("https://bringfido.com"))
    page
    
    binding.pry 
  end 
  
  def get_category
    page = self.get_page.css(".item")
    page.each do |category|
      category_name = category.css(".label").text
      new_category = Category.new(category_name)
    end
  end
  
  
end
