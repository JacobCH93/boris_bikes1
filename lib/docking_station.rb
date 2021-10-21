require_relative 'bike'

class DockingStation
  def initialize
    bike = @Bike
  end

  def release_bike
    Bike.new
  end

  def docking
    docking = []
  end

  def add_bike
    docking << @Bike
  end
end