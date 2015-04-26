require '../lib/print'
require '../lib/enemy/tank'
#require '../lib/hero'
# require '../lib/cli'

class Game
	
	def start
		#print = Print.new
		hero  = Hero.new
		tank = Tank.new
		# p tank.hp
		#print.history
		#print.guide
		CLI.inject(hero,tank)
		# CLI.input
		# p tank.hp
		while tank.hp > 0 do
		 	CLI.input
		end
		
	end

	def your_turn
		while tank.hp > 0 do
		 	CLI.input
		end
	end
end
