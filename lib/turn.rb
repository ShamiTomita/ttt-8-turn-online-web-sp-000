def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def input_to_index(input)
  input.to_i-1
end 

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end 

def move(board, index, token = "X")
 board[index] = token
end 

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false 
    return true 
  else 
    return false
  end 
end 

def turn(board, index, token)
  display(board)
  
  input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, token)
  else turn(board, index, token)
  end 
end 
