### A R R A Y EXERCISES ###

# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.include?(3)


# What will the following programs return? What is the value of arr after each?
# 1. arr = ["b", "a"]
#    arr = arr.product(Array(1..3))
# => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 
#    arr.first.delete(arr.first.last)
# 1
# 2. arr = ["b", "a"]
#    arr = arr.product([Array(1..3)])
#    arr.first.delete(arr.first.last)

# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

# cats = ["ivy", "smokey", "skylar", "ocean"]

# cats.each_with_index { |index|

#     puts index

# }

# Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

cats = [1, 2, 3, 4]

cats.each_with_index { |index|

    p Array.new(index.to_i * 2)

}



### H A S H E S EXERCISES ###

#select method on hashes to return the sibling key value pairs only in one array using select
# family = {  uncles: ["bob", "joe", "steve"],
#     sisters: ["jane", "jill", "beth"],
#     brothers: ["frank","rob","david"],
#     aunts: ["mary","sally","susan"]
#   }


# immediate_family = family.select { |k, v|
#     k == :sisters || k == :brothers
# }
#   nigo = immediate_family.keys.flatten
# p nigo


#Code to run merge and merge! and to show the difference between the two
#merge! modifieds the hash permanently.
# h1 = {  "a" => 100, 
#         "b" => 200
#     }

# h2 = {  "b" => 100, 
#         "d" => 200
#     }

# angel = h1.merge!(h2)

# puts angel

# puts h1

## Accessing the name key in the person hash.
# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# puts person[:name]

# ##What's the difference between the two hashes that were created?
# x = "hi there"
# my_hash = {x: "this uses a symbol as the key"}
# my_hash2 = {x => "Tih uses string as the key"}

### M E T H O D S EXERCISES ###

# Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

# def greeting(name) 
#     return "Hello " + name
# end

# greeting('Vinh')

# Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

# def multiply_Two_Nums(num1, num2)
#     num1 * num2
# end

# multiply_Two_Nums(5,5)


### DEBUGGING EXERCISES ###

# Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

# def includes_chars?(string, chars)
#     chars.each_char.all? { |char| string.include?(char) }
# end

# includes_chars?('Laboratory', 'Lab')

# def execute(&block)
#     block.call
# end
  
# execute { puts "Hello from inside the execute method!" }

#How do we create an object in Ruby? Give an example of the creation of an object.

# class MyClass
# end

# my_obj = MyClass.new

# What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

# A module allows us to group reusable code into one place. We use modules in our classes by using the include method invocation, followed by the module name. Modules are also used as a namespace (we will cover this in a later section).

# module Study
# end

# class MyClass
#   include Study
# end

# my_obj = MyClass.new