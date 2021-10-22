require 'docking_station'

 describe DockingStation do
  let (:bike) { double :bike} 
  it 'releases bike' do
    expect(subject).respond_to? :release_bike
  end

  it 'gets bike' do
    expect(subject).respond_to? :bike
  end

  it 'bike working' do
    subject.dock(Bike.new)
    expect(subject.release_bike).respond_to? :working?
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  
  it { is_expected.to respond_to(:bike) }

  it 'cannot store 21 bikes' do
    subject.dock(Bike.new)
    expect { DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new } }.to raise_error "No space for bike"
  end

  it 'can store 20 bikes' do
    expect { DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new } }.to_not raise_error "No space for bike"
  end

  describe '#release_bike' do
  it 'raises an error when there are no bikes' do 
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end
  
  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
  end
end