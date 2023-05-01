def get_grade(score1, score2, score3)
  average_score = (score1 + score2 + score3) / 3

  case average_score
  when 0..59
    "F"
  when 60..69
    "D"
  when 70..79
    "C"
  when 80..89
    "B"
  when 90..100
    "A"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"