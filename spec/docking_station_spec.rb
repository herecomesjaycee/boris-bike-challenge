require './lib/docking_station'
describe DockingStation do
it {is_expected.to respond_to :release_bike}
it 'should respond to working method' do
  new_instance = DockingStation.new.release_bike
  expect(new_instance).to respond_to :working?
end
end
