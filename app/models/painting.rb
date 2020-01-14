class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price,artist,gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    array = self.all.map {|painting| painting.price}
    array.reduce(0) {|sum,number| sum += number}
  end
end
