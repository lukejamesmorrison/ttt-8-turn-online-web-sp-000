def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  # If move is not on board
  if index > board.length - 1 || index < 0
    return false
  end

  !position_taken?(board, index)
end

def move(board, index, character = "X")
  if board[index] === " "
    if valid_move?
      board[index] = character
    end
    display_board(board)
  end
end



board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
puts valid_move?(board, -1)
