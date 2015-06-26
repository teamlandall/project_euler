# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
require 'mathn'

def largest_prime_factor(x)

  # uses Ruby built in prime division to determine prime factors.
  arr = Prime.prime_division(x)
  
  # iterates through the array comparing for the largest number. 
  # Returns largest number which will be the largest prime factor.
  big_prime = 0
  arr.each do |x,y|
    if x > y
      big_prime = x
    end
  end
   
  big_prime

 # the largest prime factor = 6857

end

largest_prime_factor(600851475143)
