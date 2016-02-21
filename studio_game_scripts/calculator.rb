#!/usr/bin/env ruby

class Calculator
  def initialize(value1, value2)
    @value1 = value1
    @value2 = value2
  end
  def add
    @value1 + @value2
  end
  def subtract
    @value1 - @value2
  end
end

calc = Calculator.new(20, 11)
puts calc.add
puts calc.subtract
