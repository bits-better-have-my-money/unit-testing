require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# RSpec tests:

# test Calculator class
RSpec.describe Calculator do
  # test the add method
  describe '#add' do
    # description of method responsibility
    it 'should return the sum of two numbers' do
      # actual test
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(10)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-3, 1)
      expect(result).to eq(-2)
    end
  end
end