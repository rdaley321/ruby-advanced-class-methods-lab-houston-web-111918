class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new = self.new
    all << new
    new
  end
  
  def self.new_by_name(name)
    new = self.new
    new.name = name
    new
  end
  
  def self.create_by_name(name)
    new = self.new
    new.name = name
    all << new
    new
  end
  
  def self.find_by_name(name)
    all.find{|item| item.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if find_by_name(name)
      find_by_name(name)
    else
      create_by_name(name)
    end
  end
  
  def self.alphabetical
    new = all.sort
    new
  end
end
