require 'docking_station'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
    
    it 'releases working bikes' do
    	#swap DockingStation.new with subject
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
  		bike = Bike.new # there will always be a value here.
  		subject.dock(bike) # also has a value
  		expect(subject.bike).to eq bike
end

end

