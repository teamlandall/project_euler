# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Uses LCM formula with a seperate method to determine the greastest common divisor. 
def smallest_multiple
	lcm = 1

	(2..20).each do |x|
		lcm *= x / gcd(lcm, x)
	end

	lcm
	
end

def gcd(a,b)
	while b > 0
		a %= b
		return b if a == 0
		b %= a
	end
	a
end

puts smallest_multiple


