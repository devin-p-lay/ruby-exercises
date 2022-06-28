class Unicorn
  attr_reader :name,
              :color,
              :magical_powers

  def initialize(name, color)
    @name = name
    @color = color
    @magical_powers = []
