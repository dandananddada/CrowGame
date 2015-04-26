class Attack
	def self.comobo(hero,enemy)
		twice = rand(1..3)
		damage = hero.atk * twice - enemy.def
		enemy.hp -= damage
		hero.sp -= 1
		p "使用连击对#{enemy.name}发动#{twice}次连击造成#{damage}点伤害，消耗一点技能点"
	end
end