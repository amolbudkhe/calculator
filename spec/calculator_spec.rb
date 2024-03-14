require 'rspec'
require 'calculator'

describe Calculator, '#add' do

  it "should return zero for empty string" do 
    expect(Calculator.add("")).to eq(0)
  end

  it "returns zero" do
    expect(Calculator.add("0")).to eq(0)
  end

  context "single number addition" do
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

  context "double number addition" do
    it "should return 5 for '2,3'" do
      expect(Calculator.add('2,3')).to eq(5)
    end

    it "should return 40 for '32, 8" do
      expect(Calculator.add('32, 8')).to eq(40)
    end
  end

  context "n number addition" do
    it "should return 35 for '10,17,  8" do
      expect(Calculator.add('10,17,  8')).to eq(35)
    end

    it "should return 84 for '10, 20, 30, 5, 7, 9, 3'" do
      expect(Calculator.add('10, 20, 30, 5, 7, 9, 3')).to eq(84)
    end
  end
end