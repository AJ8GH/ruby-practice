# using recursion to calculate factorials

def factorial(n)
  n == 0 ? result = 0 :
  result = 1
  n.times { |x| result *= x + 1 }
  result
end

p factorial(4)

# factorial(n) == n * factorial(n-1)

p factorial(3) * 4

# recursion method is one which calls itself to compute the result. it must have a base case
# to avoid infinite loop. here it's n < 2. once n < 2 it returns 1 as default value
def factorial(n)
  n < 2 ? 1 : factorial(n-1) * n
end

p factorial(5)

# how to debug recurive methods - this shows the execution trace, so we can track how the code works:
def factorial(n)
  puts "Computing factorial #{n}"
  if n < 2
    puts "factorial #{n} == 1 since #{n} < 2"
    return 1
  else
    puts "let's compute factorial(#{n}) == #{n} * factorial(#{n-1})"
  end
  result = factorial(n-1) * n
  puts "So, factorial(#{n}) == factorial(#{n-1}) * #{n} == #{result}"
  result
end

p factorial(6)
