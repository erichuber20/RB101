INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
WINS_TO_BE_GRAND_WINNER = 5
PLAYERS_AVAILABLE = ['Player', 'Computer']

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}, Computer is a #{COMPUTER_MARKER}."
  puts ''
  puts '     |     |     '
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts '     |     |     '
  puts '-----+-----+-----'
  puts '     |     |     '
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts '     |     |     '
  puts '-----+-----+-----'
  puts '     |     |     '
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts '     |     |     '
  puts ''
end
# rubocop:enable Metrics/AbcSize

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
def computer_places_piece!(brd)
  square = nil

  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # pick square 5
  if !square
    if brd[5] == INITIAL_MARKER
      square = 5
    end
  end

  # just pick a square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

# rubocop:disable Style/EmptyElse
def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end
# rubocop:enable Style/EmptyElse

def first_turn
  first = ''
  loop do
    prompt "Who goes first? Enter 'Player' or 'Computer'"
    first = gets.chomp
    break if first == 'Player' || first == 'Computer'
    puts "Sorry, that is not a valid entry. Try again."
  end
  first
end

def player_first_play(board)
  loop do
    display_board(board)

    player_places_piece!(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)
  end
end

def computer_first_play(board)
  loop do
    display_board(board)

    computer_places_piece!(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)

    player_places_piece!(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)
  end
end

computer_wins = 0
player_wins = 0
no_of_ties = 0

loop do
  board = intialize_board

  if first_turn == 'Player'
    puts 'Player goes first'
    sleep(2)
    player_first_play(board)
  else
    puts 'Computer goes first'
    sleep(2)
    computer_first_play(board)
  end

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    player_wins += 1 if detect_winner(board) == 'Player'
    computer_wins += 1 if detect_winner(board) == 'Computer'
  else
    prompt "It's a tie!"
    no_of_ties += 1
  end

  prompt "Player Wins: #{player_wins}"
  prompt "Computer Wins: #{computer_wins}"
  prompt "Ties: #{no_of_ties}"

  if player_wins == WINS_TO_BE_GRAND_WINNER
    prompt "Player is the Grand Winner!"
    player_wins = 0
    computer_wins = 0
    no_of_ties = 0
  elsif computer_wins == WINS_TO_BE_GRAND_WINNER
    prompt "Computer is the Grand Winner"
    player_wins = 0
    computer_wins = 0
    no_of_ties = 0
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Goodbye."
