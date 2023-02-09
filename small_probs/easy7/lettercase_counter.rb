UPPERCASE_LETTERS = ('A'..'Z').to_a
LOWERCASE_LETTERS = ('a'..'z').to_a

def letter_case_count(string)
  lettercase_counter = { lowercase: 0, uppercase: 0 , neither: 0 }

  string.chars.each do |char|
    if LOWERCASE_LETTERS.include?(char)
      lettercase_counter[:lowercase] += 1
    elsif UPPERCASE_LETTERS.include?(char)
      lettercase_counter[:uppercase] += 1
    else
      lettercase_counter[:neither] += 1
    end
  end

  lettercase_counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }