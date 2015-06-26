# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# Solved using two different methods getting the same answer in both.

# First method builds and array by mapping the multplication of all the 3 digit numbers between 100 and 999.
# That creates nested arrays so we flatten and sort into one big array. 
# Then we select and keep all of the palindromes.
# Then we select the largest palindrome in the array of palindromes. 
lower_bound = 100
upper_bound = 999

big_pal = (lower_bound..upper_bound).map {|x| (x..upper_bound).map{|y| x*y } }
big_pal = big_pal.flatten.sort
big_pal = big_pal.select{|n| n.to_s == n.to_s.reverse}
big_pal = big_pal.max

print "From method 1 using arrays => #{big_pal}"
puts "\n--------------" 

# answer is 906609


# Creates a method which runs a while loop searching for the largest palindrome. 
# Multiplies combinations starting at 999*999 incrementing down by 1, each time a palindrome isn't found.
# Once the palindrome is found, it stops the loop. Since the loop starts with the upper bound (999*999)
# the first palindrome that is discovered is the largest one. It then stops the loop and. 
def palindrome(x)
  y = x
  product = 0

  while x > 900
    product = x * y
    if product.to_s == product.to_s.reverse
      print "From method 2 using a while loop => #{product}"
      puts "\n--------------" 
      print "Out of curiosity the two numbers are x = #{x} and y = #{y}"
      break
    elsif y > 900
      y -= 1
    elsif 
      x -= 1
      y = x
    end
  end
end

# answer is 906609
# x = 993, y = 913

palindrome(999)