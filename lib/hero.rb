class Hero
	attr_accessor :hp, :sp, :skills, :atk, :def

	def initialize
		@hp = 100
		@sp = 12
		@atk =100
		@skills = []
	end

	def hero_info
		puts "目前生命值（HP）：#{@hp}"
		puts "目前技能值（SP）：#{@sp}"
		puts "目前技能：#{@skills}"
	end

	def get_skill(skill_index)
		@skills.push(skill_index)
	end

	def attack(enemy)
		damage = @atk - enemy.guard
		if damage >= 0
			enemy.hp -= damage
		end
		puts "对#{enemy.name}造成了#{damage}点伤害"
	end
end