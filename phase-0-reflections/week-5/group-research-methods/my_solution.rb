# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(i_want_pets)
  i_want_pets.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(my_family_pets_ages)
  my_family_pets_ages.sort_by {|x,y| y}
end

# Identify and describe the Ruby method(s) you implemented.
# Sort_by is an instance method packaged in the Enumerable module. Sort_by requires that you show it how to treat  one item in a collection. It accepts a code block.
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# Sort_by is an instance method packaged in the Enumerable module. Sort_by requires that you show it how to treat only one item in a collection and you do this through a block.
# To alphabetize our array, we convert the integers in the array to strings (.to_s) and then apply the sort_by method to each object. This method does not put the integers.to_s in numerical order, but instead returns a result similar to = (1,14,2,24,3 etc) aka "alphabetical," which accomplishes the goal of the challenge.
# To sort our hash data by age, from youngest to oldest, we use the sort_by enumerable method again to tell the my_hash_sorting_method to sort my_family_pets_ages hash based on its values, y.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#