class Unicorn
  attr_reader :name,
              :color,
              :magical_powers

  def initialize(name, color = 'silver')
    @name = name
    @color = color
    @magical_powers = []
  end

  def silver?
    if color == 'silver'
      true
    else
      false
    end
  end

  def say(input)
    '**;* ' + input + ' **;*'
  end
end