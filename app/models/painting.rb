class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist 
    @gallery = gallery

    @@all << self 
  end
  
  def self.total_price
    prices = self.all.map{|painting| painting.price}  
    total = prices.reduce{|memo,price| memo += price}
    total
  end 
  
  def self.all
  @@all
  end
  
end
