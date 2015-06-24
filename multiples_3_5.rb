#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
#The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

def mult_3_5

  p=0
  for x in 1..999 do 
    if (x % 3 == 0) || (x % 5 == 0)
      p += x
    end
  end
  return p
end

mult_3_5

#answer is 233,168