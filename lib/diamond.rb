class Diamond
	EDGE = 2
	SEPARATOR = "\n"
	LEADING_START = 1
	TRAILING_START = 0
	STAR = "*"
	SPACE = " "

	def make_numbers_odd(number)
		number = number.round
		return number -1 if number % 2 == 0
		number
	end

	def set_up(number)
		make_numbers_odd(number)
	end

	def make_leading_shape(max_width) 
		shape = []
		max_width -= EDGE
		(LEADING_START..max_width).step(EDGE) do |width|
			shape << STAR * width 
		end
		shape.join(SEPARATOR)
	end

	def make_trailing_shape(max_width)
		shape = []
		max_width -= EDGE
		(TRAILING_START..max_width).step(EDGE) do |width|
			shape << STAR * (max_width - width)
		end
		shape.join(SEPARATOR)
	end

	def make_make_max_width_section(max_width)
		STAR * max_width
	end

	def how_much_whitespace_padding?(input, max_width)
		max_possible_padding = (max_width - 1) / 2
		max_possible_padding - (input.length - 1) / 2
	end

	def apply_padding_for_one_line(input, max_width)
		padding = how_much_whitespace_padding?(input, max_width)
		SPACE * padding + input
	end 

	def excecute(max_width)
		shape = ""
		shape << make_leading_shape(max_width) << SEPARATOR if max_width > 1
		shape << make_make_max_width_section(max_width)
		shape << SEPARATOR << make_trailing_shape(max_width) if max_width > 1
		shape 
	end

	def apply_padding(shape, max_width)
		shape_lines = shape.split(SEPARATOR)
		padded_shape = []
		shape_lines.map { |line| 
			padded_shape << apply_padding_for_one_line(line, max_width) 
		}
		padded_shape.join(SEPARATOR)
	end

	def run(number)
		max_width = set_up(number)
		shape = excecute(max_width)
		apply_padding(shape, max_width)
	end
end