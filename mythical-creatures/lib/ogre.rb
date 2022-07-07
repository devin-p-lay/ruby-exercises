class Ogre
  attr_reader :name,
              :home,
              :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(human)
    human.encounted
    if human.notices_ogre?
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings +=1
  end
end

class Human
  attr_reader :name,
              :encounter_counter

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
  end

  def encounted
    @encounter_counter += 1
  end

  def notices_ogre?
    if @encounter_counter > 2
      true
    else
      false
    end
  end
end