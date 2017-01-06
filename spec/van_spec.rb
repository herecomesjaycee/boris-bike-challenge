require 'van'

describe Van do
	
	describe '#pick_up' do
		    it {is_expected.to respond_to(:pick_up).with(1).argument}
	end
end