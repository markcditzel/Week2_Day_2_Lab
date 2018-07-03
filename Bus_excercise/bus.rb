
class Bus

  attr_reader :route, :destination, :passenger

  def initialize (route, destination)
    @route = route
    @destination = destination
    @passenger = []

  end

  def drive
    return "Brmm Brmm"
  end

  def bus_pick_up(banana)
    @passenger << banana
  end

  
end




#----------------------------

class Person

attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end
