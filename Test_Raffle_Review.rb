require 'minitest/autorun'
require_relative 'Raffle_Review.rb'

class ReviewRaffle < Minitest::Test

	def test_one_equals_one #first test to check for syntax error
		assert_equal(1,1)
	end

	def test_empty_array_returns_false
		ticket_num = '1'
		winning_num_array = []
		assert_equal(false, raffle_function(ticket_num, winning_num_array)) #call the funcion
	end #returns false, because winning ticket is empty array, my num is '1'

	def test_returns_true
		ticket_num = '1234'
		winning_num_array = ['1234']
		assert_equal(true, raffle_function(ticket_num, winning_num_array))
	end #returns true, ticket + winning are the same

	def test_ticket_returns_false_in_array_of_multiple_numbers
		ticket_num = '1234'
		winning_num_array = ['1234','1555','2345']
		assert_equal(false, raffle_function(ticket_num, winning_num_array))
	end

	def test_ticket_returns_true_in_array_of_multiple_numbers
		ticket_num = '1234'
		winning_num_array = ['1234','1555','2345']
		assert_equal(true, raffle_function(ticket_num, winning_num_array))
end

