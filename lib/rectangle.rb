require_relative "geometric_base"

class Rectangle < GeometricBase
  attr_writer :height, :width

  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    multiply(@height, @width)
  end

  def perimeter
    sum(multiply(@height, 2), multiply(@width, 2))
  end
end
