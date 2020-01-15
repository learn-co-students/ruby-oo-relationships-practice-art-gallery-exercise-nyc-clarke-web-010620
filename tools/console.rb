require_relative '../config/environment.rb'

september = Artist.new("September Holder", 1)
van_gogh = Artist.new("Vincent Van Gogh", 2)
michaelangelo = Artist.new("Michelangelo di Lodovico Buonarroti Simon", 2)

stories = Gallery.new("Stories", "New York City")
impressionism = Gallery.new("Impressionism", "Los Angeles")
abstract_art = Gallery.new("Abstract Art", "New York City")
classics = Gallery.new("Classics", "Boston")

monsters = Painting.new("Monsters",1000000,september,abstract_art)
family = Painting.new("Family",1000000000,september,stories)
starry_night = Painting.new("Starry Night",120000000,van_gogh,classics)
scream = Painting.new("Scream",100000000,van_gogh,abstract_art)
creation_of_adam = Painting.new("The Creation of Adam",300000000,michaelangelo,classics)
sistine_chapel = Painting.new("The Sistine Chapel",850000000,michaelangelo,classics)


binding.pry

puts "Bob Ross rules."
