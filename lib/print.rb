require '../lib/cli'
class Print

	def history
		puts "欢迎来到指令世界,在这个世界里你只能通过计算机指令进行战斗。"
		puts "下面我讲简单介绍你需要用到的指令："
		puts "指令内容："
	end

	def guide
		puts "让我们开始通过指令进行战斗吧"
		puts "首先用hero指令查看自身信息，请输入: hero"
		CLI.cli_input
		puts "接下来用skill指令查看技能树，请输入: skill list"
		CLI.cli_input
	end
end