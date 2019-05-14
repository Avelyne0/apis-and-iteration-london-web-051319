require "pry"
def welcome
puts "Welcome, to the party!"
end

def get_user_input
  puts "Please enter a search term"
  gets.chomp.downcase
  # use gets to capture the user's input. This method should return that input, downcased.
end
