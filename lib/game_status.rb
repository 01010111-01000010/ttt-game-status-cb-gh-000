# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board)
  if (board[0] == "X" && board[1] == "X" && board[2] == "X")
    return [0, 1, 2]
  elsif (board[3] == "X" && board[4] == "X" && board[5] == "X")
    return [3, 4, 5]
  elsif (board[6] == "X" && board[7] == "X" && board[8] == "X")
    return [6, 7, 8]
  else
    return false
  end

end

