require '../lib/hero'
require '../lib/skill'
require '../lib/skill/heal'
require '../lib/skill/destroy'
require '../lib/skill/attack'
require '../lib/skill/depress'


class CLI

	# @hero = Hero.new

	def self.inject(hero,enemy)
		@hero = hero
		@enemy = enemy
	end

	def self.input
		input = STDIN.gets.chomp
		cli = input.strip.split(/\s+/)
		CLI.reslove(cli)
	end

	def self.reslove(cli)
		case cli[0]
		when "hero"
			@hero.hero_info
			if cli.length > 1
				case cli[1]
				when "get"
					if cli.length > 2
					 	case cli[2] 
					 	when "skill"
					 		# skill_index = cli[3]
					 		@hero.get_skill(cli[3])
					 	end
					 end 
				else
				end
			end

		when "skill"
			if cli.length > 1
				case cli[1]
				when "list"
					puts "Show all list"
				when "set"
					#this should be set skill method.
					if cli.length > 2
						puts cli[2]
					end
				when "heal"
					Heal.heal(@hero)
				when "destroy"
					Destroy.fire(@hero,@enemy)
				when "attack"
					Attack.comobo(@hero,@enemy)
				when "depress"
					Depress.weak(@hero,@enemy)
				end
			end
		when "attack"
			@hero.attack(@enemy)
		when "block"
		else
			puts "else"
		end
	end
end
