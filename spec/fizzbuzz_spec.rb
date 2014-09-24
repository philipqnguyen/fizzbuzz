require "minitest/autorun"
require "minitest/spec"
require "minitest/pride"
require "Fizzbuzz"

describe "Fizzbuzz basic" do
  before do
    @f = Fizzbuzz.new
  end

  it "should equal fizz" do
    @f.basic(6).must_equal "Fizz"
  end

  it "should equal buzz" do
    @f.basic(10).must_equal "Buzz"
  end

  it "should equal fizzbuzz" do
    @f.basic(15).must_equal "FizzBuzz"
  end

  it "should return number" do
    @f.basic(7).must_equal 7
  end
end

describe "FizzBuzz Advance" do

  it "should output correct array" do
    f = Fizzbuzz.new

    f.advance(15, "./fizz.csv").must_equal [1, 2, "fizz", 4, "buzz", "fizz", "siv", 8, "fizz", "buzz", 11, "fizz", 13, "siv", "fizzbuzz"]
  end
end
