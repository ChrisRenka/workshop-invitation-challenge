require_relative "geometric_base"

class Sphere < GeometricBase
  attr_writer :radius
  
  def initialize(radius)
    @radius = radius
  end

  def area
    multiply(multiply(exponentiation(@radius, 2), PI), 4)
  end

  def perimeter
    self.area
    #assuming perimeter equals area for a sphere
  end

  def volume
    multiply(divide(4, 3), multiply(exponentiation(@radius, 3), PI))
  end
end
