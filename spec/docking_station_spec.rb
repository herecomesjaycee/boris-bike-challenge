<<<<<<< HEAD
require 'docking_station'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
    
    it 'releases working bikes' do
    	#swap DockingStation.new with subject to test theory
    	bike = subject.release_bike
    	expect(bike).to be_working
    end

    it 'docks something' do
    	bike = Bike.new
    	expect(subject.dock(bike)).to eq bike
    end
  	#it { is_expected.to respond_to(:dock).with(1).argument }
  	#it { is_expected.to respond_to(:bike) }
  	it 'returns docked bikes' do
  		bike = Bike.new # new instance of bike
  		subject.dock(bike) # also has a value
  		expect(subject.bike).to eq bike
end

end

=======
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


  it 'should raise error if there is no bike in the dock' do
     bike = subject.docking(0)
  expect { subject.release_bike }.to raise_error('No bikes available at this dock')
end


it 'should raise an error if station is full' do
  subject.docking(Bike.new)
  expect {subject.docking (Bike.new)}.to raise_error('station is full')
end


end
>>>>>>> 9ba8a3fde1476fb8f0d4cadd702ab6e2bf70656b
