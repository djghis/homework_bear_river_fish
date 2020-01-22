class Bears

attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end


  def fish_count()
   return @stomach.length()
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end

  def roar
    return "ROAR"
  end

  def take_fish_from_river(river)
    fish = river.remove_fish()
    # @stomach << fish if !fish.nil?
    if fish != nil
    @stomach << fish
    end
  end
end
