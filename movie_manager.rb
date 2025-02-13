# Project B: Movie Collection Manager (Group B)
# Goal
# Create a small program to manage a collection of movies. You will also practice Ruby, OOP, and RSpec testing.
# Requirements (No Code Provided)
# Movie Class
# Has attributes for title and director.
# Tracks whether the movie is watched or not (default is unwatched).
# Offers methods to mark a movie as watched or unwatched.
# MovieLibrary Class
# Manages a collection (e.g., an array) of Movie objects.
# Can add a new movie, remove a movie, find a movie by title, etc.
# Provides a method to list all unwatched movies.
# RSpec Tests
# Write tests to confirm that adding, removing, and searching for movies works.
# Verify the watched/unwatched functionality is correct.
# Feature Branch Examples
# feature/movie_class: build and test the Movie class.
# feature/movie_library_management: build and test the MovieLibrary class.
# Deliverables
# At least two separate PRs: one for the movie class, one for the movie library.
# The other group should review each PR before merging.

class Movie
  attr_accessor :title, :director

  def initialize(title, director)
    @title = title
    @director = director
    @stars = nil
    @review = nil
  end

  def display_info
    movie_info = "#{@title} (Directed by #{@director})"
    if @stars
      movie_info += " - #{@stars}/5 STARS"
    end
    if @review
      movie_info += " - Review: #{@review}"
    end
  end

  def set_rating(stars)
    if stars >= 1 && stars <= 5
      @stars = stars
    else
      return "Star rating must be between 1 and 5"
    end
  end

  def set_review(review)
    @review = review
  end
end


class MovieLibrary
  attr_accessor :movies
  def initialize
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def remove_movie(movie)
    @movies.delete(movie)
    return @movies
  end

  def search_movie(movie)
    if @movies.include?(movie)
     return movie
    end
  end

  def display
    # puts "Movie Display:"
    l_m = []
    movies.each_with_index do |film, index|
      l_m << "#{index + 1}. #{film}"
    end
    return l_m
  end
end

library = MovieLibrary.new
puts "Welcome to the Movie Library!"
puts "------------------------------"
loop do
  puts "Menu Selection \n 
  1) Add a movie
  2) Remove a movie
  3) Search for a movie
  4) Rate a movie
  5) Leave a review
  6) Display movie library
  7) Display movie information
  8) Exit"
  puts "Input a number to choose an option."
  option = gets.chomp.to_i
  case option
  when 1
    puts "Enter movie title."
    title = gets.chomp.capitalize
    puts "Enter movie director."
    director = gets.chomp.capitalize
    movie = Movie.new(title, director)
    library.add_movie(movie)
    puts "#{title} added to library!"

  when 2
    puts "Enter the movie title to remove."
    title = gets.chomp
    library.remove_movie(title)
     puts "#{title} removed from library!"
  end

  break
end


# library.add_movie("Movie name")
# library.add_movie("Movie name2")
# library.add_movie("Sharknado")
# # puts library.search_movie("Movie name2")
# # puts library.search_movie("Sharknado")
# # puts library.display

# puts library.remove_movie("Movie name")

# movie1 = Movie.new("Twilight", "Catherine Hardwicke")
# movie1.set_rating(3)
# movie1.set_review("Didnt appreciate it when it first came out, now its lowkey fun to watch for nostalgia")
# puts movie1.display_info