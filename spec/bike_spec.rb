require "bike"

describe Bike do
  describe "#working?" do
    it {is_expected.to respond_to :working?}
  end
  describe "#working" do
    it {is_expected.to respond_to :working}
    it {expect(subject.working).to eq true}
    it "is expected to be set" do
      subject.working = false
      expect(subject.working).to eq false
    end
  end
end
