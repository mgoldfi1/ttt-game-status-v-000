
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
  WIN_COMBINATIONS.find do |win_combination|
index_1 = win_combination[0]
index_2 = win_combination[1]
index_3 = win_combination[2]
board[index_1] == board[index_2] && board[index_3] == board[index_1] && position_taken?(board, index_1)
  end
end

def full?(board)
board.all? do |i|
  i == "X" || i == "O"
    end
end

def draw?(board)
  if won?(board)
    false
  elsif full?(board)
    true
    end
end

def over?(board)
  if won?(board) || draw?(board)
    true
  end
end

def winner(board)
if won?(board)
  board[won?(board)[0]]
end
end
