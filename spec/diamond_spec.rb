require_relative '../lib/diamond.rb'

describe Diamond do 
	STAR = "*"
	before :each do 
		@diamond = Diamond.new()
	end 

	describe "#make_numbers_odd" do 
		it "takes 6 and returns 5" do
			odd_num = @diamond.make_numbers_odd(6)
			odd_num.should be(5)  #Fixnum can be compared as 'be'
		end
		it "takes 7 and returns 7" do
			odd_num = @diamond.make_numbers_odd(7)
			odd_num.should be(7)
		end
		it "takes 5.55 and returns 5" do 
			odd_num = @diamond.make_numbers_odd(5.55)
			odd_num.should be(5)
		end
	end 

	describe "#make_leading_shape" do 
		it "takes number 3 and returns '*'" do 
			shape = @diamond.make_leading_shape(3)
			shape.should eq(STAR)  
		end
		it "takes number 5 and returns '*\n***'" do 
			shape = @diamond.make_leading_shape(5)
			shape.should eq(STAR + "\n" + STAR * 3)
		end
	end

	describe "#make_trailing_shape" do 
		it "takes number 3 and returns '*'" do 
			shape = @diamond.make_trailing_shape(3)
			shape.should eq(STAR)  
		end
		it "takes number 5 and returns '*\n***'" do 
			shape = @diamond.make_trailing_shape(5)
			shape.should eq(STAR * 3 + "\n" + STAR)
		end
	end

	describe "#make_make_max_width_section" do 
		it "takes number 1 and returns '*'" do 
			shape = @diamond.make_make_max_width_section(1)
			shape.should eq(STAR)  
		end
		it "takes number 3 and returns '***'" do 
			shape = @diamond.make_make_max_width_section(3)
			shape.should eq(STAR * 3)  
		end
		it "takes number 5 and returns '*****'" do 
			shape = @diamond.make_make_max_width_section(5)
			shape.should eq(STAR * 5)
		end
	end

	describe "#excecute" do
		it "takes number 1 and returns '*'" do 
			shape = @diamond.excecute(1)
			shape.should eq(STAR)
		end
		it "takes number 3 and returns '*\n***\n*'" do 
			shape = @diamond.excecute(3)
			shape.should eq(STAR + "\n" + STAR * 3 + "\n" + STAR)  
		end
		it "takes number 5 and returns '*\n***\n*****\n***\n*'" do 
			shape = @diamond.excecute(5)
			shape.should eq(STAR + "\n" + STAR * 3 + "\n" + STAR * 5 + "\n" + STAR * 3 + "\n" + STAR)
		end
	end

	describe "#run" do 
		it "runs setup and excecution for odd numbers" do 
			shape = @diamond.run(5)
			shape.should eq(STAR + "\n" + STAR * 3 + "\n" + STAR * 5 + "\n" + STAR * 3 + "\n" + STAR)
		end
		it "runs setup and excecution for even numbers" do 
			shape = @diamond.run(6)
			shape.should eq(STAR + "\n" + STAR * 3 + "\n" + STAR * 5 + "\n" + STAR * 3 + "\n" + STAR)
		end
	end
end
