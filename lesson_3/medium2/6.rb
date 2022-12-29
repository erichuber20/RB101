def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# how could we simplify this method without changing its return value?
# color == "blue" || color == "green" ? true : false 

# LS solution
def color_valid(color)
  color == "blue" || color == "green"
end
# ruby will automatically evaluate statements so the first method is redundant
