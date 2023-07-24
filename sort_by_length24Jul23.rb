# Write a Ruby program to sort a given array of strings by length.
#Original array:
arr = ["abcde", "abdf", "adeab", "abdgeee", "bdefa", "abc", "ab", "a", "bacdef"]
#Expected: Sorted array of strings by length
#["a", "ab", "abc", "abdf", "abcde", "adeab", "bdefa", "bacdef", "abdgeee"]
p arr.sort_by{|word| word.length}

#================================================