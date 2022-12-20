require "pry"
VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

CHOICES = {
  rock: [:scissors, :lizard],
  paper: [:rock, :spock],
  scissors: [:paper, :lizard],
  lizard: [:paper, :spock],
  spock: [:rock, :scissors]
}

ABBREVIATIONS = {
  'r' => :rock,
  'sc' => :scissors,
  'p' => :paper,
  'l' => :lizard,
  'sp' => :spock
}

WINNING_SCORE = 3

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  CHOICES[first].include?(second)
end

def display_result(player, computer)
  if win?(player.to_sym, computer.to_sym)
    prompt("You won!")
  elsif win?(computer.to_sym, player.to_sym)
    prompt("You lost!")
  else
    prompt("It's a tie!")
  end
end

def score (first, second)
  if win?(first.to_sym, second.to_sym)
    return 1
  else
    return 0
  end
end

def grand_winner?(user_score, computer_score)
  if user_score == 3
    "User"
  elsif computer_score == 3
    "Computer"
  else
    nil
  end
end

def display_grand_winner(user_score, computer_score)
  if user_score == 3
    puts "You are the Grand Winner!"
  elsif computer_score == 3
    puts "Computer is the Grand Winner :("
  else
    nil
  end
end

def reset_score(user_score, computer_score)
  if user_score == WINNING_SCORE || computer_score == WINNING_SCORE
    user_score = 0 && computer_score = 0
  else
    nil
  end
end

choice_message = <<-MSG
Enter r for rock
    Enter sc for scissors
    Enter p for paper
    Enter l for lizard
    Enter sp for spock
MSG

user_score = 0
computer_score = 0
choice = ''
loop do
  prompt "Rock, Paper, Scissors, Lizard, Spock - first to 3 wins!"
  user_score == 0
  computer_score == 0

  loop do

    loop do
      prompt "Choose one: #{VALID_CHOICES.join(', ')}"
      prompt(choice_message)
      choice = gets.chomp

      if ABBREVIATIONS.keys.include?(choice)
        choice = ABBREVIATIONS[choice]
        break
      else
        prompt("Invalid choice, try again.")
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

  reset_score(user_score, computer_score)
  #puts ''
  #if user_score == 3
    ##puts "You are the grand winner!"
    #user_score = 0
    #computer_score = 0
  #else
    ##puts "Computer is the grand winner :("
    #user_score = 0
    #computer_score = 0
  #end
  #puts ''

  prompt 'Do you want to play again?'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thanks for playing!'
