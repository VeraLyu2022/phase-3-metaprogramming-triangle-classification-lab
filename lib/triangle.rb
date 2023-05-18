class Triangle
  # write code here
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    if length_1.zero? || length_2.zero? || length_3.zero? ||
      length_1.negative? || length_2.negative? || 
      length_3.negative? ||
      length_1 + length_2 <= length_3 || 
      length_1 + length_3 <= length_2 || 
      length_3 + length_2 <= length_1
      raise TriangleError
    elsif length_1 == length_2 && length_1 == length_3 && length_2 == length_3
      :equilateral 
    elsif length_1 == length_2 or length_1==length_3 or length_2==length_3
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError

  end
end

