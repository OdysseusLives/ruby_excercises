class NumberFunctions
	COMMA_SPACE = ", "
	SPACE = " "
	def sum(max_number)
		sum = 0
		for counter in 0..max_number 
			sum += counter
		end
		sum	
	end

	def average(max_number)
		sum = sum(max_number).round(1)
		avg = (sum / max_number)
	end

	def pi_fractions(max_number)
		fraction = 0.0 
		(3..max_number).step(4) do |denominator| 
			fraction -= 1.0 / denominator
		end
		(5..max_number).step(4) do |denominator| 
			fraction += 1.0 / denominator
		end
		fraction
	end

	def define_pi(max_number)
		frac = pi_fractions(max_number)
		4 * (1 + frac)
	end

	def give_me_integers_where_boolean_evenly_divisible_by_2(integers, bool)
		numbers = []
		remainder = (bool == true ? 0 : 1) 
		integers.map { |num| 
			numbers << num if num % 2 == remainder
		}
		numbers.join(COMMA_SPACE)
	end

	def sum_of_odd_integers(integers)
		odd = give_me_integers_where_boolean_evenly_divisible_by_2(integers, false)
		odds = odd.split(COMMA_SPACE)
		sum = 0
		odds.each { |odd_num|
			sum += odd_num.to_i	
		}
		sum
	end

	def product(*multipliers)
		if multipliers.first.class == String then
			multipliers = multipliers.first.split(SPACE)
		end
		product = 1
		multipliers.each { |num|
			product *= num.to_i
		}
		product
	end
end