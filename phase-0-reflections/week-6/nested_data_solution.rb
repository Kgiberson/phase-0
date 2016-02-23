# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}


# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map!  { |element|
#  if element.kind_of?(Integer)
#     p element + 5
#  else element.kind_of?(Array)
#     p element.map! {|inner| p inner + 5}
#  end
# }

# p number_array


# RELEASE 5: REFACTOR

number_array = [5, [10, 15], [20,25,30], 35]

number_array.collect!  { |element|
 if element.kind_of?(Integer)
    element + 5
 else element.kind_of?(Array)
    element.collect! {|inner| inner + 5}
 end
}

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! {|element|
  if element.kind_of?(String)
    element + "ly"
  else element.kind_of?(Array)
      element.map! {|inner1|
      if inner1.kind_of?(String)
        inner1 + "ly"
      else inner1.kind_of?(Array)
         inner1.map! {|inner2| inner2 + "ly"}
      end
    }
  end
}
p startup_names

# Reflection
# What are some general rules you can apply to nested arrays?
#   You can access arrays in using the same square bracket method, nested_array[1][0].
# What are some ways you can iterate over nested arrays?
#   Iterating over nested structures is the same as we are used to but with an added layer of depth. nested_array.each iterates over all elements, element.each iterates over inner arrays. (.map & .collect iterate as well) The pattern of iterator inside an iterator is helpful when working with multi-dimentional data structures. It's important to think about what the placeholder means.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#   My pair and I decided to use .collect! because we wanted to destructively modify our original array. It was my first time implementing the .kind_of? method, I found it very handy!