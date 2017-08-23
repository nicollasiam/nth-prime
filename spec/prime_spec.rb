require 'prime'
require_relative '../prime_numbers'

describe "Check the return for negative numbers" do
  it "Check for nth of -1" do
    expect(nth_prime(-1)).to eq(nil)
  end

  it "Check for nth of -10" do
    expect(nth_prime(-10)).to eq(nil)
  end
end

describe "Check the return for zero" do
  it "Check for 0-th prime" do
    expect(nth_prime(0)).to eq(nil)
  end
end

describe "Check value for 168 first primes (all primes less than 1000)" do
  it "Check for frist 168 primes" do
    168.times do |number|
      expect(nth_prime(number)).to eq(Prime.first(number).last)
    end
  end
end
