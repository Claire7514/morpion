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

        @game_win = false
    end

    def play_turn(player, board)
        i = 1
        @count_turn += 1
        while @game_win == false && @count_turn != 9
            puts "À toi de jouer #{player.name} :"
            jeu = gets.chomp
            if board.arr_board[i] == " "
                board.arr_board[i] == player.symbol
            else
                puts "Vous ne pouvez pas jouer sur cette case."
            end
            i += 1
        end

    end

    def victory?

        if (@A1.content == "o" && @A2.content == "o" && @A3.content == "o") || @A1.content == "x" && @A2.content == "x" && @A3.content == "x"
            @game_win = true
        elsif (@A1.content == "o" && @A2.content == "o" && @A3.content == "o") || @A1.content == "x" && @A2.content == "x" && @A3.content == "x"
            @game_win = true
        elsif (@A1.content == "o" && @A2.content == "o" && @A3.content == "o") || @A1.content == "x" && @A2.content == "x" && @A3.content == "x"
            @game_win = true
        elsif @B1.content == "o" && @B2.content == "o" && @B3.content == "o" || @B1.content == "x" && @B2.content == "x" && @B3.content == "x"
            @game_win = true
        elsif @B1.content == "o" && @B2.content == "o" && @B3.content == "o" || @B1.content == "x" && @B2.content == "x" && @B3.content == "x"
            @game_win = true
        elsif @B1.content == "o" && @B2.content == "o" && @B3.content == "o" || @B1.content == "x" && @B2.content == "x" && @B3.content == "x"
            @game_win = true
        elsif @C1.content == "o" && @C2.content == "o" && @C3.content == "o" || @C1.content == "x" && @C2.content == "x" && @C3.content == "x"
            @game_win = true
        elsif @C1.content == "o" && @C2.content == "o" && @C3.content == "o" || @C1.content == "x" && @C2.content == "x" && @C3.content == "x"
            @game_win = true
        elsif @C1.content == "o" && @C2.content == "o" && @C3.content == "o" || @C1.content == "x" && @C2.content == "x" && @C3.content == "x"
            @game_win = true
        elsif @A1.content == "o" && @B2.content == "o" && @C3.content == "o" || @A1.content == "x" && @B2.content == "x" && @C3.content == "x"
            @game_win = true
        elsif @C1.content == "o" && @B2.content == "o" && @A3.content == "o" || @C1.content == "x" && @B2.content == "x" && @A3.content == "x"
            @game_win = true
        else @count_turn == 9 
            @game_win = false
        end

    end


end