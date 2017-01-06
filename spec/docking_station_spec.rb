require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it {is_expected.to respond_to :docking}
  it { is_expected.to respond_to(:docking).with(1).argument}
  
  it 'should be able to dock bike'do
    bike = Bike.new
    # subject = DockingStation.new
    # DockingStation.new.docking(var bike from line 14 in this spec file)
    expect(subject.docking(bike)[0]).to eq bike
  end


  it 'should raise error if there is no bike in the dock' do
     # bike = subject.docking(0)
  expect{ subject.release_bike }.to raise_error('No bikes available at this dock')
end


it 'should raise an error if station is full' do
  DockingStation::DEFAULT_CAPACITY.times {subject.docking Bike.new}
  expect {subject.docking Bike.new}.to raise_error('station is full')
end


end

