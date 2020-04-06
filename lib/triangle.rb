class Triangle

  attr_reader :side_1, :side_2, :side_3


  def initialize(side_1, side_2, side_3)
    @side_1, @side_2, @side_3 = side_1, side_2, side_3
  end

  def kind
    if a + b > c && a + c > b && c + b > a
      if a == b && b == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    else
        raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Not a valid triangle."
    end
  end

end
