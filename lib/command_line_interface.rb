require "pry"
def welcome
puts "Welcome, to the party!"
end

def get_character_from_user(user_input)
  puts "please enter a character name"
  gets.chomp.user_input
  binding.pry
  # use gets to capture the user's input. This method should return that input, downcased.
end
