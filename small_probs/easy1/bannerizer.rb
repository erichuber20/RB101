def print_in_box(text)
  if text.size > 76 
    puts "Text is too long, try again."
  else 
    horizontal_rule = "+#{'-' * (text.size + 2)}+"
    empty_line = "|#{' ' * (text.size + 2)}|"

    puts horizontal_rule
    puts empty_line
    puts "| #{text} |"
    puts empty_line
    puts horizontal_rule
  end
end

print_in_box('Go Hawks! hfkguhfghkdghdfdfgdfjjjajsdjajdsfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf')