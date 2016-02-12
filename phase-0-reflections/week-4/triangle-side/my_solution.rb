# I worked on this challenge with Theo Paul.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0
     return false
  elsif a == b && b == c && c == a
      return true
  elsif (a + b) >= c && (b + c) >= a && (a + c) >= b
        return true
  elsif (a + b) < c
        return false
  elsif (b + c) < a
        return false
  elsif (a + c) < b
        return false
  else
    return false

end
end