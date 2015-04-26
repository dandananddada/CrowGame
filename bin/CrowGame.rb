require 'thor'
require '../lib/game'

class CrowGameCLI < Thor

	desc 'start', 'Start The Game'
	def start
		game = Game.new
		game.start
	end
end

CrowGameCLI.start(ARGV)
