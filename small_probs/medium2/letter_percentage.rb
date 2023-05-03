LOWER_CASE = "qwertyuiopasdfghjklzxcvbnm"
UPPER_CASE = "QWERTYUIOPASDFGHJKLZXCVBNM"

def percentage_calc(int, string)
  (int.to_f/ string.length) * 100
end

def letter_percentages(string)
  lower_case_count = 0
  upper_case_count = 0
  neither_count = 0

  string.chars.each do |char|
    if LOWER_CASE.include?(char)
      lower_case_count += 1
    elsif UPPER_CASE.include?(char)
      upper_case_count += 1
    else
      neither_count += 1
    end
  end

  percentages = {
    lowercase: percentage_calc(lower_case_count, string),
    uppercase: percentage_calc(upper_case_count, string),
    neither: percentage_calc(neither_count, string)
  }
end
  
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }