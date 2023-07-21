a = [1, 2, 3, 4]
A = []
b = [6, 7, 8, 9]
c = %w[a b c d]
B = [' ']

p A.length
p b.length
p B.length

p A.concat(b)
p b.concat(A)
p A.concat(B.concat(a))

# After performing the above concat operation the length of only A and B changed.
# So empty value is added after each element of non empty ele of non-empty array. Hence the length value has changed.

p A.length
p b.length
p B.length
