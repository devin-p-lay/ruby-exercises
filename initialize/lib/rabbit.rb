class Rabbit
  def initialize(info)
    @name = info[:name]
    @num_syllables = info[:num_syllables]
  end

  def name
    if @num_syllables == 2
      @name + ' Rabbit'
    else
      @name
    end
  end 
end