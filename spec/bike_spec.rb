require 'bike'
describe Bike do
  it 'check bike is working' do
    expect(subject).respond_to? :working?
  end
end