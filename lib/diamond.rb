class Diamond
	EDGE = 2
	SEPARATOR = "\n"
	LEADING_START = 1
	TRAILING_START = 0
	STAR = "*"

	def make_numbers_odd(number)
		number = number.round
		return number -1 if number % 2 == 0
		number
	end

	def set_up(number)
		make_numbers_odd(number)
	end

	def make_leading_shape(max_width) 
		shape = ""
		max_width -= EDGE
		(LEADING_START..max_width).step(EDGE) do |width|
			shape << STAR * width 
			shape << SEPARATOR
		end
		shape.chomp(SEPARATOR)
	end

	def make_trailing_shape(max_width)
		shape = ""
		max_width -= EDGE
		(TRAILING_START..max_width).step(EDGE) do |width|
			shape << STAR * (max_width - width)
			shape << SEPARATOR
		end
		shape.chomp(SEPARATOR)
	end

	def make_make_max_width_section(max_width)
		STAR * max_width
	end

	def excecute(max_width)
		shape = ""
		shape << make_leading_shape(max_width) << SEPARATOR if max_width > 1
		shape << make_make_max_width_section(max_width)
		shape << SEPARATOR << make_trailing_shape(max_width) if max_width > 1
		shape 
	end

	def run(number)
		max_width = set_up(number)
		excecute(max_width)
	end
end