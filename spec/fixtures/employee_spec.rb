require_relative '../spec_helper'

describe Employee do
  before(:each) do
    Employee.reset_all
  end

  let!(:employee){Employee.new}

  describe "Class methods" do
    it "keeps track of the employees that have been created" do
      expect(Employee.all).to include(employee)
    end

    it "can count how many employees have been created" do
      expect(Employee.count).to eq(1)
    end

    it "can reset the employees that have been created" do
      Employee.reset_all
      expect(Employee.count).to eq(0)
    end
  end

  describe "Instance methods" do
    it "can be initialized" do
      expect(employee).to be_an_instance_of(Employee)
    end

    it "can be payed" do
      expect(employee.pay).to eq("Wooohooooo!")
    end
  end
end
