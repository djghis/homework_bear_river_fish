class River
  attr_reader :name

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

def add_fish(fish)
  @fish.push(fish)
end

def fish_count()
 return @fish.count()
end

def remove_fish()
  @fish.pop
end




end
