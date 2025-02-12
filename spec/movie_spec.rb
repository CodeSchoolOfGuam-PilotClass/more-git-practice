require_relative '../movie_manager'

RSpec.describe Movie do
  let(:movie) { Movie.new("ABC", "DEF") }
  describe '#initialize' do
    it 'intializes value for movie title and director' do
      expect(movie.title).to eq("ABC")
      expect(movie.director).to eq("DEF")
    end
  end

  describe '#unwatched' do
    it 'pushes movie into unwatched array' do
      expect(movie.unwatched(movie.title)).to eq("#{movie.title} is unwatched.")
    end
  end

  describe '#watched' do
    it 'takes movie out of unwatched array, and put movie into watched array' do
      expect(movie.unwatched(movie.title))
      expect(movie.watched(movie.title)).to eq("#{movie.title} has been moved from unwatched to watched")
    end
    it 'does not add a movie to watched unless it is in the unwatched array' do
      expect(movie.watched(movie.title)).to eq("#{movie.title} not found")
    end
  end
end