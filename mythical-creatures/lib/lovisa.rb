class Lovisa
  attr_reader :title,
              :characteristics

  def initialize(title, characteristics = ['brilliant'])
    @title = title
    @characteristics = characteristics
  end

  def brilliant?
    if @characteristics.include?('brilliant')
      true
    else
      false
    end
  end

  def kind?
    if @characteristics.include?('kind')
      true
    else
      false
    end
  end

  def say(dialogue)
    '**;* ' + dialogue + ' **;*'
  end
end
