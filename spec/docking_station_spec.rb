require 'docking_station'

describe DockingStation do
  let(:bike) { double :bike, :working= => true, working?: false}
  describe '#docking'do
    it {is_expected.to respond_to :docking}
    it {is_expected.to respond_to(:docking).with(1).argument}
    it "is holding the expected instance of bike" do
      expect{(subject.docking(bike)[0]).to eq bike}
    end
    it 'should raise an error if station is full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.docking bike}
      expect {subject.docking bike}.to raise_error('station is full')
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

  describe '#report' do
    it {is_expected.to respond_to(:report).with(1).argument}
    it "report broken bike" do
     returned_bike = subject.docking(bike)[0]
     expect {subject.report(returned_bike)}.not_to raise_error
    end
  end

  describe '#broken_bikes' do
    it {is_expected.to respond_to :broken_bikes}
    it 'return broken bikes' do
      subject.docking(bike)
      subject.docking(bike)
      expect(subject.broken_bikes).to eq [bike , bike]
    it 'remove broken bikes' do
    subject.docking(bike)
    subject.broken_bikes
    expect(subject.bikes).to eq []
    end

  end

  describe '#release_bike' do
    it {is_expected.to respond_to :release_bike}
    it {expect{ subject.release_bike }.to raise_error('No bikes available at this dock')}
    it "not release broken bike" do
      subject.docking(bike)
      subject.report(bike)
      expect {subject.release_bike}.to raise_error('No working bikes')
    end
    it "only return working bike" do
      subject.docking(bike)
      subject.docking double(:working_bike, working?: true)
      subject.docking(bike)
      expect(subject.release_bike).to be_working
    end
  end
end
