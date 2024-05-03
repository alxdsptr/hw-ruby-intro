# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |i|
    sum += i
  end
  sum
end

def max_2_sum arr
  # return the sum of arr's two largest elements
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.sort!
    arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  # return true if any two elements in array sums to n
  if arr.length == 0
    false
  else
    arr.combination(2).any? {|a, b| a + b == n}
  end
end

# Part 2

def hello(name)
  # returns a string "Hello, " concatenated with the value of the name parameter
  "Hello, #{name}"
end

def starts_with_consonant? s
  # returns true if the string starts with a consonant and false otherwise
  s.match(/^[^aeiou\W]/i) != nil
end

def binary_multiple_of_4? s
# returns true if the string represents a binary number that is a multiple of 4
  s.match(/^[01]*00$/) || s == "0"
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  # def isbn
  #   @isbn
  # end
  # def isbn=(isbn)
  #   @isbn = isbn
  # end
  # def price
  #   @price
  # end
  # def price=(price)
  #   @price = price
  # end

  def price_as_string
    "$%.2f" % @price
  end
end
