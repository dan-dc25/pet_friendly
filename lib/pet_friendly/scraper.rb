require 'pry'

class PetFriendly::Scraper
  
  attr_accessor :category, :destination
  
  @@all =[]
  
  def initialize
    @name = name
    @category = category
    @destination = destination
    @@all << self
  end 
  
  def get_page
  
    doc = Nokogiri::HTML(open("https://bringfido.com"))
    
    binding.pry 
    
  end 
  
  
end
