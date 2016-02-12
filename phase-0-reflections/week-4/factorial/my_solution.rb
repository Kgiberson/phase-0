
# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def factorial(number)
  if number == 0
    return 1
  else
    i = number - 1
    result = number
    i = number - 1
      while i > 0
        result = result * i
        i = i - 1
      end
  end
  return result
end