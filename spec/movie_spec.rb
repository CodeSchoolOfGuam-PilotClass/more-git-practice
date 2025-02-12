require_relative '../movie_manager'

RSpec.describe Movie do
  let(:movie) { Movie.new("ABC", "DEF") }
  describe '#initialize' do
    it 'intializes value for movie title and director' do
      expect(movie.title).to eq("ABC")
      expect(movie.director).to eq("DEF")
    end
  end
end

RSpec.describe MovieLibrary do
  let(:library) { MovieLibrary.new }
  let(:movie) { Movie.new("ABC", "DEF") }

  describe '#initalize' do
    it 'initalizes movie array' do
      expect(@movie = [])
    end
  end

  describe '#add_movie' do
    it 'pushes movie into movie array' do
      expect(library.add_movie(movie.title)).to eq(["ABC"])
    end
  end

  describe '#remove_movie' do
    it 'removes movie from movie array' do
      expect(library.add_movie(movie.title))
      expect(library.remove_movie(movie.title)).to eq([])
    end
  end

  describe '#search_movie' do
    it "presents movie title for searched movie" do
      expect(library.add_movie(movie.title))
      expect(library.search_movie(movie.title)).to eq("ABC")
    end
  end

  describe '#display' do
    it 'displays all movies in library' do
      expect(library.add_movie(movie.title))
      expect(library.display).to eq()
    end
  end
end