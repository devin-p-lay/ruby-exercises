class Werewolf
  attr_reader :name,
              :location,
              :victims

  def initialize(name, location = 'London', human = true)
    @name = name
    @location = location
    @human = true
    @hungry = false
    @victims = []
  end

  def human?
    @human
  end

  def change!
    if @human == true
      @hungry = true
      @human = false
    else @human == false
      @human = true
    end
  end

  def wolf?
    if @human == true
      false
    else true
    end
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    if @human == true
      "I'm not a cannabal!"
    else
      @hungry = false
      victim.status = :dead
      @victims << victim
    end
  end
end


class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end
end
