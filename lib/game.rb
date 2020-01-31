require_relative 'board_case'
require_relative 'board'
require_relative 'show'
require_relative 'player'

class Game
    attr_accessor :player1, :player2, :board, :show, :player, :continue
   
    #initialisation des joueurs, du plateau
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

    #méthode qui initialise un nouveau jeu
    def new_round
        @board = Board.new
    end

    #méthode qui propose au joueur si il veut rejouer ou non
    def end_game
        puts "Souhaites tu rejouer ? y pour oui, n pour non :"
        rep = gets.chomp
        if rep == 'y'
            new_round
        elsif rep == 'n'
            @continue = false
        end
    end

    def turn
        @board.play_turn(@player, @board)
        end_game
    end

end