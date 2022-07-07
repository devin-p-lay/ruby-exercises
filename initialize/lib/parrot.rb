class Parrot
  attr_reader :name,
              :known_words,
              :sound

  def initialize(info)
    @name = info[:name]
    @known_words = info[:known_words]
    @sound = 'Squawk!'
  end
end