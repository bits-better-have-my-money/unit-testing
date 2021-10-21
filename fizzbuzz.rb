# print out all numbers from 1 to 100. For each number divisible by 3, print 'fizz' instead of the number. For each number divisible  by 5, print 'buzz' instead of the number. For each divisible by both 3 and 5, print 'fizzbuzz' instead of the number.

require 'rspec'

class Fizzbuzz
  def output(number)
    return "FIZZBUZZ" if number % 15 == 0 
    return "FIZZ" if number % 3 == 0
    return "BUZZ" if number % 5 == 0 
    return number
  end

  def run
    (1..100).each do |number|
      puts output(number)
    end
  end
end

fizzbuzz = Fizzbuzz.new
fizzbuzz.run

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fb = Fizzbuzz.new
      expect(fb.output(1)).to eq(1)
    end
    it 'should return 2 if given 2' do
      fb = Fizzbuzz.new
      expect(fb.output(2)).to eq(2)
    end
    it 'should return FIZZ if given 3' do
      fb = Fizzbuzz.new
      expect(fb.output(3)).to eq("FIZZ")
    end
    it 'should return BUZZ if given 5' do
      fb = Fizzbuzz.new
      expect(fb.output(5)).to eq("BUZZ")
    end
    it 'should return FIZZ if given 6' do
      fb = Fizzbuzz.new
      expect(fb.output(6)).to eq("FIZZ")
    end
    it 'should return BUZZ if given 10' do
      fb = Fizzbuzz.new
      expect(fb.output(10)).to eq("BUZZ")
    end
    it 'should return FIZZBUZZ if given 15' do
      fb = Fizzbuzz.new
      expect(fb.output(15)).to eq("FIZZBUZZ")
    end
    it 'should return FIZZBUZZ if given 45' do
      fb = Fizzbuzz.new
      expect(fb.output(45)).to eq("FIZZBUZZ")
    end
  end
end