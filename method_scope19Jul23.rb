# Method invocation with a block

[1, 2, 3].each do |num|
  puts num
end
#===========================================================
a = [1, 2, 3]

# Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
#==========================================================

a = [1, 2, 3]

# Example of a method definition that does not mutate the argument ....did not uderstand this part
def no_mutate(array)
  array.last(1)
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"
#===========================================================