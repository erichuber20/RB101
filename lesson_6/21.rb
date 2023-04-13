SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct Aces
  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(current_total)
  current_total > 21
end

def detect_result(dealer_total, player_total)
  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_total, player_total)
  result = detect_result(dealer_total, player_total)

  case result
  when :player_busted
    puts "------------------------"
    puts "You busted! Dealer wins!"
    puts "------------------------"
  when :dealer_busted
    puts "------------------------"
    puts " Dealer busted! You win!"
    puts "------------------------"
  when :player
    puts "------------------------"
    puts "       You win!"
    puts "------------------------"
  when :dealer
    puts "------------------------"
    puts "      Dealer wins!"
    puts "------------------------"
  when :tie
    puts "------------------------"
    puts "      It's a tie!"
    puts "------------------------"
  end
end

def play_again?
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def round_end
  puts "------------------------"
  puts "       ROUND OVER"
  puts "------------------------"
end

def initial_display(dealer_score, player_score)
  system 'clear'
  prompt "Welcome to 21"
  prompt "You: #{player_score}"
  prompt "Dealer: #{dealer_score}"
end

def track_score(dealer_score, player_score, dealer_total, player_total)
  winner = detect_result(dealer_total, player_total)
  if winner == :player_busted || winner == :dealer
    dealer_score += 1
  elsif winner == :dealer_busted || winner == :player
    player_score += 1
  end
  prompt "You: #{player_score}"
  prompt "Dealer: #{dealer_score}"
end

player_score = 0
dealer_score = 0
loop do
  initial_display(dealer_score, player_score)

  # initialize variables
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, totaling #{player_total}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to hit or stay?"
      player_turn = gets.chomp.downcase
      break if player_turn.start_with?('h') || player_turn.start_with?('s')
      prompt "Sorry, must enter hit or stay."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      player_total = total(player_cards)
      prompt 'You hit!'
      prompt "Your cards are now: #{player_cards}, totaling #{player_total}"
    end

    break if player_turn.start_with?('s') || busted?(player_total)
  end

  if busted?(player_total)
    display_result(dealer_total, player_total)
    round_end
    dealer_score += 1
    puts "You: #{player_score}"
    puts "Dealer: #{dealer_score}"
    # track_score(dealer_score, player_score, dealer_total, player_total)
    play_again? ? next : break
  else
    prompt "You stayed at #{player_total}"
  end

  # dealer turn
  prompt "Dealer's turn..."

  loop do
    break if dealer_total >= 17

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    dealer_total = total(dealer_cards)
    prompt "Dealer's cards are now #{dealer_cards}"
  end

  if busted?(dealer_total)
    prompt "Dealer's total is now: #{dealer_total}"
    display_result(dealer_total, player_total)
    player_score += 1
    puts "You: #{player_score}"
    puts "Dealer: #{dealer_score}"
    # track_score(dealer_score, player_score, dealer_total, player_total)
    round_end
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  # both player and dealer stays - compare
  prompt "Dealer has #{dealer_cards}, totaling #{dealer_total}"
  prompt "You have #{player_cards}, totaling #{player_total}"

  display_result(dealer_total, player_total)

  winner = detect_result(dealer_total, player_total)

  if winner == :dealer || winner == :player_busted
    dealer_score += 1
  elsif winner == :player || winner == :dealer_busted
    player_score += 1
  elsif winner == :tie
    nil
  end

  puts "You: #{player_score}"
  puts "Dealer: #{dealer_score}"
      # track_score(dealer_score, player_score, dealer_total, player_total)
  
  round_end

  if player_score == 5
    prompt "You are the Grand Winner! Game Over"
    player_score = 0
    dealer_score = 0
  elsif dealer_score == 5
    prompt "Dealer is the Grand Winner! Game Over"
    player_score = 0
    dealer_score = 0
  end
  break unless play_again?
end

prompt "Thanks for playing 21, good bye!"
