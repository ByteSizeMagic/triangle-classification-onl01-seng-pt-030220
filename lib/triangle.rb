class Triangle

  attr_reader :side_1, :side_2, :side_3


  def initialize(side_1, side_2, side_3)
    @side_1, @side_2, @side_3 = side_1, side_2, side_3
  end

  def kind

  end

  class TriangleError < StandardError
    def message
      "Not a valid triangle."
    end
  end

end
