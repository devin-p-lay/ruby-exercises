class Pirate
  attr_reader :name,
              :job

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @curse_level = 0
    @booty_level = 0
  end

  def commit_heinous_act
    @curse_level += 1
  end

  def cursed?
    if @curse_level > 2
      true
    else false
    end
  end

  def booty
    @booty_level
  end

  def rob_ship
    @booty_level += 100
  end
end
