class Cat
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize(name, owner = nil)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all.push(self)
    if owner
      owner.cats.push(self)
    end
  end

  def self.all
    @@all
  end
end