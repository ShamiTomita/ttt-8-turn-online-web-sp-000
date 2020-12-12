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
  if index.between?(0,8) && !position_taken?(board, index)
    return true 
  else 
    return false
  end 
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  index = input.to_i
  if valid_move?
    move(board, index, token = "X")
    return display_board(board)
  else turn(board)
  end 
end 
