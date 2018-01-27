# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board)
  if row_win?(board) || col_win?(board) || diag_win?(board)
    return true
  else
    return false
  end
    
end

def row_win?(board)
  char1 = board[0]
  char2 = board[3]
  char3 = board[6]
  if (board[1] = char1 && board[2] = char1) || (board[4] = char2 && board[5] = char2) || (board[7] = char3 && board[8] = char3)
    return true
  else
    return false
  end
end

def col_win?(board)
  char1 = board[0]
  char2 = board[1]
  char3 = board[2]
  if (board[3] = char1 && board[6] = char1) || (board[4] = char2 && board[7] = char2) || (board[5] = char3 && board[8] = char3)
    return true
  else
    return false
  end
end

def diag_win?(board)
  char1 = board[0]
  char2 = board[2]
  if (board[4] = char1 && board[8] = char1) || (board[4] = char2 && board[6] = char2)
    return true
  else
    return false
  end
end