class Direwolf
  attr_reader :name,
              :home,
              :size,
              :starks_to_protect

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if @home == stark.location && @starks_to_protect.count < 2
      stark.protected
      @starks_to_protect << stark
    end
  end

  def leaves(stark)
    stark.unprotected
    @starks_to_protect.delete(stark)
  end

  def hunts_white_walkers?
    if @starks_to_protect.empty?
      true
    else
      false
    end
  end
end

class Stark
  attr_reader :name,
              :location

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
  end

  def safe?
    @safe
  end

  def protected
    @safe = true
  end

  def unprotected
    @safe = false
  end

  def house_words
    'Winter is Coming'
  end
end