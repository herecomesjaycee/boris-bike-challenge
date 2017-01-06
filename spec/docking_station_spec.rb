

require 'docking_station'

describe DockingStation do
  describe '#docking'do
    it {is_expected.to respond_to :docking}
    it {is_expected.to respond_to(:docking).with(1).argument}
    it "is holding the expected instance of bike" do
      bike = Bike.new
      expect{(subject.docking(bike)[0]).to eq bike}
    end
    it 'should raise an error if station is full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.docking Bike.new}
      expect {subject.docking Bike.new}.to raise_error('station is full')
    end
  end

  describe '#new' do
    it "creates with DEFAULT_CAPACITY" do
      DockingStation.new
      expect{(subject::capacity).to eq subject::DEFAULT_CAPACITY}
    end
    it "accepts capacity as an optional var" do
      DockingStation.new 12
      expect{(subject::capacity).to eq 12}
    end
  end

  describe '#release_bike' do
    it {is_expected.to respond_to :release_bike}
    it {expect{ subject.release_bike }.to raise_error('No bikes available at this dock')}
  end
end
