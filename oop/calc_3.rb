# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module SimpleOperation

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

module ComplexeOperation

  def square_root(number)
    Math.sqrt(number)
  end

end

class SimpleCalculator
  include SimpleOperation

end

class FancyCalculator
  include SimpleOperation
  include ComplexeOperation
end

class WhizBangCalculator
  include SimpleOperation
  include ComplexeOperation

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

simpleCalculator = SimpleCalculator.new
fancyCalculator = FancyCalculator.new
whizBangCalculator = WhizBangCalculator.new
puts simpleCalculator.multiply(6, 7)
puts fancyCalculator.square_root(81)
puts whizBangCalculator.exponent(5, 2)
