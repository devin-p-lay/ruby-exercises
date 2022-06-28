class Hobbit
  attr_reader :name,
              :disposition,
              :age

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @has_ring = assign_ring_on_creation
  end

  def assign_ring_on_creation
    return true if self.name == "Frodo"
      false
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age >= 33
      true
    else false
    end
  end

  def old?
    if @age > 100
      true
    else false
    end
  end

  def has_ring?
    assign_ring_on_creation
  end
end
