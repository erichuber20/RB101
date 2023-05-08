def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  sides.sort!

  case
  when sides[0] + sides[1] < sides[2], sides.any? { |side| side == 0 }
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2]
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
p triangle(10, 10, 15) == :isosceles