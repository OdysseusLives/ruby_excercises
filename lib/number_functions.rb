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
end