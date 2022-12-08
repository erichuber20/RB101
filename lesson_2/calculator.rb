require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

puts MESSAGES.inspect

def prompt(message)
  puts "=> #{message}"
end

def valid_number(num)
  num.to_i != 0
end

def integer?(input)
  input.to_i.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def float?(input)
  input.to_f.to_s == input
end

def operation_to_message(oper)
  word = case oper
          when '1'
           'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
          end
  word
end

prompt(MESSAGES['welcome'])
name = ''
loop do
  name = gets.chomp

  break unless name.empty?

  prompt(MESSAGES['valid_name'])
end

prompt "Hi, #{name}!"
number1 = ''
loop do
  loop do
    prompt (MESSAGES['first_number'])
    number1 = gets.chomp

    break if number?(number1)

    prompt(MESSAGES['invalid_number'])
  end

  number2 = ''
  loop do
    prompt (MESSAGES['second_number'])
    number2 = gets.chomp

    break if number?(number2)

    prompt(MESSAGES['invalid_number'])
  end

  operator_prompt = <<-MSG
    "What operation would you like to perform?
    1 add
    2 subtract
    3 multiply
    4 divide"
  MSG

  prompt operator_prompt

  operator = ''
  loop do
    operator = gets.chomp
    break if ['1', '2', '3', '4'].include?(operator)

    prompt(MESSAGES['invalid_operator'])
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result =  case operator
            when '1'
              number1.to_f + number2.to_f
            when '2'
              number1.to_f - number2.to_f
            when '3'
              number1.to_f * number2.to_f
            when '4'
              number1.to_f / number2.to_f
            end

  prompt "The result is #{result}"
  prompt(MESSAGES['another_calculation'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['thanks'])
