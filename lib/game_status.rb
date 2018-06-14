# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  top_row = [0,1,2]
  win_index_1 = top_row[0]
  win_index_2 = top_row[1]
  win_index_3 = top_row[2]
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  if position_1 == "X" && position_2 == "X"  && position_3 == "X"
    top_row
  end
  if WIN_COMBINATIONS.none?
    false
  end





end
