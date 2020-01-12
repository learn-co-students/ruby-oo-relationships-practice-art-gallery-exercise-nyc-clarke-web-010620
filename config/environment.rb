require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

artist1 = Artist.new("nathan", 5)
artist2 = Artist.new("adam", 3)
gallery1 = Gallery.new("wow", "seattle")
gallery2 = Gallery.new("no", "ny")
painting1 = Painting.new("Epic sheep", 1000, artist1, gallery1)
painting2 = Painting.new("hohoho", 2000, artist1, gallery1)
paiting3 = Painting.new("uuuu", 4000, artist2, gallery1)

check = Artist.all
check1 = artist1.paintings
check2 = artist1.galleries 
check3 = artist1.cities
check4 = Artist.total_experience
check5 = Artist.most_prolific
check6 = artist1.create_painting("fasfasd", 3000, gallery2)
check7 = artist1.paintings
check8 = artist1.cities 
check9 = gallery1.paintings 
check10 = gallery1.artists
check11 = gallery1.artist_names
check12 = gallery1.most_expensive_painting

binding.pry 
