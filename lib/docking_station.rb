require_relative 'bike'

class DockingStation
  def initialize
    bike = @Bike
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike
  

end