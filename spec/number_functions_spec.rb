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

	describe "#pi_fractions" do 
		it "subtracts 1/3 when given 3" do
			@number_functions.pi_fractions(3).round(2).should eq((-0.33))
		end
		it "subtracts 1/3 and adds 1/5 when given 5" do
			@number_functions.pi_fractions(5).round(2).should eq((-0.33 + 0.20))
		end
		it "adds 1/3 to 1/99 when given 99" do
			@number_functions.pi_fractions(99).round(2).should eq((-0.22))
		end
	end

	describe "#define_pi" do 
		it "determines pi using a formula with denominator of 3 as the most accurate" do 
			@number_functions.define_pi(3).round(2).should eq(2.67)
		end 
		it "determines pi using a formula with denominator of 5 as the most accurate" do 
			@number_functions.define_pi(5).round(2).should eq(3.47)
		end 
		it "gives a number close to pi" do 
			@number_functions.define_pi(999).round(2).should eq(3.14)
		end 
	end

	describe "#give_me_integers_where_boolean_evenly_divisible_by_2" do 
		before :each do 
			@small_array = [0, 1]
			@large_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
		end

		it "takes an array [0, 1] and returns odd: 1" do 
			@number_functions.give_me_integers_where_boolean_evenly_divisible_by_2(@small_array, false).should eq("1")
		end
		it "takes an array [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] and returns odd: '1, 3, 5, 7, 9'" do 
			@number_functions.give_me_integers_where_boolean_evenly_divisible_by_2(@large_array, false).should eq("1, 3, 5, 7, 9")
		end
		it "takes an array [0, 1] and returns even: 0" do 
			@number_functions.give_me_integers_where_boolean_evenly_divisible_by_2(@small_array, true).should eq("0")
		end
		it "takes an array [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] and returns even: '2, 4, 6, 8'" do 
			@number_functions.give_me_integers_where_boolean_evenly_divisible_by_2(@large_array, true).should eq("0, 2, 4, 6, 8")
		end
	end

	describe "#sum_of_odd_integers" do 
		it "takes an array [0, 1] and sums the odd integers --> 1" do 
			@number_functions.sum_of_odd_integers([0, 1]).should eq(1)
		end
		it "takes array of [1, 2, 3, 4, 5, 6, 7, 8, 9] and gets 25" do 
			@number_functions.sum_of_odd_integers([1, 2, 3, 4, 5, 6, 7, 8, 9]).should eq(25)
		end
	end

	describe "#product" do 
		it "takes 1 and 1 and returns 1" do 
			@number_functions.product(1, 1).should eq(1)
		end
		it "takes 2 and 3 and returns 6" do
			@number_functions.product(2, 3).should eq(6)
		end
		it "takes more than two arguments" do
			@number_functions.product(1, 2, 3, 4, 5).should eq(120)
		end
		it "takes a string of numbers" do 
			@number_functions.product("1, 2, 3, 4, 5").should eq(120)
		end
	end
end