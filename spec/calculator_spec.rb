require 'rspec'
require 'calculator'

describe Calculator, '#add' do
  it "returns zero" do
    expect(Calculator.add("0")).to eq(0)
  end
end