require_relative '../lib/number_functions.rb'

describe NumberFunctions do 
	before :each do 
		@number_functions = NumberFunctions.new()
	end 
	describe "#sum" do 
		it "sums numbers 1, 2, and 3 --> 6" do 
			@number_functions.sum(3).should eq(6)
		end
		it "sums numbers 1 to 100 --> 550" do 
			@number_functions.sum(100).should eq(5050)
		end
	end

	describe "#average" do 
		it "takes the average of numbers 1 to 5 --> 3" do 
			@number_functions.average(5).should eq(3)
		end
		it "takes the average of numbers 1 to 101 --> 51" do 
			@number_functions.average(101).should eq(51)
		end
		it "handles fractional numbers: 1 to 2 --> 1.5" do 
			@number_functions.average(2).should eq(1.5)
		end
	end
end