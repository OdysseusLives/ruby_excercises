class NumberFunctions
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

	def give_me_odd_integers(integers)
		numbers = []
		integers.map { |num| 
			numbers << num if num % 2 == 1 
		}
		numbers.join(", ")
	end
end