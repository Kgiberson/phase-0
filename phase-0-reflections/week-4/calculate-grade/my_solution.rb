# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(grade)
  if grade >= 90
    return 'A'
  elsif grade >= 80 && grade < 90
    return 'B'
  elsif grade >= 70 && grade < 80
    return 'C'
  elsif grade >= 60 && grade < 70
    return 'D'
  else grade <= 59
    return 'F'
  end
end