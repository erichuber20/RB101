def prompt(message)
  puts "=> #{message}"
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

prompt "Let's calculate your mortgage!"
loop do
  principal = ''
  loop do
    prompt 'How much is your loan principal?'
    principal = gets.chomp

    break if number?(principal)

    prompt 'Invalid number, try again.'
  end

  interest_rate = ''
  loop do
    prompt 'What is your monthly interest rate?'
    interest_rate = gets.chomp

    break if number?(interest_rate)

    prompt 'Invalid number, try again.'
  end

  loan_duration = ''
  loop do
    prompt 'What is the loan duration in years?'
    loan_duration = gets.chomp

    break if number?(loan_duration)

    prompt 'Invalid number, try again.'
  end
  
  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = loan_duration.to_i * 12

  payment = principal.to_i * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)** -months))
  prompt "Your monthly payment is: $#{format('%.2f', payment)}"
  prompt 'Another calculation?'
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end