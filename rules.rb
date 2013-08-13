require_relative 'dice'

class Rule
	def initialize(roll=2)
		@roll = roll
	end

	attr_accessor :roll

	def wins
		"Yay"
	end

	def looses
		":("
	end


	def pass_line arg
		 arg
	end

	def dont_pass_line arg
		arg
	end

	def to_s
		"Rolled a #{roll}. Pass line #{pass_line}. Don't pass line #{dont_pass_line}"
	end



	def come_out_roll #first roll
		case roll
		when 7, 11 
			pass_line wins
			dont_pass_line looses

		when 2, 3 
			pass_line looses
		 	dont_pass_line wins 

		when 12 
		 	pass_line looses 
		end
	end

end

if __FILE__ == $0
	die = Die.new(6, 5)

	rule = Rule.new(7)
	puts rule
end