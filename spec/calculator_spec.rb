require 'rspec'
require 'calculator'

describe Calculator, '#add' do

  it "should return zero for empty string" do 
    expect(Calculator.add("")).to eq(0)
  end

  it "returns zero" do
    expect(Calculator.add("0")).to eq(0)
  end

  context "single number" do
    it "should return zero for 0" do
      expect(Calculator.add("0")).to eq(0)
    end

    it "should return 6 for 6" do
      expect(Calculator.add("6")).to eq(6)
    end

    it "should return 40 for 40" do
      expect(Calculator.add("40")).to eq(40)
    end
  end
end