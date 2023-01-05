def triangle(int, right_angle = 'top right')
  case right_angle
  when 'top right'  
    spaces = 0
    stars = int

    int.times do |x|
      puts (' ' * spaces) + ('*' * stars)
      spaces += 1
      stars -= 1
    end
  when 'top left'
    spaces = 0
    stars = int

    int.times do |x|
      puts ('*' * stars) + (' ' * spaces)
      spaces += 1
      stars -= 1
    end
  when 'bottom right'
    spaces = int - 1
    stars = 1

    int.times do |x|
      puts (' ' * spaces) + ('*' * stars)
      spaces -= 1
      stars += 1
    end
  when 'bottom left'
    spaces = int - 1
    stars = 1

    int.times do |x|
      puts ('*' * stars) + (' ' * spaces)
      spaces -= 1
      stars += 1
    end
  end
end

triangle(9, 'bottom right')
