# swapping happened properly but could not understand how did this similar to what was done in the website 

a = [4,3,78,2,1,2]
n = a.length
for i in 0..n-1
  for j in 0..n-1  
    if a[i] > a[j] 
      p a
    a[i], a[j] = a[j], a[i]
    break if i == n-1 
  end
end
  p a
end
print a
#==============================================================

# this looping has to be done twice once iteration wrt i and once wrt to j and neeed to check the index of last array element else will go out of range

b =  [4,3,78,2,1,-2]
def sorting(b)
  loop do
    swapped = false 
  (b.length-1).times do |i|
    p b
    while b[i] > b[i+1]
      # temp = b[i]
      # b[i] = b[i+1]
      # b[i+1] = temp
      b[i],b[i+1] = b[i+1],b[i]
      swapped = true
      p b
    end
  end
    break if not swapped
  end
  print b
end

sorting([4,3,78,2,1,2])
#================================================================


# solution from the website
def bubble_sort(a)
   n=a.length
   for i in 0...n-1
    for j in 0...n-i-1
        if a[j]>a[j+1]
            temp=a[j]
            a[j]=a[j+1]
            a[j+1]=temp
        end
    end
   end
   return a
end

print bubble_sort([4,3,78,2,1,2])

#================================================================

