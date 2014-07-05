require_relative '../spec_helper'

describe Hyena do
  before(:each) do
    Hyena.reset_all
  end

  let!(:hyena){Hyena.new}

  describe "Class methods" do
    it "keeps track of the hyenas that have been created" do
      expect(Hyena.all).to include(hyena)
    end

    it "can count how many hyenas have been created" do
      expect(Hyena.count).to eq(1)
    end

    it "can reset the hyenas that have been created" do
      Hyena.reset_all
      expect(Hyena.count).to eq(0)
    end
  end

  describe "Instance methods" do
    it "can be initialized" do
      expect(hyena).to be_an_instance_of(Hyena)
    end

    it "can be fed foods it doesn't like" do
      expect(hyena.feed("apples")).to eq("grrrrrrrrr")
    end

    it "can be fed foods it loves" do
      expect(hyena.feed("crunchy bones")).to eq("yipyipyip")
    end
  end
end