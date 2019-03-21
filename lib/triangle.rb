class Triangle

  def initialize(line1, line2, line3)
    @line1 = line1
    @line2 = line2
    @line3 = line3
  end

  def kind
    if @line1 == 0 || @line2 == 0 || @line3 == 0 || @line1 + @line2 <= @line3 || @line2 + @line3 <= @line1 || @line3 + @line1 <= @line2
      raise TriangleError
    elsif @line1 == @line2 && @line2 == @line3
      :equilateral
    elsif @line2 == @line3 || @line1 == @line3 || @line1 == @line2
      :isosceles
    else
      :scalene
    end
  end


  class TriangleError < StandardError
  end
end
