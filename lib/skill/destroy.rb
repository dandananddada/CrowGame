class Destroy

	def self.fire(hero,enemy)
		damage = rand(40..80)
		enemy.hp -= damage
		hero.sp -= 1
		p "使用火球术对#{enemy.name}造成#{damage}点伤害，消耗1点技能点。"
	end
end