require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name)
  get_character_data
  film_url_array = get_film_urls(character_name)
  film_list = film_url_array.collect {|data| JSON.parse(RestClient.get(data))}
end

def get_character_data
  all_characters = RestClient.get("http://www.swapi.co/api/people/")
  character_hash = JSON.parse(all_characters)
  character_data = character_hash["results"]
end

#get_character_data returns an array

def get_film_urls(character_name)
  character_data = get_character_data
  new_character = character_data.find { |character| character["name"].downcase.include?(character_name)}
  new_character["films"]

end



def get_title(film)
  film["title"]
end

def print_movies(films)
  films.each do |film|
    puts get_title(film)
end
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
