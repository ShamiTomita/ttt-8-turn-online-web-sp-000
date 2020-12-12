def turn(board)
end 

def display_board(board)
  puts "#{board[0]},#{board[1]},#{board[2]}"
  puts "---------"
end 

def input_to_index(input)
  input.to_i-1
end 

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end 

def valid_move?(board, index)
  if index.between(0,8) && position_taken?(board, index) == false 
    return true 
  else 
    return false
  end 
end 
