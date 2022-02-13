# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  final = 0
  for ea in arr
    final = final+ea
  end
  
  return final
end

def max_2_sum arr
  
  final = 0
  if arr.length ==0
    final = 0
  elsif arr.length == 1
    final =  arr[0]
  else
    
    ele1 = arr.max
    ind = arr.find_index(ele1)
    arr.delete_at(ind)
    
    ele2 = arr.max
    arr.delete(ele2)
    
    final = ele1+ele2
  end
  return final
end

def sum_to_n? arr, n
  
  limit = arr.length-1
  flag = false
  
  for counter1 in 0..limit
    for counter2 in counter1+1..limit
      if arr[counter1]+arr[counter2] == n
        flag = true
        break
        break
      end
    end
  end
  #print(flag)
  return flag

end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  if s.length==0
    return false
  end
  
  
  if !s[0].match(/^[[:alpha:]]+$/)
    return false
  end
  
  first_letter = s[0].downcase
  
  
  vowels = ['a','e','i','o','u']
  return !(vowels.include?first_letter)
  
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  if s.length==0
    return false
  end
  for co in 0..s.length-1
    if !['0','1'].include?s[co]
      return false
    end
  end
  
  number = s.to_i(2)
  # YOUR CODE HERE
  if number%4==0
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn,:price
# YOUR CODE HERE
  def initialize(isbn,price)
    if !isbn or price<0
      raise ArgumentError.new("wrong input types")
    end
    @isbn= isbn
    @price = price
      
  end
  def price_as_string
    return "$"+sprintf('%.2f', @price)
  end
end
