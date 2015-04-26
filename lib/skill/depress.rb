class Depress
	def self.weak(hero,enemy)
		weak_level = [0.05,0.1,0.15,0.20]
		weak = weak_level[rand(1..4)]
		depress = enemy.atk * weak
		enemy.atk -= depress
		hero.sp -= 1
		p "使用咒印虚弱，降低#{enemy.name}攻击力#{depress}点，消耗一点技能点"
	end
end