class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def paintings
  Painting.all.select{|painting| painting.artist == self}
  end 

  def galleries
  self.paintings.map{|painting| painting.gallery}
  end 

  def cities
  self.galleries{|gallery| gallery.city}
  end 

  def self.total_experience
  years = @@all.map{|artist| artist.years_experience}
  years.reduce{|memo,years| memo += years}  
  end 

  def ppy
  self.paintings.count/self.years_experience
  end 

  def self.most_prolific
  hash = Hash.new(0)
  self.all.each{|artist|hash[artist] = artist.ppy}  
  hash.max_by{|k,v|v}.first
  end

  def create_painting(title,price,gallery)
  Painting.new(title,price,self,gallery)
  end 
  
  def self.all
  @@all 
  end 
end
