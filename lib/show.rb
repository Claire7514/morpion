require_relative 'board'
require_relative 'board_case'

class Show
    def show_board(board)
      puts "   1   2  3"
      puts " A #{board.arr_board[0]} | #{board.arr_board[1]} | #{board.arr_board[2]}"
      puts "   ---------"
      puts " B #{board.arr_board[3]} | #{board.arr_board[4]} | #{board.arr_board[5]}"
      puts "   ---------"
      puts " C #{board.arr_board[6]} | #{board.arr_board[7]} | #{board.arr_board[8]}"
    end
  end