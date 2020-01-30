require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/board_case'
require_relative 'lib/show'

puts "M O R P I O N"


class Application
    def perform
        my_game = Game.new
        while my_game.continue == true
            my_game.turn
        end
    end
  
end
  
Application.new.perform

binding.pry