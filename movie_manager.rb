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
  attr_accessor :title, :director, :unwatched, :watched
  def initialize(title, director)
    @title = title
    @director = director
    @unwatched = []
    @watched = []
  end

  def unwatched(movie) #works
    @unwatched << movie
    puts "#{movie} is unwatched."
  end

  def watched(movie)
    if @unwatched.include?(movie)
      @unwatched.delete(movie)
      @watched << movie
      puts "#{movie} has been moved from unwatched to watched"
    else
      puts "#{movie} not found"
    end
  end
end

movie = Movie.new("ABC", "DEF")
movie.unwatched(movie.title)
movie.watched(movie.title)


