require '../lib/enemy/enemy'

class Tank < Enemy
	def initialize
		@name = "Tank"
		@hp = 300
		@atk = 100
		@def = 5
	end
end