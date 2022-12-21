VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_CHOICES.freeze

CHOICES = {
  rock: [:scissors, :lizard],
  paper: [:rock, :spock],
  scissors: [:paper, :lizard],
  lizard: [:paper, :spock],
  spock: [:rock, :scissors]
}
CHOICES.freeze

ABBREVIATIONS = {
  'r' => :rock,
  'sc' => :scissors,
  'p' => :paper,
  'l' => :lizard,
  'sp' => :spock
}
ABBREVIATIONS.freeze

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  CHOICES[first].include?(second)
end

def display_result(player, computer)
  if win?(player.to_sym, computer.to_sym)
    prompt 'You won!'
  elsif win?(computer.to_sym, player.to_sym)
    prompt 'You lost!'
  else
    prompt "It's a tie!"
  end
end

def score(first, second)
  if win?(first.to_sym, second.to_sym)
    1
  else
    0
  end
end

def grand_winner?(user_score, computer_score)
  if user_score == 3
    'User'
  elsif computer_score == 3
    'Computer'
  end
end

def display_grand_winner(user_score, computer_score)
  if user_score == 3
    puts 'You are the Grand Winner!'
  elsif computer_score == 3
    puts 'Computer is the Grand Winner :('
  end
end

choice_message = <<-MSG
  Type r for rock
    Type sc for scissors
    Type p for paper
    Type l for lizard
    Type sp for spock
MSG

user_score = 0
computer_score = 0
choice = ''
loop do
  prompt 'Rock, Paper, Scissors, Lizard, Spock - first to 3 wins!'
  user_score = 0
  computer_score = 0

  loop do
    loop do
      prompt "Choose one: #{VALID_CHOICES.join(', ')}"
      prompt(choice_message)
      choice = gets.chomp

      if ABBREVIATIONS.keys.include?(choice)
        choice = ABBREVIATIONS[choice]
        break
      else
        prompt 'Invalid choice, try again.'
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt "You choose: #{choice}; Computer chose: #{computer_choice}"
    display_result(choice, computer_choice)

    user_score += score(choice, computer_choice)
    computer_score += score(computer_choice, choice)
    puts "Your score: #{user_score}"
    puts "Computer score: #{computer_score}"

    display_grand_winner(user_score, computer_score)
    break if grand_winner?(user_score, computer_score)
  end

  user_score = 0
  computer_score = 0

  prompt 'Do you want to play again?'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thanks for playing!'
