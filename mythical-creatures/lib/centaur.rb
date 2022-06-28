class Centaur
  attr_reader :name,
              :breed,
              :tired

  def initialize(name, breed)
    @name = name
    @breed = breed
    @tired = 0
    @cranky = cranky?
    @standing = true
    @sick = false
  end

  def shoot
    @tired += 1
    if @tired < 3 && @standing == true
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    @tired += 1
    if @standing == true
      "Clop clop clop clop!"
    else
      "NO!"
    end
  end

  def cranky?
    if @tired > 2
      @cranky = true
    else
      @cranky = false
    end
  end

  def standing?
    @standing
  end

  def stand_up
    @standing = true
  end

  def sleep
    if @standing == true
      'NO!'
    else
      @tired = 0
      'zzzzz'
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    if @standing == false
      true
    else
      false
    end
  end

  def drink_potion
    if @standing == true
      if @tired = 0
        @sick = true
      end
      @tired = 0
      'Mmm'
    else
      'NO!'
    end
  end

  def sick?
    @sick
  end
end
