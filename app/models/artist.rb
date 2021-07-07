class Artist

  attr_reader :name, :years_experience

  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self 
  end
  
  def self.all
    @@all
  end 
  
  def paintings 
    Painting.all.select{|painting|painting.artist == self}
  end 

  def galleries 
    paintings.map{|painting|painting.gallery}
  end 

  def cities
    cities = galleries.map{|gallery|gallery.city}.uniq
  end 

  def self.total_experience
    @@all.map{|artist|artist.years_experience}.inject(:+)
  end 

  def self.most_prolific
    @@all.max_by{|artist| artist.paintings.count / artist.years_experience}
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 
end
