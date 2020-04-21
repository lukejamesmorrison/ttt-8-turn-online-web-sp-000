

def valid_move?(board, index)
  # If move is not on board
  if index > board.length - 1
    return false
  end

  !position_taken?(board, index)
end

def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end
