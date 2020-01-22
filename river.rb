class River
  attr_reader :name

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

def add_fish(fish)
  @fishes.push(fish)
end

def fish_count()
 return @fishes.count()
end

def remove_fish()
  @fishes.pop
  #@fish.shuffle().pop() will take a random fish
end




end
