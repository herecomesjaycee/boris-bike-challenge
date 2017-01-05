require './lib/docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'should respond to working method' do
    bike = subject.release_bike
    expect(bike).to respond_to :working?
  end

  it 'should take one argument' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end
end
