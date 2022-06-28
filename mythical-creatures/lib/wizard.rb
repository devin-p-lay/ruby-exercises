class Wizard
  attr_reader :name,
              :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spell_fatigue = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo " + spell
  end

  def rested?
    if @spell_fatigue > 2
      false
    else true
    end
  end

  def cast
    @spell_fatigue += 1
    "MAGIC MISSLE!"
  end
end
