require 'rest-client'
require 'json'
require 'pry'

def show_character_movies(character_name)
  #make the web request
  all_characters = RestClient.get("http://www.swapi.co/api/people/") #get ALL of the data for 'people'
  character_hash = JSON.parse(all_characters) #parse the data
  character_data = character_hash["results"].find {|data| results["name"] == character} #find JUST the names
  binding.pry
  film_url_array = character_data["films"]
  film_list = film_url_array.collect {|data| JSON.parse(RestClient.get(data))}
  binding.pry
end


# def create_list_from_url_array(film_url_array)
# film_url_array.each do {
#   response_string = RestClient.get
# }
# end



  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.
# end

def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
end

# def show_character_movies(character)
#   films = get_character_movies_from_api(character)
#   print_movies(films)
# end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
