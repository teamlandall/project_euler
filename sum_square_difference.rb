# Problem 6 - Project Euler

# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# Pretty simple program using two methods to do the math. 
# Method finds the sum of the squares.
def sum_of_squares
	sum_of = 0
	
	(1..100).each do |x|
		sum_of += x**2
	end
	sum_of
end

# Method finds the Square of the sum. 
def square_of_sum
	square_of = 0

	(1..100).each do |x|
		square_of += x
	end
	square_of = square_of**2
	square_of
end

# calls both methods and subtracts their returned values to get the difference.
# Difference => 25164150
puts square_of_sum - sum_of_squares
