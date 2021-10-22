require_relative 'bike'

class DockingStation
  
  def initialize
    @garage = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @garage.pop
  end

  def dock(bike)
    fail "No space for bike" if full?
    @garage.push(bike)
  end

  DEFAULT_CAPACITY = 20

 attr_reader :bike

private

  def full?
    @garage.count >= DEFAULT_CAPACITY
  end

  def empty?
    @garage.count == 0
  end

 
  
end