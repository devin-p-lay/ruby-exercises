class Medusa
  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned
    @statues << victim
    if @statues.count == 4
      @statues[0].unstoned
      @statues.shift
    end
  end
end

class Person
  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def stoned
    @stoned = true
  end

  def unstoned
    @stoned = false
  end
end
