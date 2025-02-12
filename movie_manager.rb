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
  end

  def search_movie(movie)
    if @movies.include?(movie)
     return movie
    end
  end

  def display
    puts "Movie Display:"
    l_m = []
    movies.each_with_index do |film, index|
      l_m << "#{index + 1}. #{film}"
    end
    return l_m
  end
end

library = MovieLibrary.new
library.add_movie("Movie name")
library.add_movie("Movie name2")
library.add_movie("Sharknado")
puts library.search_movie("Movie name2")
puts library.search_movie("Sharknado")
puts library.display