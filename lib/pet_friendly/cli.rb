

class PetFriendly::Cli
  
  def call
    welcome
    display_categories
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
    PetFriendly::Category.all.each_with_index do |category, index|
      puts " #{index+1}. #{category.name}"
    end
  end
  
  def user_select
    puts " "
    puts "Please select a category "
    puts " "
    puts "For example, if you want 'Hotels', type '1' "
    input = gets.strip_to_i
  end
    
end