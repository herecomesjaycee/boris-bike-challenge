require 'van'

describe Van do
	let(:good_bike) {double :bike, working?: true}
	let(:bad_bike)  {double :bike, working?: false}
	let(:station)   {double :station, broken_bikes: [bad_bike,bad_bike]}
	describe '#pick_up' do
	  it {is_expected.to respond_to(:pick_up).with(1).argument}
		it {expect(subject.contains).to eq [bad_bike,bad_bike]}
	end
end
