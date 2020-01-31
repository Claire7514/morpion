require_relative 'board_case'
require_relative 'show'

class Board

    attr_accessor :arr_board, :count_turn, :game_win

    def initialize
        @A1 = BoardCase.new("A1")
        @A2 = BoardCase.new("A2")
        @A3 = BoardCase.new("A3")
        @B1 = BoardCase.new("B1")
        @B2 = BoardCase.new("B2")
        @B3 = BoardCase.new("B3")
        @C1 = BoardCase.new("B1")
        @C2 = BoardCase.new("B2")
        @C3 = BoardCase.new("B3")

        @arr_board = [@A1.content, @A2.content, @A3.content, @B1.content, @B2.content, @B3.content, @C1.content, @C2.content, @C3.content]
        
        @count_turn = 0
    end

    def play_turn(player, board)
        i = rand(0..1)
        while @count_turn != 9
            
            Show.new.show_board(board)
            puts "À toi de jouer #{player[i].name} :"
            choice = gets.chomp
            if choice == "A1" && board.arr_board[0] == " "
                board.arr_board[0] = player[i].symbol
            elsif choice == "A2" && board.arr_board[1] == " "
                board.arr_board[1] = player[i].symbol    
            elsif choice == "A3" && board.arr_board[2] == " "
                board.arr_board[2] = player[i].symbol    
            elsif choice == "B1" && board.arr_board[3] == " "
                board.arr_board[3] = player[i].symbol    
            elsif choice == "B2" && board.arr_board[4] == " "
                board.arr_board[4] = player[i].symbol    
            elsif choice == "B3" && board.arr_board[5] == " "
                board.arr_board[5] = player[i].symbol    
            elsif choice == "C1" && board.arr_board[6] == " "
                board.arr_board[6] = player[i].symbol    
            elsif choice == "C2" && board.arr_board[7] == " "
                board.arr_board[7] = player[i].symbol    
            elsif choice == "C3" && board.arr_board[8] == " "
                board.arr_board[8] = player[i].symbol    
            else
                puts "Vous ne pouvez pas jouer sur cette case."
                i = (i - 1) % 2
            end
            if "f" != victory?(board)
                if  victory?(board) == player[1].symbol || victory?(board) == player[0].symbol
                    if "o" == player[1].symbol
                        puts "le joueur #{player[1].name} a gagné !"
                        return
                    elsif "x" == player[0].symbol
                        puts "le joueur #{player[0].name} a gagné !"
                        return
                    end
                end
            else
                puts "Match nul ..."
                return
            end
            @count_turn += 1
            i = (i + 1) % 2
        end
    end

    def victory?(board)
        if (board.arr_board[0] == board.arr_board[1] && board.arr_board[1] == board.arr_board[2]) 
            return board.arr_board[0]
        elsif (board.arr_board[3] == board.arr_board[4] && board.arr_board[4] == board.arr_board[5])
            return board.arr_board[3]
        elsif (board.arr_board[6] == board.arr_board[7] && board.arr_board[7] == board.arr_board[8])
            return board.arr_board[6]
        elsif (board.arr_board[0] && board.arr_board[4] && board.arr_board[4] == board.arr_board[8])
            return board.arr_board[1]
        elsif (board.arr_board[6] == board.arr_board[4] && board.arr_board[4] == board.arr_board[2])
            return board.arr_board[1]
        elsif @count_turn == 9 
            return f
        end
    end
end