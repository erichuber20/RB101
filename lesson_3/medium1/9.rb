def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# What is the return value of the bar(foo) method?

# value from foo will always be 'yes' 
# yes == no would then be fals so ternary operator will return 'no'
