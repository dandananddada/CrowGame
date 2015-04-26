class Heal

	def self.heal(hero)
		heal_hp = rand(20..40)
		hero.hp += heal_hp
		hero.sp -= 1
		p "使用治疗术恢复#{heal_hp}点血量，消耗1点技能点"
	end

end