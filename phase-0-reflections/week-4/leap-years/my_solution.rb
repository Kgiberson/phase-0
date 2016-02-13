# Leap Years

# I worked on this challenge by myself.


# Your Solution Below

def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        return true
      end
      return false
    end
    return true
  else
    return false
  end
end