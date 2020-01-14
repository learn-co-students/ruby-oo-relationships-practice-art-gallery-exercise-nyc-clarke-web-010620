require_relative '../config/environment.rb'

a1 = Artist.new("Picasso",2)
a2 = Artist.new("DaVince",2)
g1 = Gallery.new("Chicken Leg","Italy")
p1 = Painting.new("Wings",2000,a1,g1)
p2= Painting.new("Thighs",1000,a1,g1)
p3 = Painting.new("Breast",1500,a1,g1)
p4 = Painting.new("neck",3000,a1,g1)
p5 = Painting.new("Wings",2000,a2,g1)
p6 = Painting.new("Wings",200,a2,g1)
p7 = Painting.new("Wings",12,a2,g1)
p8 = Painting.new("Wings",1,a2,g1)
p9 = Painting.new("Wings",9,a2,g1)
p10 = Painting.new("Wings",234,a2,g1)



binding.pry

puts "Bob Ross rules."
