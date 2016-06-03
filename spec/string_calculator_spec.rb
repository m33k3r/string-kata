#Advanced developers: Uncomment the following understand more about the RSpec "focus" filter
#require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'string_calculator'

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
RSpec.describe StringCalculator, "#add" do

  it "returns 0 for empty string" do
    expect(StringCalculator.add("")).to eql(0)
  end

  it "returns 0 for 0" do
    expect(StringCalculator.add('0')).to eql(0)
  end

  it "returns 5 for 5" do
    expect(StringCalculator.add('5')).to eql(5)
  end

  it "returns 3 for 1,2" do
    expect(StringCalculator.add('1,2')).to eql(3)
  end

  it "returns 16 for 7,9" do
    expect(StringCalculator.add('7,9')).to eql(16)
  end

  it "returns 100 for 50,50" do
    expect(StringCalculator.add('50,50')).to eql(100)
  end

  it "returns 161 for 15,22,45,79" do
    expect(StringCalculator.add('15,22,45,79')).to eql(161)
  end

  it "returns 6 for 1\n2,3" do
    expect(StringCalculator.add('1\n2,3')).to eql(6)
  end

  it "negative numbers should fail" do
    expect {StringCalculator.add('1\n2,-3')}.to raise_error('Negative numbers not allowed.')
  end

  it "negative numbers should fail" do
    expect {StringCalculator.add('-1,2,-3')}.to raise_error('Negative numbers not allowed. The following exist: [-1, -3]')
  end

  it "returns 6 for 1, 2, 3, 1000, ignore greater than 1000" do
    expect(StringCalculator.add('1, 2, 3, 1000')).to eql(6)
  end

end
