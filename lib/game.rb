require_relative 'board_case'
require_relative 'board'
require_relative 'show'
require_relative 'player'

class Game
    attr_accessor :player1, :player2, :board, :show, :player, :continue
    def initialize
        puts "Rentre le nom de chaque joueur :"
        puts "Joueur 1 :"
        @player1 = Player.new(gets.chomp, "x")
        puts "Joueur 2 :"
        @player2 = Player.new(gets.chomp, "o")
        @player = [@player1, @player2]
        @board = Board.new
        @continue = true
    end

    def turn
        show = Show.new.show_board(@board)
        my_player = @player[rand(0..1)]
        @board.play_turn(my_player, @board)
        if @board.victory?(my_player)
            puts "le joueur #{my_player} a gagné !"
            game_end
        end
    end

    def new_round
        @board = Board.new
    end

    def end_game
        @board.show
        puts "Souhaites tu rejouer ? y pour oui, n pour non :"
        rep = gets.chomp
        if rep == 'y'
            new_round
        elsif rep == 'n'
            @continue = false
        end
    end

end