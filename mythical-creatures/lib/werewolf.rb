class Werewolf
  attr_reader :name,
              :location

  def initialize(name, location = 'London', human = true)
    @name = name
    @location = location
    @change = human?
    @human = human
  end

  def human?
    if @human == true
      true
    else false
    end
  end

  def change!
    if @change == true
      false
    else @change == false
      true
    end
  end

  def wolf?
    if @human == true
      false
    else true
    end
  end
end
