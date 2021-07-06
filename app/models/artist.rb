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
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.paintings.map do |painting|
      painting.gallery.city
    end
  end

  def self.total_experience
    total = self.all.map do |artist|
      artist.years_experience
    end
    total.reduce(0) {|sum,years| sum += years}
  end

  def ppy
    self.paintings.count/self.years_experience
  end
  
  def self.most_prolific 
      hash = Hash.new(0)
      self.all.each {|artist|hash[artist]=artist.ppy}
      hash.max_by{|k,v|v}.first
  end

  def create_painting(title,price,gallery)
    Painting.new(title,price,self,gallery)
  end
end


      

  
