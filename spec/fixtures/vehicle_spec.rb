require_relative '../spec_helper'

describe Vehicle do
  before(:each) do
    Vehicle.reset_all
  end

  let!(:vehicle){Vehicle.new}

 describe "Class methods" do
    it "keeps track of the employees that have been created" do
      expect(Vehicle.all).to include(vehicle)
    end

    it "can count how many employees have been created" do
      expect(Vehicle.count).to eq(1)
    end

    it "can reset the employees that have been created" do
      Vehicle.reset_all
      expect(Vehicle.count).to eq(0)
    end
  end

  describe "Instance methods" do
    it "can be initialized" do
      expect(vehicle).to be_an_instance_of(Vehicle)
    end

    it "can be fueled up" do
      expect(vehicle.fuel).to eq("Vrooooooooom!")
    end
  end
end