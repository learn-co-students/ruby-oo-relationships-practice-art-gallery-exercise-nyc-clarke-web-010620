class Gallery
  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    self.paintings.map do |painting|
      painting.artist
    end.uniq
  end

  def artists_name
    self.paintings.map do |painting|
      painting.artist.name
    end.uniq
  end

  def most_expensive_painting
    gallery_hash = Hash.new(0)
    self.paintings.each {|painting|gallery_hash[painting] = painting.price}
    gallery_hash.max_by{|k,v|v}
  end
end
