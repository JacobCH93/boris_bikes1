require_relative 'bike'

class DockingStation
  
  def initialize
    @garage = []
  end

  def release_bike
    fail 'No bikes available' if @garage.count == 0
    @garage.pop
  end

  def dock(bike)
    fail "No space for bike" if @garage.count >= 20
    @garage.push(bike)
  end

  attr_reader :bike
  
end