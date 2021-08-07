=begin
-----------------------INSTRUCTIONS--------------------------------------
# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

--------------------------PROBLEM----------------------------------------
Questions: 
  -What's a palindrome?
  -Are non-alphabetical characters acceptable?
Input: 1 String
Output: 1 Array
DS used: Arrays
---------------------------RULES-----------------------------------------
Explicit:
  -Strings are case sensetive
  -Find substrings of the input string that are palindromes
Implicit:
  -An Empty string is an accepted input
  -Only alphabetical characters

--------------------------EXAMPLES---------------------------------------
# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []
----------------------------ALGO-----------------------------------------



=end

palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
palindrome_substrings("palindrome") == []
palindrome_substrings("") == []