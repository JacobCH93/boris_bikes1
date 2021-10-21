require 'docking_station'

describe DockingStation do
  it 'releases bike' do
    docking_station = DockingStation.new
    expect(docking_station).respond_to? :release_bike
  end
  it 'gets bike' do
    docking_station = DockingStation.new
    expect(docking_station).respond_to? :bike
  end
  it 'bike working' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to respond_to :working?
  end

  it 'docking bike docking station' do
    docking_station = DockingStation.new
    expect (docking_station.docking).should be_array 
  end

  it 'adds bike the docking station' do
    docking_station = DockingStation.new
    expect (docking_station.add_bike).to_not raise_error
  end
end