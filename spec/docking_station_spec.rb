require './lib/docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'should respond to working method' do
    bike = subject.release_bike
    expect(bike).to respond_to :working?
  end

  it {is_expected.to respond_to :docking}
  it { is_expected.to respond_to(:docking).with(1).argument}
  it 'should be able to dock bike'do
    bike = Bike.new
    # subject = DockingStation.new
    # DockingStation.new.docking(var bike from line 14 in this spec file)
    expect(subject.docking(bike)).to eq bike
  end


  it 'should raise error' do
     bike = subject.docking(1)
  expect { subject.release_bike }.to raise_error('No bikes available at this dock')
end


end
