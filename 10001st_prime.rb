# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

# Creates a larger than necessary array of primes and finds correct answer at the 10000 index. 

def specific_prime(n)

a = (2..n) # list of integers 2 through 
primes = Array.new

primes = a.select { |x| (2..Math.sqrt(x)).none? { |d| (x % d).zero? }}

puts primes[10000]
# answer => 104,743

end

beginning_time = Time.now
specific_prime(150000)
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)} seconds"

# code runs in slightly over 1 second.