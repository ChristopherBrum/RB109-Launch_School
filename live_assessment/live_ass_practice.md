# RB 109 Live Assessment Practice Problems #

1. - [x] [Repeater](#repeater)
2. - [x] [Double Consonants](#double-consonants)
3. - [x] [Rotate 13](#rotate-13)
4. - [x] [Longest Palindrome](#longest-palindrome)
5. - [x] [Find Chidren](#find-children)
6. - [x] [Double Consonants Alternative](#double-consonants-alternative)
7. - [x] [Reversed Number](#reversed-number)
8. - [x] [Get the Middle Character](#get-the-middle-character)
9. - [x] [Rotation Pt 1](#rotation-pt-1)
10. - [x] [Rotation Pt 2](#rotation-pt-2)
11. - [x] [Rotation Pt 3](#rotation-pt-3)
12. - [x] [1000 Lights](#1000-lights)
13. - [x] [Next Largest Num](#next-largest-num)
14. - [x] [Count Letters in Strings](#count-letters-in-strings)
15. - [x] [Count Pairs in String](#count-pairs-in-string)
16. - [x] [Return Substring Instance Count](#return-substring-instance-count)
17. - [x] [Alphabet Symmetry](#alphabet-symmetry)
18. - [x] [Longest Vowel Chain](#longest-vowel-chain)
19. - [x] [Non Even Substrings](#non-even-substrings)
20. - [x] [Substring Fun](#substring-fun)
21. - [x] [Repeated Substring](#repeated-substring)
22. - [x] [Typoglycemia Generator](#typoglycemia-generator)
23. - [x] [Most Frequently Used Words in a Text](#most-frequently-used-words-in-a-text)
24. - [x] [Detect Pangram](#detect-pangram)
25. - [x] [Kebabize](#kebabize)
26. - [x] [Dubstep](#dubstep)
27. - [x] [Take a Ten Minute Walk](#take-a-ten-minute-walk)
28. - [x] [Stop gninnipS My sdroW](#stop-gninnips-my-sdrow)
29. - [x] [Nested Brackets](#nested-brackets)
30. - [x] [Write Number in Expanded Form](#write-number-in-expanded-form)
31. - [x] [Mexican Wave Variation 1](#mexican-wave-variation-1)
32. - [x] [Sum Consecutives](#sum-consecutives)
33. - [x] [Mexican Wave Variation 2](#mexican-wave-variation-2)
34. - [x] [Persistent Bugger](#persistent-bugger)
35. - [x] [Title Case](#title-case)
36. - [x] [Count and Group Character Occurrences in a String](#count-and-group-character-occurrences-in-a-string)
37. - [x] [Sum of Squared Divisors a Square](#sum-of-squared-divisors-a-square)
38. - [x] [Find the Mine](#find-the-mine)
39. - [x] [Scramblies](#scramblies)
40. - [ ] [Longest Alphabetical Substring](#longest-alphabetical-substring)
41. - [x] [Hashtag Generator](#hashtag-generator)
42. - [x] [Pete the Baker](#pete-the-baker)
43. - [x] [Exponent Method](#exponent-method)
44. - [ ] [Where My Anagrams At?](#where-my-anagrams-at)
45. - [x] [Determine Missing Letters](#determine-missing-letters)
46. - [x] [Find Primes](#find-primes)
47. - [x] [Find Some Substrings](#find-some-substrings)
48. - [ ] [Next Bigger Number](#next-bigger-number)
49. - [x] [Split Strings](#split-strings)
50. - [x] [Record Temps](#record-temps)
51. - [ ] [Anagram Difference](#anagram-difference)
52. - [x] [Highest Scoring Word](#highest-scoring-word)
53. - [x] [Replace with Alphabet Position](#replace-with-alphabet-position)
54. - [x] [Sherlock on Pockets](#sherlock-on-pockets)
55. - [x] [Capitalize Second of Third](#capitalize-second-of-third)
56. - [x] [Difference of Two](#difference-of-two)
57. - [x] [Vowel Back](#vowel-back)
58. - [x] [Find Missing Letter](#find-missing-letter)
59. - [x] [Word Scramble](#word-scramble)
60. - [x] [Alphabetized Again](#alphabetized-again)
61. - [x] [Anagram Detection](#anagram-detection)
62. - [x] [Highest Scoring Word Again](#highest-scoring-word-again)
63. - [x] [Rotate Matrix](#rotate-matrix)
64. - [x] [Longest Common Prefix](#longest-common-prefix)
65. - [x] [Consecutive Runs](#consecutive-runs)
66. - [x] [Search Query](#search-query)
67. - [x] [Repeated Substring 2](#repeated-substring-2)
68. - [x] [Reverse String](#reverse-string)
69. - [x] [Fizzbuzz](#fizzbuzz)
70. - [x] [Remove Vowels](#remove-vowels)
71. - [x] [Delete Digit](#delete-digit)
72. - [x] [Multiples of 3 or 5](#multiples-of-3-or-5)
73. - [x] [String Transformer](#string-transformer)
74. - [x] [Largest Product in a Series](#largest-product-in-a-series)
75. - [x] [Duplicate Encoder](#duplicate-encoder)
76. - [x] [Backspaces in String](#backspaces-in-string)
77. - [x] [Alphabetized](#alphabetized)
78. - [x] [Tranform to Prime](#transform-to-prime)
79. - [x] [Word to Digit](#word-to-digit)
80. - [x] [Longest AE](#longest-ae)
81. - [x] [Minimum Sub Length](#minimum-sub-length)
82. - [x] [Two Sum](#two-sum)
83. - [x] [Digital Root](#digital-root)

---

## Repeater ##

- Difficulty: **easy**
- [x] Problem Completed?

Write a method that takes a string, and returns a new string in which every character is doubled.

p repeater('Hello') == "HHeelllloo" \
p repeater("Good job!") == "GGoooodd  jjoobb!!" \
p repeater('') == ''

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a string, and returns a new string in which every character is doubled.
--------------------------PROBLEM----------------------------------------
Questions: 
  -n/a
Input: 1 String
Output: 1 String
---------------------------RULES-----------------------------------------
Explicit:
  -Take String input and double every character
Implicit:
  -Non-aphlabetic characters are doubled also
  -An empty string input doubled is still an empty string input

--------------------------EXAMPLES---------------------------------------
repeater('Hello') --> "HHeelllloo"
'Hello'
'H' + 'H' --> 'HH'
'e' + 'e' --> 'ee'
etc.
Returns --> 'HHeelllloo'
----------------------------ALGO-----------------------------------------
  -Split string into array of characters
  -Iterate over the array
    -Concatenate each character to itself
  -Join array to string and return
=end

def repeater(str)
  str.chars.map { |char| char += char }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
```

---

## Double Consonants ##

- Difficulty: **easy**
- [x] Problem Completed?

Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

double_consonants('String') == "SSttrrinngg" \
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!" \
double_consonants("July 4th") == "JJullyy 4tthh" \
double_consonants('') == ""

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -Take a string and double each consonant
  -vowels, whitespace and punctuation stay the same
Implicit Rules:
  -an empty string is a valid input and returns an empty string
  -case sensitive
Questions:
  -Should I mutate the original string or return a new object?
  
--------------------------EXAMPLES---------------------------------------
'String' == "SSttrrinngg"
string
S --> SS
t --> tt
r --> rr
i --> i
n --> nn
g --> gg

returns => "SSttrrinngg"

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 String
Additional DS Utilized:
  -split string into an array of characters
  -join an array of characters into a string

----------------------------ALGO-----------------------------------------
Higher-Level ==> Split the given string to an array of characters, iterate through the characters pushing them to a new string object, doubling each consonant. 

* split given string into array of characters
* iterate through array doubling each consonant
* return new string object

-- method --> double_consonants(string) --> string
  -split string into array of characters
  -interate through the array using transformation (char)
    -if char is_consonant?
      -return char doubled
    -otherwise
      -return char
  -join array and return

-- method is_consonant?(string) --> boolean
  -if char is included within the alphabet (upper/lowercase)
  -AND char is not a vowel
    -return true

=end

def is_consonant?(char)
  alpha = ('a'..'z').to_a
  vowel = %w(a e i o u)
  
  alpha.include?(char.downcase) && !vowel.include?(char.downcase) 
end

def double_consonants(str)
  str.chars.map do |char|
    is_consonant?(char) ? char * 2 : char
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
```

---

## Rotate 13 ##

- Difficulty: **med/hard**
- [x] Problem Completed?

How can you tell an extrovert from an introvert at NSA? Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE thl'f fubrf.

I found this joke on USENET, but the punchline is scrambled. Maybe you can decipher it? According to Wikipedia, [ROT13](http://en.wikipedia.org/wiki/ROT13) is frequently used to obfuscate jokes on USENET.

Hint: For this task you're only supposed to substitue characters. Not spaces, punctuation, numbers etc.

rot13("EBG13 rknzcyr.") == "ROT13 example.";
rot13("This is my first ROT13 excercise!" == "Guvf vf zl svefg EBG13 rkprepvfr!"

Rot 13 means each letter is replaced by the letter appearing 13 places in the alphabt. after the original letter. Last 13 letters alphabet you start over.

Test examples:

rot13("EBG13 rknzcyr.") == "ROT13 example.";
rot13("This is my first ROT13 excercise!" == "Guvf vf zl svefg EBG13 rkprepvfr!"
Rot 13 means each letter is replaced by the letter appearing 13 places in the alphabt. after the original letter. Last 13 letters alphabet you start over.

Problem:

Rot 13 means each letter is replaced by the letter appearing 13 places in the alphabt after the original letter

- input: string
- output: string
- rules:
  - For this task you're only supposed to substitue characters. Not spaces, punctuation, numbers etc.
  - if there is a number, return it as it is

Algorithm:

- replace the alphabet characters with the ones that comes after 13
- abcdefghijklm nopqrstuvwxyz

- split the string into array of words
- iterate over the characters
  
```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
How can you tell an extrovert from an introvert at NSA? Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE thl'f fubrf.

I found this joke on USENET, but the punchline is scrambled. Maybe you can decipher it? According to Wikipedia, ROT13 is frequently used to obfuscate jokes on USENET.

Hint: For this task you're only supposed to substitue characters. Not spaces, punctuation, numbers etc.

Rot 13 means each letter is replaced by the letter appearing 13 places in the alphabet after the original letter. Last 13 letters alphabet you start over.

Test examples:

rot13("EBG13 rknzcyr.") == "ROT13 example."
rot13("This is my first ROT13 excercise!" == "Guvf vf zl svefg EBG13 rkprepvfr!" 

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -For every letter within the given string swap it out for the letter 13 places ahead of it in the alphabet
  -do not shange any characters other than letters
Implicit Rules:
  -uppercase and lowercase letters used within given string
  
Questions:
  -
  
--------------------------EXAMPLES---------------------------------------
"EBG13 rknzcyr." == "ROT13 example."

E + 13 places --> R
B + 13 places --> O
G + 13 places --> T
1 stays the same
3 stays the same
. stays the same

==> "ROT13 example."

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 String
Additional DS Utilized:
  -splitting strings into arrays
  -joining arrays into strings
  -boolean values in conditionals

----------------------------ALGO-----------------------------------------
Higher-Level ==> Split given string into an array of characters, iterate through the charactes, for every letter swap with the letter 13 places ahead in the alphabet, then join and return string

* split givern string into array of chars
* iterate through array
  * if letter swap out
* join and return string

-- method --> rot13(string) --> string
  -split given string into array of chars (chars)
  -iterate through array using transformation (char)
    -if char is a letter
      -swap_letter(char)
    -otherwise
      -char
  -join arrya and return

-- method --> swap_letter(string) --> string
  -initialize alpha to array of alphabetical letters twice over
  -if is_capitalized?(char) set to true (cap)
  -downcase char
  -find index of char in alpha
  -find char at index + 13 in alpha
  -if cap is true capitalize 

-- method --> is_capitalized?(string) --> string
  -if string uppercased is the same as string

=end

ALPHA = (('a'..'z').to_a) * 2

def is_capitalized?(str)
  str.upcase == str
end

def swap_letter(char)
  cap = true if is_capitalized?(char)
  char = char.downcase
  
  index = ALPHA.index(char)
  if cap == true 
    ALPHA[index + 13].upcase
  else
    ALPHA[index + 13]
  end
end

def rot13(str)
  str.chars.map do |char|
    if ALPHA.include?(char.downcase)
      swap_letter(char)
    else
      char
    end
  end.join
end

# p swap_letter('R')

# p is_capitalized?('A') == true
# p is_capitalized?('s') == false

p rot13("Abc") == "Nop"
p rot13("xYz") == "kLm"
p rot13("EBG13 rknzcyr.") == "ROT13 example."
p rot13("This is my first ROT13 excercise!") == "Guvf vf zl svefg EBG13 rkprepvfr!"
```

---

## Longest Palindrome ##

- Difficulty: **easy**
- [x] Problem Completed?

Find the length of the longest substring in the given string that is the same in reverse.

Example: \
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

p longest_palindrome('') == 0 \
p longest_palindrome('a') == 1 \
p longest_palindrome('aa') == 2 \
p longest_palindrome('baa') == 2 \
p longest_palindrome('aab') == 2 \
p longest_palindrome('baabcd') == 4 \
p longest_palindrome('baab1kj12345432133d') == 9 \
p longest_palindrome("I like racecars that go fast") == 7 \
p longest_palindrome("aa aa") == 5 \
p longest_palindrome('abcde') == 1

```ruby
=begin
Find the length of the longest substring in the given string that is the same in reverse.

Example: \
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

-----------------------INSTRUCTIONS-------------------------------------- \
Find the length of the longest substring in the given string that is the same in reverse.

Example: \
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

--------------------------PROBLEM---------------------------------------- \
- Questions: \
  - Are whites spaces included or negated? \
- Input: 1 String \
- Output: 1 Integer, length of the longest substring palindrome \

---------------------------RULES----------------------------------------- \
- Explicit:
  - Find the length of the longest substring in the given string that is the same in reverse.
  - If the length of the input string is 0, return value must be 0
- Implicit:

--------------------------EXAMPLES--------------------------------------- \
longest_palindrome("I like racecars that go fast") == 7 \
'racecar' -> reveresed == -> 'racecar' \
length is 7 \
Returns => 7 \

----------------------------ALGO----------------------------------------- \
=> Find all substrings of the input string. Iterate through substrings and collect all palindromes from within collection. Find the palindrome with the greatest length and return.

- Initialize an empty array to sub_strings
- Split input string into an array of characters
- Iterate over the array
  - Find all possible subarrays and push to sub_strings array, join back to strings

- Iterate over sub_strings array
  - Keep all sub_strings that are palindromes
- Find palindrome with greatest length and return

=end

def longest_palindrome(str)
  return 0 if str.size == 0
  sub_strings = []
  1.upto(str.size) { |num| str.chars.each_cons(num) { |sub_arr| sub_strings << sub_arr.join }}
    
  palindromes = sub_strings.select { |str| str == str.reverse }
  palindromes.max { |str| str.size }.size
end

p longest_palindrome('') == 0
p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baab1kj12345432133d') == 9
p longest_palindrome("I like racecars that go fast") == 7
p longest_palindrome("aa aa") == 5
p longest_palindrome('abcde') == 1
```

---

## Find Children ##

- Difficulty: **easy**
- [x] Problem Completed?

Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".

-Function input: String contains only letters, uppercase letters are unique.

Task:
Place all people in alphabetical order where Mothers are followed by their children, \
i.e. "aAbaBb" => "AaaBbb".

```ruby
=begin
Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".

-Function input: String contains only letters, uppercase letters are unique.

Task:
Place all people in alphabetical order where Mothers are followed by their children, 
i.e. "aAbaBb" => "AaaBbb".

-----------------------INSTRUCTIONS--------------------------------------
Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".

-Function input: String contains only letters, uppercase letters are unique.

Task:
Place all people in alphabetical order where Mothers are followed by their children, 
i.e. "aAbaBb" => "AaaBbb".

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String

---------------------------RULES-----------------------------------------
Explicit:
  -Uppercase letters are mothers
  -Lowercase letters are their children
  -Input string contains only letters
  -Uppercase letters are unique (only 1 per string)
Implicit:

--------------------------EXAMPLES---------------------------------------
"aAbaBb" => "AaaBbb"
'A' -> 1
'a' -> 2
'B' -> 1
'b' -> 2
Outputs --> 'AaaBbb'
----------------------------ALGO-----------------------------------------
  -Initialized empty hash to 'letters'  
  -Break into array of characters
  -Iterate over array
    -lowercase all letters
    -If hash contains key of letter
      -Increment the value by 1
    -Otherwise 
      -Initialize key to value 1
  -Iterate over the hash  
    -Concatenate capitalized key with key times value -1
  -Sort and join array returned by hash iteration

=end

def find_children(str)
  letters = {}
  count_letters(str, letters)
  modified_arr = format_letters(letters)
  modified_arr.sort.join
end

def count_letters(str, letters)
  str.downcase.chars.each do |char|
    if letters[char].nil?
      letters[char] = 1
    else
      letters[char] += 1
    end
  end
end

def format_letters(letters)
  letters.map do |key, value|
    key.upcase.concat(key * (value - 1))
  end 
end 

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""
```

---

## Double Consonants Alternative ##

- Difficulty: **easy**
- [x] Problem Completed?

Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:

double_consonants('String') == "SSttrrinngg" \
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!" \
double_consonants("July 4th") == "JJullyy 4tthh" \
double_consonants('') == ""

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String, with consonants doubled

---------------------------RULES-----------------------------------------
Explicit:
  -Consonants will get doubled
  -Vowels remain unchanged
  -Puncuation remain unchanged
  -Integers remain unchanged
  -Whitespace remain unchanged
Implicit:
  -An empty string will retrun an empty string
  -An argument will always be a valid String input
  -Case sensitive

--------------------------EXAMPLES---------------------------------------
double_consonants('String') --> returns => "SSttrrinngg"
'String'
'S' -> 'SS'
't' -> 'tt'
'r' -> 'rr'
'i' -> 'i' (vowel)
'n' -> 'nn'
'g' -> 'gg'
Returns --> "SSttrrinngg"

----------------------------ALGO-----------------------------------------
  -Break string into array of characters
  -Iterate through array
    -If it is a consonant
      -Double consonant 
    -Otherwise
      -Return character
  -Join and return string

=end

ALPHA = ('a'..'z').to_a
VOWEL = %w(a e i o u)

def double_consonants(str)
  str.chars.map do |char|
    if is_consonant?(char)
      char += char
    else
      char
    end
  end.join
end

def is_consonant?(char)
  ALPHA.include?(char.downcase) && !VOWEL.include?(char.downcase)
end

# Test cases for is_consonant? method
# p is_consonant?('a') == false
# p is_consonant?('c') == true
# p is_consonant?('X') == true
# p is_consonant?('I') == false
# p is_consonant?('!') == false
# p is_consonant?('') == false

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
```

---

## Reversed Number ##

- Difficulty: **easy**
- [x] Problem Completed?

Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

reversed_number(12345) == 54321 \
reversed_number(12213) == 31221 \
reversed_number(456) == 654 \
reversed_number(12000) == 21 # No leading zeros in return value! \
reversed_number(12003) == 30021 \
reversed_number(1) == 1 \
Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a positive integer as an argument and returns that number with its digits reversed. 

Don't worry about arguments with leading zeros - Ruby sees those as octal numbers,which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

--------------------------PROBLEM----------------------------------------
Questions: None, at this time
Input: 1 Integer
Output: 1 Integer, digits reversed

---------------------------RULES-----------------------------------------
Explicit:
  -Take input integer and reverse digits
  -Don't worry about integers w/ leading zeros
Implicit:
  -Input integer and output integer can be different lengths

--------------------------EXAMPLES---------------------------------------
reversed_number(12345) # returns --> 54321
input integer
12345
1 -> 2 -> 3 -> 4 -> 5
5 -> 4 -> 3 -> 2 -> 1 ==> outputs 54321

----------------------------ALGO-----------------------------------------
==> Convert input integer into an array of digits. Put the integers are in reverse order. Join together and convert into an integer. 

Solution 1 --> reversed_number_fast(12345) => 54321
  -Split integer into array of digits
  -Reverse the order of the digits array
  -Join the array
  -Convert to an integer

=end

# fast version
def reversed_number_quick(num)
  num.digits.join.to_i
end

p reversed_number_quick(12345) == 54321
p reversed_number_quick(12213) == 31221
p reversed_number_quick(456) == 654
p reversed_number_quick(12000) == 21 # No leading zeros in return value!
p reversed_number_quick(12003) == 30021
p reversed_number_quick(1) == 1

# manual version
def reversed_number(num)
  reversed = []
  num.to_s.chars.each do |char|
    reversed.prepend(char)
  end
  reversed.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
```

---

## Get The Middle Character ##

- Difficulty: **easy**
- [x] Problem Completed?

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:

Copy Code
center_of('I love ruby') == 'e' \
center_of('Launch School') == ' ' \
center_of('Launch') == 'un' \
center_of('Launchschool') == 'hs' \
center_of('x') == 'x'

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 string
Output: 1 string, middle characters of input string

---------------------------RULES-----------------------------------------
Explicit:
  -Input string will not be empty
  -Return middle characters of input string
    -If input string is odd, return 1 character
    -If input string is even, return 2 characters
Implicit:
  -Case insensitive
  -White space acceptable in input string

--------------------------EXAMPLES---------------------------------------
center_of('I love ruby') returns ==> 'e'
'I love ruby' --> length: 11 (will return single character string)
 0.........10 indexes
 .....5..... Index of center character is 5
 Character at index 5 of 'I love ruby' => 'e'

----------------------------ALGO-----------------------------------------
  ==> Determine whether the input string has a length that is odd or even. If even, find the 2 characters at the middle of the string and return. If odd, find the single character at the middle of the string and return.

  -Determine if string size is even or odd. 
    -If odd?
      -Return character at index (length of input / 2)
    -If even?
      -Return character at index (length of input / 2) - 1, for 2 characters

=end

def center_of(str)
  if str.size.odd?
    str[str.size / 2]
  else
    str[(str.size / 2) - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
```

---

## Rotation Pt 1 ##

- Difficulty: **medium**
- [x] Problem Completed?

Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

```ruby
# Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
```

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Array
Output: 1 Array

---------------------------RULES-----------------------------------------
Explicit:
  -Do not modify the input array
  -Move the first element of the input array to the end of the array
  -Do not use Array#rotatae or Array#rotatae! methods
Implicit:
  -Input array can contain Integers and Strings
  -Input array will not be empty

--------------------------EXAMPLES---------------------------------------
rotate_array(['a', 'b', 'c']) returns ==> ['b', 'c', 'a']
['a', 'b', 'c']
first element     => 'a'
new array         => []
first 2 elements  => ['b', 'c']
last element      => ['b', 'c', 'a']
return

----------------------------ALGO-----------------------------------------
-Initialize empty array
-Initialize first element of input array to first_el
-Iterate through input Array
  -If index is 0, skip to next
  -Otherwise
    -Append el to new array
-Append first_el to new array
-Return new array

=end

def rotate_array(arr)
  first_el = arr.first
  new_arr = feed_arr(arr)
  new_arr.append(first_el)
  new_arr
end

def feed_arr(arr)
  new_arr = []
  arr.each_with_index do |el, index|
    next if index == 0
    new_arr << el
  end
  new_arr
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
```

---

## Rotation Pt 2 ##

- Difficulty: **medium**
- [x] Problem Completed?

Write a method that can rotate the last n digits of a number. For example:

Note; that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

rotate_rightmost_digits(735291, 1) == 735291 \
rotate_rightmost_digits(735291, 2) == 735219 \
rotate_rightmost_digits(735291, 3) == 735912 \
rotate_rightmost_digits(735291, 4) == 732915 \
rotate_rightmost_digits(735291, 5) == 752913 \
rotate_rightmost_digits(735291, 6) == 352917

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that can rotate the last n digits of a number.

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Integers, num to be rotated, n elements from the end
Output: 1 Integer

---------------------------RULES-----------------------------------------
Explicit:
  -n will always be a positive number
  -num is the input integer to be modified
  -n is the digit, starting from the end, to be moved to the end of the integer
Implicit:
  -n cannot be greater than the number of digits in num

--------------------------EXAMPLES---------------------------------------
rotate_rightmost_digits(735291, 3) returns ==> 735912
735291
   ^-- => 3 places from the end is 2
73591  => Integer without digit 3 places from the end
735912 => Integer with digit 3 places from the end added to the end

----------------------------ALGO-----------------------------------------
==> Split input integer into array of digits. Remove the digit that is 'n' places away from the end and save to a variable. Push integer object deleted from integer to end of the array. Join together, convert to integer and return.

--> rotate_rightmost_digits(num, n) ==> return Integer
  -Split num into array of digits  
  -Initialize 'digit' to the return value of deleting the element 'n' places from the end of the array
  -Append the deleted element to end of array
  -Join array and convert to integer

=end

def rotate_rightmost_digits(num, n)
  num_arr = num.digits.reverse
  digit = num_arr.delete_at(-n)
  num_arr.push(digit).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
```

---

## Rotation pt 3 ##

- Difficulty: **medium**
- [x] Problem Completed?

If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

max_rotation(735291) == 321579 \
max_rotation(3) == 3 \
max_rotation(35) == 53 \
max_rotation(105) == 15 # the leading zero gets dropped \
max_rotation(8_703_529_146) == 7_321_609_845

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Integer
Output: 1 Integer

---------------------------RULES-----------------------------------------
Explicit:
  -Do not worry about handling leading zeros
  -Rotate the element at index 'n' to the end of the integer
    -Continue rotating each element as you iterate through the integer digits
Implicit:
  -All inputs will be valid Integers
  -All Integer inputs will positive

--------------------------EXAMPLES---------------------------------------
max_rotation(735291) returns ==> 321579
735291
7 is at index zero --> moved to the end
352917
 5 is at index one --> moved to the end
329175
  9 is at index two --> moved to the end
321759
   7 is at index three --> moved to the end
321597
    9 is at index four --> moved to the end
321579
     9 is at index five --> moved to the end
==> 321579

----------------------------ALGO-----------------------------------------
  ==> Break the integer into an array and iterate over the array by index. Upon each iteration move the current element to the end of the array.

  -Split integer into an array of digits
  -Initialize new array
  -Iterate over the array 
    -Delete the element at the current iteration and save to variable
    -Push object referenced by variable to new array
  -Join new array and convert to integer

=end

def max_rotation(num)
  arr = []
  num_arr = num.digits.reverse
  num_arr.each_with_index do |el, index|
    current_el = num_arr.delete_at(index)    
    num_arr << current_el
  end
  num_arr.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
```

---

## 1000 Lights ##

- Difficulty: **medium**
- [x] Problem Completed?

You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on \
round 2: lights 2 and 4 are now off; 1, 3, 5 are on \
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on \
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on \
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on \
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

--------------------------PROBLEM----------------------------------------
Questions:
Input:
Output:

---------------------------RULES-----------------------------------------
Explicit:
Implicit:

--------------------------EXAMPLES---------------------------------------
Example with n = 5 lights:
start: all off
round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

----------------------------ALGO-----------------------------------------
==> The number passed in as an argument is the number of light switches. Iterate through the switches, starting with switch 1 all the way to the last switch, switching from its current on/off status if divisible by the current switch number. All switches start in the off position. Return an array of all switches that are on at the end of iteration. 

  - method -- switch_lights(num) --> array
    -Create an array that is equal in length to the number of lights switches, and each element is 'off'
    -Iterate through array based on index
      -Iterate using times method
        -If current (index + 1) of times method is evenly divisible by current (index + 1) of outer iteration
          -call flip_switch
        -otherwise  
          -Next
    -return array

  - method -- flip_switch(switch_status) --> string
    -if switch_status is 'on'
      -return 'off'
    -otherwise
      -return 'on'

=end

def switch_lights(num_of_lights)
  arr = create_switches(num_of_lights)
  count = 1

  loop do
    break if count > arr.size

    arr.size.times do |index|
      if (index + 1) % count == 0
        arr[index] = flip_switch(arr[index])        
      end
    end
    count += 1
  end
  arr.each_index.select { |i| arr[i] == 'on' }.map { |i| i + 1 }
end

def create_switches(num)
  arr = []
  num.times { |_| arr << 'off' } 
  arr
end

# p create_switches(5) == ['off', 'off', 'off', 'off', 'off']
# p create_switches(10) == ['off', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'off']
# p create_switches(3) == ['off', 'off', 'off']

def flip_switch(switch_status)
  if switch_status == 'on'
    'off'
  else
    'on'
  end
end

# p flip_switch('off')
# p flip_switch('on')

p switch_lights(5) == [1, 4]
p switch_lights(10) == [1, 4, 9]
```

## Next Largest Num ##

- Difficulty: **medium**
- [x] Problem Completed?

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:
If no bigger number can be composed using those digits, return -1:
--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Integer
Output: 1 Integer

---------------------------RULES-----------------------------------------
Explicit:
  -Return the next biggest number formed by the different combinations of the digits of the input integer
  -If there is no greater number than the given integer, return -1
Implicit:
  -Input integers will always be positive
  -Input integers will always be greater than zero

--------------------------EXAMPLES---------------------------------------
12 ==> 21
513 ==> 531
2017 ==> 2071

9 ==> -1
111 ==> -1
531 ==> -1

513 return ==> 531

5, 1, 3
135
153
315
351
513 This is the given integer
531 This is the next biggest number 

----------------------------ALGO-----------------------------------------
=> Turn input integer into ana rray of digits and then find all combinations of digits to return the next largest number or -1 if there isn't a leger number than the given.

-Split input integer into array of digits
-Find all combinations of this array of digits and sort.
-Find index of given integer within the array of combinations
-Return the element at the next index
-return -1 if there is no element at that index
-return -1 if given is same as next largest in sequence

=end

def next_bigger_num(num)
  combo_arr = []
  digits_arr = num.digits.reverse
  digits_arr.permutation { |el| combo_arr << el }
  final_arr = combo_arr.map(&:join).map(&:to_i)
  final_arr = final_arr.sort
  final_index = final_arr.index(num)
  return -1 if final_arr[final_index + 1].nil? ||
               final_arr[final_index + 1] == num
  final_arr[final_index + 1]
end


p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
```

---

## Count Letters in String ##

- Difficulty: **medium**
- [x] Problem Completed?

Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1} \
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1} \
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 Hash

---------------------------RULES-----------------------------------------
Explicit:
  -Find number of instances of letters within given string
  -Convert each letter to a symbol and make it the key
  -Make the value the number of instances of that particular character
Implicit:
  -Input strings will not be empty
  -Input strings will be lowercase
  -keys in hash are sorted

--------------------------EXAMPLES---------------------------------------
letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
arithmetics
a -> 1
r -> 1
i -> 2
t -> 1
h -> 1
m -> 1
c -> 1
s -> 1
Sort letters

----------------------------ALGO-----------------------------------------
--> method 1 --> letter_count(string) --> hash
  -Split into an array of characters and sort
  -Iterate over the collection
    -If hash at current key exists?
      -Increment value by 1
    -Otherwise
      -Set value to 1
  -Return hash
  
=end

def letter_count(str)
  str.chars.sort.each_with_object(Hash.new(0)) { |char, hsh| hsh[char.to_sym] += 1 } 
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
```

---

## Count Pairs in String ##

- Difficulty: **medium**
- [x] Problem Completed?

You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0 \
If there are more pairs of a certain number, count each pair only once. \
E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s) \
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

Examples
[1, 2, 5, 6, 5, 2]  -->  2 \
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4 \
...because there are 4 pairs: 2, 20, 6 and 2 (again)

p pairs([1, 2, 5, 6, 5, 2]) == 2 \
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4 \
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 \
p pairs([1000, 1000]) == 1 \
p pairs([]) == 0 \
p pairs([54]) == 0

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

--------------------------PROBLEM----------------------------------------
Questions:
  -
Input: 1 Array
Output: 1 Integer

---------------------------RULES-----------------------------------------
Explicit:
  -Count all pairs within the given collection
  -Arrays with 0 or 1 element will return 0
  -A pair consists of 2 of the same element that have not been counted as a pair previously.
  -Max input length 1000
  -Values within input collections are integers between 0 and 1000
Implicit:
  -Input collections will consist of integers
  -Empty arrays are acceptable inputs
--------------------------EXAMPLES---------------------------------------
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

----------------------------ALGO-----------------------------------------
==> Iterate over the given collection and collect the total instances of each element., returning the number of pairs within the collection. 

--> method --> pairs(array) --> integer
  -if arr length less than 2, return 0
  -initialize 'count' to 0
  -initialize a unique array of arr elements
  -iterate through the collection
    -find the number of instances of current element
    -if greater than 1
      -increment 'count' by the instances divided by 2
  -return 'count'

=end

def pairs(arr)
  return 0 if arr.size < 2
  
  count = 0
  uniq_els = arr.uniq
  
  uniq_els.each do |el|    
    count += arr.count(el) / 2
  end
  
  count
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
```

---

## Return Substring Instance Count ##

- Difficulty: **medium**
- [x] Problem Completed?

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Complete the solution so that it returns the number of times the search_text is found within the full_text.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 String, full string, and search substring
Output: 1 Integer

---------------------------RULES-----------------------------------------
Explicit:
  -Return the number of instances that the search sunstring is found in the full string
Implicit:
  -All strings are lowercase
  -There are no empty string arguments

--------------------------EXAMPLES---------------------------------------
solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

----------------------------ALGO-----------------------------------------

--> method 1 --> solution(str, search_txt) --> integer
  -Delete all instances of the search_txt found in the str.
  -Subtract the length of the modified str from the non-modified string and divide the result by the length od the search_txt
  -return result
  
=end

def solution(str, search_txt)
  mod_str = str.delete(search_txt)
  (str.size - mod_str.size) / search_txt.size
end


p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
```

---

## Alphabet Symmetry ##

- Difficulty: **medium**
- [x] Problem Completed?

Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

Good luck!

If you like this Kata, please try:

Last digit symmetry

Alternate capitalization

p solve(["abode","ABc","xyzD"]) == [4,3,1] \
p solve(["abide","ABc","xyz"]) == [4,3,0] \
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7] \
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Array of strings
Output: 1 Array of integers, same length as input array

---------------------------RULES-----------------------------------------
Explicit:
  -Return an array of the number of characters that their current position is the same position within the alphabet.
  -Inputs will only contain alphabetic characters
  -Uppercase and lower
  -No spaces
Implicit:
  -No empty arrays as arguments
  -No empty strings as elements within the input arrays

--------------------------EXAMPLES---------------------------------------
solve(["abode","ABc","xyzD"]) = [4, 3, 1]
"a", "b", "c", "d", "e", "f", "g", "h", "i"
--> abode
'a' pos 1 in string and alphabet +1
'b' pos 2 in string and alphabet +1
'o' pos not matching xxxxxxxxxx
'd' pos 4 in string and alphabet +1
'e' pos 5 in string and alphabet +1
--> 4 elements match!

----------------------------ALGO-----------------------------------------
==> Initialize an arr of all alphabetical letters ordered, then compare the pos of individual letters in strings to see how many match their position within the alphabet. Return an array with the number of matches per string object.

-- main method --> solve(array of strings) --> array of integers
  -create alphabet array
  -iterate through given array using transformation
    -find number of elements thats indices match their corrisponding index in alphabet_arr
  -return transformed array
  
-- helper method --> find_same_positioned(arr, alphabet_arr) --> integer
  -initialize a count variable and set to 0
  -iterate through the given array
    -if the current elements index and that elements index within the alphabet_arr are the same
      -increment count by 1
  -return count
  
-- helper method --> make_alpha_arr --> array
  -create an array of all the letters of the alphabet in lowercase and return
  
=end

def solve(main_arr)
  alpha_arr = make_alpha_arr
  main_arr.map { |string| find_same_pos(string, alpha_arr) }
end

def find_same_pos(string, alpha_arr)
  count = 0
  string.chars.each_with_index do |el, index|
    if index == alpha_arr.index(el.downcase)
      count += 1
    end
  end
  count
end

def make_alpha_arr
  ('a'..'z').to_a
end

# p make_alpha_arr

# p find_same_pos("abode", make_alpha_arr)
# p find_same_pos("ABc", make_alpha_arr)
# p find_same_pos("xyzD", make_alpha_arr)

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
```

---

## Longest Vowel Chain ##

- Difficulty: **medium**
- [x] Problem Completed?

The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

p solve("codewarriors") == 2 \
p solve("suoidea") == 3 \
p solve("iuuvgheaae") == 4 \
p solve("ultrarevolutionariees") == 3 \
p solve("strengthlessnesses") == 1 \
p solve("cuboideonavicuare") == 2 \
p solve("chrononhotonthuooaos") == 5 \
p solve("iiihoovaeaaaoougjyaw") == 8

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 Integer

---------------------------RULES-----------------------------------------
Explicit:
  -Find the longest substring in the string that contains only vowels (aeiou)
  -Input strings will be all lowercase
  -Input string will contain only alphabetic letters, and no spaces
Implicit:
  -Input string will not be empty
  
--------------------------EXAMPLES---------------------------------------
p solve("codewarriors") returns ==> 2
codewarriors
vowel substrings:
'o'  length -> 1
'e'  length -> 1
'a'  length -> 1
'io' length -> 2 ***
The longest substring of only vowels is 2 characters long

----------------------------ALGO-----------------------------------------
==> Seach through the given string to find all of the substrings containing only vowel characters and return the length of the longest of these substrings

-- main method --> solve(string) --> integer
  -initialize 'subs' to the return value of the find_subs array with the given array passed in as an argument
  -iterate through the 'subs' array and select all sub strings that contain only vowels
  -find the length of the longest vowel substring and return
  
-- helper method --> find_subs(arr) --> array
  -initialize 'sub_strs' to an empty array
  -iterate through the array passed in
    -find each substring and push into the 'sub_strs' array
  -return 'sub_strs' array
  
=end

=begin
def solve(str)
  vowels = %w(a e i o u)
  subs = find_subs(str.chars)
  vowel_arr = subs.select do |str|
    str.chars.all? { |char| vowels.include?(char) }
  end
  vowel_arr.max { |str| str.size }.size
end

def find_subs(arr)
  sub_strings = []
  1.upto(arr.size) do |num|
    arr.each_cons(num) { |sub_arr| sub_strings << sub_arr.join }
  end
  sub_strings
end

# p find_subs(%w(c o d e w a r r i o r s))

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
=end

=begin
** MUCH QUICKER METHOD !!!

-- main method --> solve(str) --> integer
  -substitute all characters of given string that are not vowels with a space
  -split string at blank spaces
  -find string with greatest length
  -return length

=end

def solve(str)
  new_str = str.gsub(/[^'aeiou']/, ' ')
  longest = new_str.split(' ').max { |a, b| a.size <=> b.size }  
  longest.size
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
```

---

## Non Even Substrings ##

- Difficulty: **medium**
- [x] Problem Completed?

Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.
=end
p solve("1341") == 7 \
p solve("1357") == 10 \
p solve("13471") == 12 \
p solve("134721") == 13 \
p solve("1347231") == 20 \
p solve("13472315") == 28

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Given a string of integers, return the number of odd-numbered substrings that can be formed.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String, of digits
Output: 1 integer, the number of odd substrings found in given

---------------------------RULES-----------------------------------------
Explicit:
  -Return the number of odd-numbered substrings that can be formed
Implicit:
  -Input string will not be empty
  -Input string will contain only digits

--------------------------EXAMPLES---------------------------------------
"1341" --> odd substrings => 1, 1, 3, 13, 41, 341, 1341
Total of 7 odd numbers found in the given string of digits.

solve("1341") = 7

----------------------------ALGO-----------------------------------------
==> Find all substrings of the given string input, then filter to only odd substrings and then find the number of odd substrings.

-- solve(string) --> integer
  -initialize 'sub_strings' to the array returned by the find_subs method
  -select all of the sub_strings that are odd when converted to integers
  -find the number of odd substrings and return
  
-- find_subs(string) --> array
  -initialize 'subs' to an empty array
  -split the string into an array of characters
  -iterate over the array starting from 1 and increasing the 'length' by 1 for each iteration
    -iterate to find each consecutive possible substring using 'length' as the parameter
      -push each substring into 'subs'
  -return 'subs'
  
=end

def find_subs(str)
  subs = []
  digits = str.chars
  1.upto(str.size) do |length|
    digits.each_cons(length) { |sub_arr| subs << sub_arr.join }
  end
  subs
end

# p find_subs("1341")

def solve(str)
  sub_strings = find_subs(str)
  sub_strings.select { |str| str.to_i.odd? }.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
```

---

## Substring Fun ##

- Difficulty: **medium**
- [x] Problem Completed?

Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes" \
  ^        ^        ^ \
  n=0     n=1     n=2

Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

p nth_char(['yoda', 'best', 'has']) == 'yes' \
p nth_char([]) == '' \
p nth_char(['X-ray']) == 'X' \
p nth_char(['No', 'No']) == 'No' \
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

--------------------------PROBLEM----------------------------------------
Questions:
Input 1 Array
Output: 1 String

---------------------------RULES-----------------------------------------
Explicit:
  -Concatenate the character at the nth position of each word in the input array so that they create a new word
  -Test cases will always be valid inputs  
Implicit:
  -An empty array is valid, and will return an empty string
  -Non-letter characters are valid

--------------------------EXAMPLES---------------------------------------
["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^          ^
  n=0     n=1     n=2    new string returned
----------------------------ALGO-----------------------------------------
==> Go through each word in the given array and select the proper element to be added to a new string, then return the newly constructed string

-- nth_char(array) --> string
  -initialize 'string' to an empty string
  -iterate through the given array utilizing index
    -concatenate the character at the given index to 'string'
  -return 'string'

=end

def nth_char(arr)
  string = ''
  arr.each_with_index { |word, index| string.concat(word[index]) }
  string
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
```

---

## Repeated Substring ##

- Difficulty: **medium**
- [x] Problem Completed?

For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times. The input string consists of lowercase latin letters. Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:

for string s = "ababab"
the answer is ["ab", 3]

Example #2:

for string s = "abcde" the answer is "abcde" because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

p f("ababab") == ["ab", 3] \
p f("abcde") == ["abcde", 1]

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times. The input string consists of lowercase latin letters. Your function should return an array (in Ruby and JavaScript) [t, k]

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 Array, substring and times it repeats to create given string

---------------------------RULES-----------------------------------------
Explicit:
  -Find smallest substring that when repeated forms the input string
  -Return repeated substring and the number of times needed to match input string in a 2 element array
  -Input strings will be lowercase letters
Implicit:
  -Input string will not be empty or contain non-alphabetical letters

--------------------------EXAMPLES---------------------------------------
Example #1:

for string s = "ababab" the answer is ["ab", 3]

Example #2:

for string s = "abcde" the answer is because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

----------------------------ALGO-----------------------------------------
==> Find all substrings of given string, then find all substrings that when repeated a certain number of times are equal to the input string, then find the shorted of the matching substrings and return it and the number of times when repeated form the input string. 

-- f(string) --> array(1 string and 1 integer)
  -initialize 'subs' to the return value of find_subs(string)
  -initialize 'matches' to the return value of find_matching_subs(subs, string)
  -sort through 'matches' to find the highest integer in index 1 of all sub-arrays and return that sub-array
  
-- find_subs(string) --> array
  -initialize 'subs' to an empty array
  -split string into array of characters (char_arr)
  -loop from 1 to the length of char_arr using the number as a 'length'
    -iterate through the char_arr to find sensectutive sub_strings of the length of 'length'
      -push sub_strings to the 'subs' array
  -return 'subs'

-- find_matching_subs(array, string) --> array
  -initialize 'matches' to an empty array
  -iterate through 'array' with 'el' as current element
    -intialize 'count' to 0
    -initialize 'current' to enpty string
    -loop
      -concat 'el' to 'current'
      -increment 'count' by 1
      
    -break if current's length is greater than or equal to string length
    -if 'current' is equal in length to 'string'
      -push 'el' and 'count' as a 2 element sub-array to 'matches'
  -return 'matches'
  
=end

def find_subs(string)
  subs = []
  1.upto(string.size) do |length|
    string.chars.each_cons(length) { |arr| subs << arr.join }
  end
  subs
end

def find_matching_subs(arr, str)
  matches = []
  arr.select do |sub_str|
    count = 0
    current = ''
    loop do 
      current.concat(sub_str)
      count += 1
      break if current.size >= str.size
    end
    matches << [sub_str, count] if current == str
  end
  matches.uniq
end

def f(string)
  subs = find_subs(string)
  matches = find_matching_subs(subs, string)
  matches.sort_by { |arr| arr[1] }.last
end

# p find_subs("ababab")

# arr =["a", "b", "a", "b", "a", "b", "ab", "ba", "ab", "ba", "ab", "aba", "bab", "aba", "bab", "abab", "baba", "abab", "ababa", "babab", "ababab"]
# p find_matching_subs(arr, "ababab")

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
p f("apeapeapeape") == ["ape", 4]
p f("poopspoops") == ["poops", 2]
```

---

## Typoglycemia Generator ##

- Difficulty: **hard**
- [x] Problem Completed?

There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are separatedseperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata punctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: [here](http://en.wikipedia.org/wiki/Typoglycemia)
=end

p scramble_words('professionals') == 'paefilnoorsss' \
p scramble_words('i') == 'i' \
p scramble_words('') == '' \
p scramble_words('me') == 'me' \
p scramble_words('you') == 'you' \
p scramble_words('card-carrying') == 'caac-dinrrryg' \
p scramble_words("shan't") == "sahn't" \
p scramble_words('-dcba') == '-dbca' \
p scramble_words('dcba.') == 'dbca.' \
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters. 

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata punctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia


--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String

---------------------------RULES-----------------------------------------
Explicit:
  - the first and last characters remain in original place for each word
  - characters between the first and last characters must be sorted alphabetically
  - punctuation should remain at the same place as it started, for example: shan't -> sahn't
Implicit:
  -words are seperated by single spaces
  -only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
  -special characters do not take the position of the non special characters, for example: -dcba -> -dbca
  -for this kata punctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
  -ignore capitalisation

--------------------------EXAMPLES---------------------------------------
scramble_words('professionals') returns ==> 'paefilnoorsss'
--> 'professionals'
--> 'p' + 'rofessional' + 's'
--> 'p' + 'aefilnoorss' + 's'
--> 'paefilnoorsss'

----------------------------ALGO-----------------------------------------
==> Find any non-alphabetical characters and save them and their index, then delete from the string. Save and remove the first char and the last char from the string. Sort the remaining characters. Prepend the first char and append the last char. Then insert the non-alphabetical char if applicable. 

-- scramble_words(string) --> string
  -split string by blank spaces and iterate
    -if there is any non-alphabetical characters, delete and save their index and char
    -if string 3 chars or shorter return str
    -delete first el and save to 'first'
    -delete last el and save tio 'last'
    -sort remaining characters
    -prepend 'first
    -append 'last'
    -insert non-alphabetical chars if applicable
  -join array

  
  
=end

def scramble_one_word(word)
  if word.size <= 3 
    word
  else 
    word = word.chars
    first = word.delete_at(0)
    last = word.delete_at(-1)
    word = word.sort.join
    word = first + word + last
  end
end

def scramble_words(str)
  str.split(' ').map do |word|

    if word.match?(/[-.,']/)
      punc_index = word.index(/[,.'-]/)
      punc = word.chars.delete_at(punc_index)
      word = word.delete(punc)
    end
    
    word = scramble_one_word(word)
    
    if punc_index 
      word.insert(punc_index, punc)
    else
      word
    end
  end.join(' ')
end

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
```

---

## Most Frequently Used Words in a Text ##

- Difficulty: **hard**
- [X] Problem Completed?

Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

Examples:

top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.") \
returns => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") \
returns => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't") \
returns => ["won't", "wont"]

Bonus points (not really, but just for fun): \
Avoid creating an array whose memory footprint is roughly as big as the input text. \
Avoid sorting the entire array of unique words.

p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"] \
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"] \
p top_3_words("  //wont won't won't ") == ["won't", "wont"] \
p top_3_words("  , e   .. ") == ["e"] \
p top_3_words("  ...  ") == [] \
p top_3_words("  '  ") == [] \
p top_3_words("  '''  ") == [] \
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 Array, 3 most frequently used strings

---------------------------RULES-----------------------------------------
Explicit:
  -A word is any string of letters or punctuation separated by a space
  -matches are case insensitive
  -output should be lowercase
  -ties broken by first most frequently found string in the results array
  -if less than 3 words return top 2 or 1 words
  -return an array of the top 3 most frequently found words in the given string in descending order
Implicit:
  -Multiple spaces between words in given string is acceptable
  -if given string has no alphabetical characters it will return an empty array

--------------------------EXAMPLES---------------------------------------
top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]

----------------------------ALGO-----------------------------------------
==> Clean up given string by removing unnecessary punctuation and white space while isolating individual words into an array. Tally the occurances of each word in the given string and then return the 3 most frequently found words.

-- top_3_words(string) --> array
  -downcase given string
  -convert to array of characters (arr)
  -remove any blank spaces, lone numbers and lone punctuation
  -tally the occurances of each word to a hash
  -sort the hash by its values
  -find the 3(or less) most frequently used keys and return in an array

=end

# def top_3_words(str)
#   arr_of_words = str.downcase.gsub(/[^a-zA-Z ']/, '').split
#   filtered_words = arr_of_words.select { |word| word.match?(/[a-z]/) }
#   words_hash = filtered_words.tally
#   words_hash.max_by(3) { |word, count| count }.to_h.keys
# end

def tally_words(arr)
  arr.each_with_object(Hash.new(0)) do |word, hash|
    hash[word] += 1
  end
end

def top_3_words(str)
  arr_of_words = str.downcase.gsub(/[^a-zA-Z ']/, '').split
  filtered_words = arr_of_words.select { |word| word.match?(/[a-z]/) }
  words_hash = tally_words(filtered_words)
  words_hash.max_by(3) { |word, count| count }.to_h.keys
end

p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
```

---

## Detect Pangram ##

- Difficulty: **medium**
- [x] Problem Completed?

A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

p panagram?("The quick brown fox jumps over the lazy dog.") == true \
p panagram?("This is not a pangram.") == false

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

--------------------------PROBLEM----------------------------------------
Questions:
-What's a pangram?
  --> A pangram is a sentence that contains every single letter of the alphabet at least once.
Input: 1 String
Output: Boolean

---------------------------RULES-----------------------------------------
Explicit:
  -determine whether the given string is a pangram
    -if so, return true
    -otherwise- return false
  -ignore numbers and punctuation
Implicit:
  -inputs will be valid strings
--------------------------EXAMPLES---------------------------------------
p panagram?("The quick brown fox jumps over the lazy dog.") == true
Every letter in the alphabet is used within the given string
Therefore, this will return 'true'

----------------------------ALGO-----------------------------------------
==> Breakdown given string into characters and check to see if every letter of the alphabet has been used. 

-- method --> pangram?(string) --> boolean
  -assign 'alpha' to an array of all alphabetical letters
  -split the given string into characters
  -determine if all letters of the alphabet are found in the array of characters
  -return true if so,
  -otherwise return false

=end

def panagram?(str)
  alpha = ('a'..'z').to_a
  alpha.all? { |letter| str.downcase.include?(letter) }
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
```

---

## Kebabize ##

- Difficulty: **medium**
- [x] Problem Completed?

Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps \
kebabize('camelsHave3Humps') // camels-have-humps

Notes:

the returned string should only contain lowercase letters

p kebabize('myCamelCasedString') == 'my-camel-cased-string' \
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Modify the kebabize function so that it converts a camel case string into a kebab case.

the returned string should only contain lowercase letters

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String, modified

---------------------------RULES-----------------------------------------
Explicit:
  -convert a camel cased string into kebab cased. camelCase kabab-cased
  -return string should be all lowercase letters
Implicit:
  -a number within a string will be ommited
  
--------------------------EXAMPLES---------------------------------------
kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps

'camelsHaveThreeHumps' --> camel case
'camels' + 'Have' + 'Three' + 'Humps'
-->     sH        eT        eH
        s-h       e-t       e-h
        'camels-have-three-humps'

----------------------------ALGO-----------------------------------------
==> Go through the string character by character and identify when a lowercase letter is followed by an uppercase letter, then convert the uppercase to lower and put a dash between them.

-- method --> kebabize(string) --> string
  -split string into characters (str_arr)
  -initialize 'kebab_str' to an empty array
  -iterate through str_arr with index
    -if index is 0 
      -push current element to 'kebab_str'
    -if current element is the same as itself capitalized
      -push a dash to 'kabab_str'
      -push current element downcased to 'kabab_str'
    -otherwise
      -push current element to 'kabab_str'
  - join and return 'kabab_str'
  
=end

def kebabize(str)
  kebab_str = []
  str.chars.each_with_index do |char, index|
    if char.to_i.to_s == char
      next
    elsif index == 0
      kebab_str.push(char)
    elsif char == char.upcase
      kebab_str.push('-', char.downcase)
    else
      kebab_str.push(char)
    end
  end
  kebab_str.join
end


p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
```

---

## Dubstep ##

- Difficulty: **medium**
- [x] Problem Completed?

Polycarpus works as a [here](Dhttps://www.codewars.com/kata/551dc350bf4e526099000ae5/train/rubyJ) in the best Berland nightclub, and he often uses dubstep music in his performance. Recently, he has decided to take a couple of old songs and make dubstep remixes from them.

Let's assume that a song consists of some number of words (that don't contain WUB). To make the dubstep remix of this song, Polycarpus inserts a certain number of words "WUB" before the first word of the song (the number may be zero), after the last word (the number may be zero), and between words (at least one between any pair of neighbouring words), and then the boy glues together all the words, including "WUB", in one string and plays the song at the club.

For example, a song with words "I AM X" can transform into a dubstep remix as "WUBWUBIWUBAMWUBWUBX" and cannot transform into "WUBWUBIAMWUBX".

Recently, Jonny has heard Polycarpus's new dubstep track, but since he isn't into modern music, he decided to find out what was the initial song that Polycarpus remixed. Help Jonny restore the original song.

Input \
The input consists of a single non-empty string, consisting only of uppercase English letters, the string's length doesn't exceed 200 characters

Output \
Return the words of the initial song that Polycarpus used to make a dubsteb remix. Separate the words with a space.

Examples \
song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")  =>  WE ARE THE CHAMPIONS MY FRIEND \
p song_decoder("AWUBBWUBC") == "A B C" \
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C" \
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Polycarpus works as a Dhttps://www.codewars.com/kata/551dc350bf4e526099000ae5/train/rubyJ in the best Berland nightclub, and he often uses dubstep music in his performance. Recently, he has decided to take a couple of old songs and make dubstep remixes from them.

Let's assume that a song consists of some number of words (that don't contain WUB). To make the dubstep remix of this song, Polycarpus inserts a certain number of words "WUB" before the first word of the song (the number may be zero), after the last word (the number may be zero), and between words (at least one between any pair of neighbouring words), and then the boy glues together all the words, including "WUB", in one string and plays the song at the club.

For example, a song with words "I AM X" can transform into a dubstep remix as "WUBWUBIWUBAMWUBWUBX" and cannot transform into "WUBWUBIAMWUBX".

Recently, Jonny has heard Polycarpus's new dubstep track, but since he isn't into modern music, he decided to find out what was the initial song that Polycarpus remixed. Help Jonny restore the original song.

Input
The input consists of a single non-empty string, consisting only of uppercase English letters, the string's length doesn't exceed 200 characters

Output
Return the words of the initial song that Polycarpus used to make a dubsteb remix. Separate the words with a space.

Examples
song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")  =>  WE ARE THE CHAMPIONS MY FRIEND

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String, capitalized letters only
Output: 1 String

---------------------------RULES-----------------------------------------
Explicit:
  -Find the letters of the given strings between 'WUB's
  -return the leftover letters as a string separated by a space
Implicit:
  -inputs and outputs will all be capitalized
  -will not be empty
  -will only contain letters

--------------------------EXAMPLES---------------------------------------

----------------------------ALGO-----------------------------------------
--- method --> song_decoder(string) --> string
  -replace all instances of 'WUB' with '*' 
  -split string by '*'
  -delete all '*'
  -join array by ' ' and return
  
=end

def song_decoder(string)
  string.gsub('WUB', ' ').split(' ').join(' ')  
end

p song_decoder("AWUBBWUBC") == "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"
p song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB") == "WE ARE THE CHAMPIONS MY FRIEND"
```

---

## Take a Ten Minute Walk ##

- Difficulty: **medium**
- [x] Problem Completed?

You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true \
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false \
p is_valid_walk(['w']) == false \
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Array
Output: Boolean
---------------------------RULES-----------------------------------------
Explicit:
  -The given array will contain an assortment of the letters 'n', 's', 'e', and 'w' which are represenative of the directions of a map
  -The directions array should have 10 elements total
  -The directions array should have an equal number of 'n'/'s' and 'e'/'w' directions
  -If these two conditions are not met return false, otherwise true
Implicit:
  -all letters are lowercase
  
--------------------------EXAMPLES---------------------------------------
is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
The directions arr is 10 elements long but...
..there are 6 'n' directions and only 4 's' directions
so it returns false

----------------------------ALGO-----------------------------------------
-- method --> is_valid_walk(array) --> boolean
  -if directions array is 10 elements long
  -AND
  -there are equal number of 's' and 'n'
  -AND 
  -there are equal number of 'e' and 'w'
  -return true
  -otherwise return false

=end

def is_valid_walk(directions)
  directions.size == 10 && 
  directions.count('n') == directions.count('s') &&
  directions.count('e') == directions.count('w')
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
```

---

## Stop gninnipS My sdroW ##

- Difficulty: **medium**
- [x] Problem Completed?

Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw" \
p spin_words("This is a test") == "This is a test" \
p spin_words("This is another test") == "This is rehtona test" \
p spin_words('test') == 'test'

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present. 

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String
---------------------------RULES-----------------------------------------
Explicit:
  -Take any word of 5 or more characters and reverse the word within the string
  -Given strings will only consist of letters and spaces
  -spaces are only included when more than one word is found in the string
  -return the string
Implicit:
  -Capital letters remain capitalized
  
--------------------------EXAMPLES---------------------------------------
Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
Hey ==> only 3 characters
fellow ==> more than 4 characters --> reversed
warriors ==> more than 4 characters --> reversed
new string --> "Hey wollef sroirraw"

----------------------------ALGO-----------------------------------------
==> Reverse all words that have more than 4 characters and then return the string in its original order.

-- method --> spin_words(string) --> string
  -split string into individual words
  -iterate using transformation --> new_arr
    -if current element's length is > 4
      -return current element reversed
    -otherwise
      -return current element
  -join and return new-arr

=end

def spin_words(str)
  str.split.map do |word|
    if word.size > 4
      word.reverse
    else
      word
    end
  end.join(' ')
end

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
p spin_words("This is a test") == "This is a test" 
p spin_words("This is another test") == "This is rehtona test"
p spin_words("test") == "test"
```

---

## Nested Brackets ##

- Difficulty: **hard**
- [x] Problem Completed?

Given a string containing brackets [], braces {}, parentheses (), or any combination thereof, verify that any and all pairs are matched and nested correctly.

p paired?('[]]') == false \
p paired?(']][[') == false \
p paired?('{}{}[()]') == true \
p paired?('{}{}[()') == false \
p paired?('[({]})') == false \
p paired?('\left(\begin{array}{cc} \frac{1}{3} & x\\ ' + \
  '\mathrm{e}^{x} &... x^2 \end{array}\right)') == true \
p paired?('(((185 + 223.85) * 15) - 543)/2') == true

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Given a string containing brackets [], braces {}, parentheses (), or any combination thereof, verify that any and all pairs are matched and nested correctly.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 boolean

---------------------------RULES-----------------------------------------
Explicit:
  -Given string will include brackets [], braces {}, parentheses (), or any combo of 
  -verify that any and all pairs are matched and nested correctly.
Implicit:
  -given string can contain any other character types
  -any bracket opening must be closed with the corresponding closing bracket
  -a bracket within an outer bracket opening must be closed before the outer bracket can be closed
  
--------------------------EXAMPLES---------------------------------------
paired?('{}{}[()'); == false
'{}{}[()'
 {}
   {}
     [   --> missing closing bracket # return false
      ()

----------------------------ALGO-----------------------------------------

-- method --> paired?(string) --> boolean
  -create a hash of opening brackets and closing brackets (brackets)
  -initialize local variable to empty arr (stack)
  -iterate through the characters of the given string
    -if character is found in the value associated with 'opening' in the brackets hash
      -push character to 'stack'
    -if character is found in the value associated with 'closing' in the brackets hash
      -if the last element in 'stack' is the corresponding opening bracket 
        -remove last element from 'stack'
      -otherwise
        -return false
  -if 'stack' is empty 
    -return true
  -otherwise
    -return false
    
=end

BRACKETS = { '{' => '}', '(' => ')', '[' => ']' }

def matching_brackets?(closing, stack)
  index = BRACKETS.values.index(closing)
  
  BRACKETS.keys[index] == stack.last
end

def paired?(string)
  stack = []
  
  string.each_char do |char|
    if BRACKETS.keys.include?(char)
      stack << char
    elsif BRACKETS.values.include?(char)
      if matching_brackets?(char, stack)
        stack.pop
      else
        return false
      end
    end
  end
  stack.empty?
end


p paired?('[]]') == false
p paired?(']][[') == false
p paired?('{}{}[()]') == true
p paired?('{}{}[()') == false
p paired?('[({]})') == false
p paired?('\left(\begin{array}{cc} \frac{1}{3} & x\\ ' +
  '\mathrm{e}^{x} &... x^2 \end{array}\right)') == true
p paired?('(((185 + 223.85) * 15) - 543)/2') == true
```

---

## Write Number in Expanded Form ##

- Difficulty: **medium**
- [x] Problem Completed?

Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form.

expanded_form(12); # Should return '10 + 2' \
expanded_form(42); # Should return '40 + 2' \
expanded_form(70304); # Should return '70000 + 300 + 4' \
NOTE: All numbers will be whole numbers greater than 0. \

If you liked this kata, check out part 2!!

p expanded_form(12) == '10 + 2' \
p expanded_form(42) == '40 + 2' \
p expanded_form(70304) == '70000 + 300 + 4'

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
You will be given a number and you will need to return it as a string in Expanded Form. For example:

NOTE: All numbers will be whole numbers greater than 0.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Integer
Output: 1 String

---------------------------RULES-----------------------------------------
Explicit:
  -Return given integer into its expanded form as a string object
  -Given will be a whole number grater than 0
Implicit:
  -If a digit in the given integer is zero the return string will not include that, because it is not valid

--------------------------EXAMPLES---------------------------------------
expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
    70304
--> 70000
-->  0000 (not valid)
-->    300
-->     00 (not valid)
-->      4

==> '70000 + 300 + 4' (only valid numbers)

----------------------------ALGO-----------------------------------------
==> Split the given integer into an array of indivdual numbers based on their first digit and their place within the given integer. Remove any of the numbers that start with 0, join with spaces and a plus sign and return. 

-- method --> expanded_form(integer) --> string
  -intialize an empty string to 'expanded'
  -split integer into array of digits
  -convert array of digits to strings
  -iterate through the array of strings utilizing index (index)
    -take each element and based on its position in the array of strings add '0' to the element until it is the length of the array element starting from the elements current position, then push to 'expanded'
  -remove any string in the array of strings that starts with '0'
  -join the array of strings with ' + '
  -return new string
  
=end

def expanded_form(number)
  expanded = []
  arr_of_strings = number.to_s.chars
  
  expanded_arr = arr_of_strings.map.with_index do |num, index|
    final_str = num
    length = 1
    loop do
      break if length >= arr_of_strings.size - index
      num << '0'
      length += 1
    end
    
    num
  end
  
  expanded_arr.select { |str| str[0] != '0' }.join (' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
```

---

## Mexican Wave Variation 1 ##

- Difficulty: **hard**
- [x] Problem Completed?

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

Rules
  The input string will always be lower case but maybe empty. \
  If the character in the string is whitespace then pass over it as if it was an empty seat.

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"] \
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"] \
p wave("") == [] \
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"] \
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

Rules
  1.  The input string will always be lower case but maybe empty.
  2.  If the character in the string is whitespace then pass over it as if it was an empty seat.
  
--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 Array, of strings depicting a mexican wave

---------------------------RULES-----------------------------------------
Explicit:
  -input string will always be lowercase
  -input string may be empty
  -pass over any white space encountered
  -insert a copy of the given string to an array a number of times equal to the strings length
  -each copy pased to the array will have a single character capitalized based on the current index
Implicit:
  -empty string input will return an empty arrauy
  -if input string has whitespace only insert a copy of the string for each letter character

--------------------------EXAMPLES---------------------------------------
p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
"hello"
index 0 ==> 'Hello'
index 1 ==> 'hEllo'
index 2 ==> 'heLlo'
index 3 ==> 'helLo'
index 4 ==> 'hellO'
each copy passed to an array and returned
==> ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

----------------------------ALGO-----------------------------------------
==> Create a copy of the given string and capitalize the appropriate character then pass to an array. 

-- method --> wave(string) --> array
  -split string into array of characters
  -iterate through array using transformation using index (outer_index)
    -if current element is not a letter 
      -return nil
    -otherwise
      -initialize an empty string (current)
      -iterate through a copy of the input string using index (inner_index)
        -if 'outer_index' and 'inner_index' are the same 
          -push uppercase version of current element to 'current'
        -otherwise
          -push current element to 'current'
      -return 'current'
  -filter out all instances of array that are nil and return
  
=end

def wave(str)
  split_str = str.chars
  
  wave_arr = split_str.map.with_index do |char, outer_index|
    if char.match?(/[^A-z]/)
      nil
    else
      current = ''
      split_str.each_with_index do |inner_char, inner_index|
        if outer_index == inner_index
          current << inner_char.upcase
        else
          current << inner_char
        end
      end
      current
    end
  end
  wave_arr.compact
end


p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
```

---

## Sum Consecutives ##

- Difficulty: **hard**
- [x] Problem Completed?

You are given an array that contains only integers (positive and negative). Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

You can assume there is never an empty array and there will always be an integer.

p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2] \
p sum_consecutives([1,1,7,7,3]) == [2,14,3] \
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
You are given an array that contains only integers (positive and negative). Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

You can assume there is never an empty array and there will always be an integer.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -given array will contain pos and neg integers
  -return the sum of the numbers that are the same and consecutive in an array
  -given array will never be empty
Implicit Rules:
  -zero is an acceptable input
Questions:
  -

--------------------------EXAMPLES---------------------------------------
[1, 1, 7, 7, 3]
organize into subarrays of like integers

[[1, 1], [7, 7], [3]]
then find the sum for these like integer collections

[2, 14, 3]
return the array of these collections summed


-----------------------DATA STRUCTURES-----------------------------------
Input: 1 array
Output: 1 array
Additional DS Utilized:
  -utilizing integers within the arrays

----------------------------ALGO-----------------------------------------
High-Level-Algo:
* separate the like integers into sub-arrays
* find the sum of these sub-arrays
* return array of the sums

-- method --> sum_consecutives(array) --> array
  -slice the given array into sub-arrays when the element is not the same as the last
  -iterate through the array using transformation
    -find the sum of each sub-array
  -return the array of sums

=end

def sum_consecutives(arr)
  sliced_arr = arr.slice_when { |a, b| a != b }.to_a
  sliced_arr.map { |sub_arr| sub_arr.sum }
end

p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3] 
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]




#### ALTERNATIVE SOLUTION ####



=begin
-----------------------INSTRUCTIONS--------------------------------------
You are given an array that contains only integers (positive and negative). Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

You can assume there is never an empty array and there will always be an integer.

--------------------------PROBLEM----------------------------------------
Questions: 
Input: 1 Array
Output: 1 Array
---------------------------RULES-----------------------------------------
Explicit:
  -sum numbers in given array that are the same and consecutive
  -Integers in given array can be positive or negative
  
Implicit:
  -given array will not be empty

--------------------------EXAMPLES---------------------------------------
sum_consecutives([1,1,7,7,3]) ==> [2,14,3]
[1,1,7,7,3] -->  1 + 1 = 2, 7 + 7 = 14, 3 --> [2, 14, 3]

----------------------------ALGO-----------------------------------------
-- method sum_consecutives(array) --> array
  -initialize 'sums' to an empty array
  -iterate through the given array with index (num, index)
    -initialize 'sum' to 0
    -initialize 'current' to 0
    -loop 
      -set 'current' to 'num'
      -increment 'sum' by 'current'
      -break if array[index] is not equal to array[index + 1]
    -end
    -push 'sum' to 'sums'
  -return 'sums'

=end

def sum_consecutives(arr)
  temp = []
  result = []
  
  arr.each do |num|
    if temp.last == num
     temp << num
    else
      result << temp
      temp = []
      temp << num
    end
  end
    result << temp
    result.shift
    result.map(&:sum)
end

p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
```

---

## Mexican Wave Variation 2 ##

- Difficulty: **hard**
- [x] Problem Completed?

Your task is to create a method that turns a string into a wave (like at a stadium). You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

Rules

 1. The input string will always be lower case but maybe empty.
 2. If the character in the string is whitespace then pass over it
 3. Leave each fourth letter unaltered—-do not make those letters uppercase

p wave("hello") == ["Hello", "hEllo", "heLlo", "hello", "hellO"] \
p wave("studying") == ["Studying", "sTudying", "stUdying", "studying", "studYing", "studyIng", "studyiNg", "studying"] \
p wave("launch school") == ["Launch school", "lAunch school", "laUnch school", "launch school", "launCh school", "launcH school", "launch School", "launch school", "launch scHool", "launch schOol", "launch schoOl", "launch school"] \
p wave("") == []

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Your task is to create a method that turns a string into a wave (like at a stadium). You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

Rules

 1. The input string will always be lower case but maybe empty.
 2. If the character in the string is whitespace then pass over it
 3. Leave each fourth letter unaltered—-do not make those letters uppercase

--------------------------PROBLEM----------------------------------------
Questions: 
Input: 1 String
Output: 1 Array
---------------------------RULES-----------------------------------------
Explicit:
  -input string will be lowercase but may be an empty string
  -it char is white space pass it over
  -leave each 4th letter unaltered
Implicit:
  -empty string input with return an empty array

--------------------------EXAMPLES---------------------------------------
wave("hello") == ["Hello", "hEllo", "heLlo", "hello", "hellO"]
1st -- "Hello"
2nd -- "hEllo"
3rd -- "heLlo"
4th -- "hello"
5th -- "hellO"
--> ["Hello", "hEllo", "heLlo", "hello", "hellO"]
----------------------------ALGO-----------------------------------------

-- method --> wave(string) --> array
  -intialize 'wave_arr' to empty array
  -split given string into characters and iterate utilizing index
    -if current element is ' '
      -return nil
    -otherwise
    `-initialize 'current' to an empty string
      -iterate over string split into characters utilizing index
        -if inner index and outer index are 3 
          -push current element to 'wave_arr'
        -if outer index and inner index are the same 
          -push current capitalized current letter to 'wave_arr'
        -otherwise
          -push current element to 'wave_arr'
  -return new array with `nil` values removed

=end

def wave(str)
  
  wave_arr = str.chars.map.with_index do |outer_char, outer_index|
    if outer_char == ' '
      nil
    else
      
      current = ''
      str.chars.each_with_index do |inner_char, inner_index|
        if inner_index == 3 && outer_index == 3
        # if we_skip(inner_index)
          current << inner_char
        elsif inner_index == outer_index
          current << inner_char.capitalize
        else
          current << inner_char
        end
      end
      
      current
    end
  end
  
  wave_arr.compact
end

def we_skip(index)
  INDEX_TO_SKIP = 4
  
  (index + 1) % INDEX_TO_SKIP == 0
end
  
p wave("hello") == ["Hello", "hEllo", "heLlo", "hello", "hellO"]
p wave("studying") == ["Studying", "sTudying", "stUdying", "studying", "studYing", "studyIng", "studyiNg", "studying"]
p wave("launch school") == ["Launch school", "lAunch school", "laUnch school", "launch school", "launCh school", "launcH school", "launch School", "launch school", "launch scHool", "launch schOol", "launch schoOl", "launch school"]
p wave("") == []
```

```ruby
#### ALTERNATIVE SOLUTION ####


=begin
-----------------------INSTRUCTIONS--------------------------------------
Your task is to create a method that turns a string into a wave (like at a stadium). You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

Rules

 1. The input string will always be lower case but maybe empty.
 2. If the character in the string is whitespace then pass over it
 3. Leave each fourth letter unaltered—-do not make those letters uppercase

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -return an array of the given string where each letter is capitalized at the next index
  -given string will always be lowercase
  -if the current char is whitespace, pass it over
  -every 4th letter remains unaltered
Implicit Rules:
  -given an empty string return an empty string
  -
Questions:

--------------------------EXAMPLES---------------------------------------
("studying")-> ["Studying", "sTudying", "stUdying", "studying", "studYing", "studyIng", "studyiNg", "studying"]
                 idx 0       idx 1        idx 2    idx 3 no cap   idx 4       idx 5        idx 6  idx 7 no caps

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 Array, of strings
Additional DS Utilized:
  -splitting strings into arrays
  -joining arrays into strings
  -integers to keep track of indices

----------------------------ALGO-----------------------------------------
High-Level-Algo:
* iterate over the chars of the given string
* populate a new array with modified versions of the given string
* return the array

-- method --> wave(string) --> array
-initialize letter_count to 1
  -split the given string into an array of characters (str_arr)
  -iterate through str_arr using transformation 
    -initialize str_arr to given string split into array of characters
    -if current char is whitespace
      -skip
    -if char is not a fourth iteration
      -increment letter_count
      -given string
    -otherwise
      -increment letter_count
      -capital the char of given string at the current index and push to wave
  -return wave, removing nils
  
=end

def wave(string)
  letter_count = 1
  wave = string.chars.map.with_index do |char, index|
    str_arr = string.chars
    if char == ' '
      next
    elsif letter_count % 4 == 0 
      letter_count += 1
      string
    else
      letter_count += 1
      str_arr[index] = char.upcase 
      str_arr.join
    end
  end
  
  wave.select { |word| word }
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "hello", "hellO"]
p wave("studying") == ["Studying", "sTudying", "stUdying", "studying", "studYing", "studyIng", "studyiNg", "studying"]
p wave("launch school") == ["Launch school", "lAunch school", "laUnch school", "launch school", "launCh school", "launcH school", "launch School", "launch school", "launch scHool", "launch schOol", "launch schoOl", "launch school"]
p wave("") == []
```

---

## Persistent Bugger ##

- Difficulty: **medium**
- [x] Problem Completed?

Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

For example:

persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                # and 4 has only one digit

persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                # 1*2*6=12, and finally 1*2=2

persistence(4) # returns 0, because 4 is already a one-digit number

p persistence(39) == 3 \
p persistence(4) == 0 \
p persistence(25) == 2 \
p persistence(999) == 4

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Integer 
Output: 1 Integer

---------------------------RULES-----------------------------------------
Explicit:
  -Return the number of times the given number must be split into digits and summed until it is a single digit number. 
  -Given input will be a positive number
Implicit:
  -if given number is already a single digit, return 0

--------------------------EXAMPLES---------------------------------------
persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
               # and 4 has only one digit
39
3 * 9 --> 27 (1)
27
2 * 7 --> 14 (2)
14
1 * 4 --> 4 (3)
4 --> only 1 digit

==> return 3

persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                # 1*2*6=12, and finally 1*2=2

persistence(4) # returns 0, because 4 is already a one-digit number

----------------------------ALGO-----------------------------------------
==> Count the number of a times the given integer needs to be split into individual digits and multiplied together until the result is a single-digit integer. 

-- method --> persistence(integer) --> integer
  -initialize 'current' to 'integer'
  -initialize 'count' to 0
  -loop 
    -break out of loop if 'current' is a single digit 
    -initialize 'temp' to nil
    -split current into digits and multiply them together, set to 'current'
    -increment 'count'
  -return count

=end

def persistence(given_num)
  current_num = given_num
  count = 0
  
  loop do 
    break if current_num.to_s.size <= 1
      count += 1
      temp = 1
      current_num.digits.each { |num| temp *= num }
      current_num = temp
  end
  count
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
```

---

## Title Case ##

- Difficulty: **medium**
- [x] Problem Completed?

A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings' \
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows' \
p title_case('the quick brown fox') == 'The Quick Brown Fox'

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Strings, first: string to be title cases, second: optional string of minor words
Output: 1 String, title cased

---------------------------RULES-----------------------------------------
Explicit:  
  -Title Case if either each word is:
    -capitalized(only first letter of word uppercased)
    -considered an exception(entirely in lowercase **unless it is the forst word)
  -First word in string is always capitalized
  -if word is not first in string and a minor word, lowercase
  -otherwise, capitalize
  -minor words will be given as a string of words separated by a space
Implicit:
  -second string argument is optional, if missing all words are capitalized
  -the case of input strings does not effect the case of the output

--------------------------EXAMPLES---------------------------------------
title_case('a clash of KINGS', 'a an the of') ==> 'A Clash of Kings'
sentence to be title cased --> 'a clash of KINGS'
minor words --> 'a an the of'
'a'     is first word      --> capitalized
'clash' not a minor word   --> capitalized
'of'    a minor wird       --> lowercased
'KINGS' not a minor words  --> capitalized

==> 'A Clash of Kings'

----------------------------ALGO-----------------------------------------

--method --> title_case(str1, str2(optional)) --> string
  -initialize title_string to str1 aplit into words and downcased
  -initialize minor_words to string 2 split into characters and downcased
  -initialize title_cased to an empty string
  -iterate through title_words with index using transformation
    -if index 0 or word not found in minor_words
      -capitalize word
    -otherwise
      -downcase word
  -join array of cased words and return

=end

def title_case(title, minors='')
  title_words = title.split.map(&:downcase)
  minor_words = minors.split.map(&:downcase)
  
  title_cased = title_words.map.with_index do |word, index|
    if index == 0 || !minor_words.include?(word)
      word.capitalize
    else
      word
    end
  end
  
  title_cased.join(' ')  
end

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
```

---

## Count and Group Character Occurrences in a String ##

- Difficulty: **medium**
- [x] Problem Completed?

Write a method that takes a string as an argument and groups the number of times each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]} \
You should ignore spaces, special characters and count uppercase letters as lowercase ones.

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]} \
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]} \
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]} \
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]} \
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a string as an argument and groups the number of times each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

You should ignore spaces, special characters and count uppercase letters as lowercase ones.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 Hash, key==> occurances of a letter, value, array containing the letters
---------------------------RULES-----------------------------------------
Explicit:  
  -Find the occurances of each letter in a given string and return them in a hash
    -Hash will be sorted by the highest occurances
    -The values will be an array of the letters matching the number of occurances sorted alphabetically
  -Ignore space, spoecial characters
  -Ignore case when counting letter occurances
Implicit:
  -Given string will not be empty
  -Integer characters are acceptable inputs

--------------------------EXAMPLES---------------------------------------
get_char_count("cba") => {1=>["a", "b", "c"]}
"cba"
"c" --> 1 occurance
"b" --> 1 occurance
"a" --> 1 occurance
returns => { 1 => ['a', 'b', 'c'] }

----------------------------ALGO-----------------------------------------
==> Breakdown the given string finding the number of occurances of all valid characters. Organize these occurances into a hash where the keys are the number of occurances, and the values are an array of characters that occur a number of times equal to their key. Keys are sorted greatest to elast, and values are sorted alphabetically. 

-- method --> get_char_count(string) --> hash
  -split given string into characters and iterate using each_with_object (occurances)
    -if valid_char?
      -increment the value of the current key
  -initialize 'final_occurances' as an empty hash
  -iterate through occurances
    -pass all keys to an array object if their values are alike, set the value to the new key in final_occurances
  -return final_occurances

    
-- method --> valid_char?(string) --> boolean
  -if character is valid
    -returns true 
  -otherwise
    -returns false

=end

def valid_char?(char)
  if char == '^'
    false
  else
    /[A-z0-9]/.match?(char)
  end
end

def find_occurances(str)
  str.downcase.chars.each_with_object(Hash.new(0)) do |char, hash|
    hash[char] += 1 if valid_char?(char)
  end  
end

def organize_occurances(occurances)
  occurances.each_with_object({}) do |(letter, times), organized_hsh|
    if organized_hsh[times].nil?
      organized_hsh[times] = [letter]
    else
      organized_hsh[times].push(letter)
    end
  end
end

def get_char_count(str)
  occurances = find_occurances(str)
  organized_occurances = organize_occurances(occurances)
  
  organized_occurances.sort.reverse.to_h.map do |k, v|
    [k, v.sort]
  end.to_h
end

# p valid_char?('a')
# p valid_char?('!')

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
p get_char_count("P%c5Ve6OtTFsh-Y4lnBlpiM5%+beCTdjNiO,nxG.X!jjzp*Jt.7tB^Nt8^VScr.BQ1") == {6=>["t"], 4=>["b", "j", "n"], 3=>["c", "p"], 2=>["5", "e", "i", "l", "o", "s", "v", "x"], 1=>["1", "4", "6", "7", "8", "d", "f", "g", "h", "m", "q", "r", "y", "z"]}
```

Secondary Solution:

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a string as an argument and groups the number of times each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

You should ignore spaces, special characters and count uppercase letters as lowercase ones.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 Hash, key==> occurances of a letter, value, array containing the letters
---------------------------RULES-----------------------------------------
Explicit:  
  -Find the occurances of each letter in a given string and return them in a hash
    -Hash will be sorted by the highest occurances
    -The values will be an array of the letters matching the number of occurances sorted alphabetically
  -Ignore space, spoecial characters
  -Ignore case when counting letter occurances
Implicit:
  -Given string will not be empty
  -Integer characters are acceptable inputs

--------------------------EXAMPLES---------------------------------------
get_char_count("cba") => {1=>["a", "b", "c"]}
"cba"
"c" --> 1 occurance
"b" --> 1 occurance
"a" --> 1 occurance
returns => { 1 => ['a', 'b', 'c'] }

----------------------------ALGO-----------------------------------------
==> Breakdown the given string finding the number of occurances of all valid characters. Organize these occurances into a hash where the keys are the number of occurances, and the values are an array of characters that occur a number of times equal to their key. Keys are sorted greatest to elast, and values are sorted alphabetically. 

-- method --> get_char_count(string) --> hash
  -filter out all unwanted characters from the string
  -group the collection into a hash
    -keys are occurances
    -values are the charatcers with that number of occurances
  -return the hash
  
=end

def get_char_count(str)
  downcased_str = str.downcase.gsub('^', '')
  downcased_str.gsub!(/[^A-z0-9]/, '')
  occurances = downcased_str.chars.group_by { |char| downcased_str.count(char) }
  occurances.map { |k, v| [k, v.uniq.sort] }.to_h.sort.to_h
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
p get_char_count("P%c5Ve6OtTFsh-Y4lnBlpiM5%+beCTdjNiO,nxG.X!jjzp*Jt.7tB^Nt8^VScr.BQ1") == {6=>["t"], 4=>["b", "j", "n"], 3=>["c", "p"], 2=>["5", "e", "i", "l", "o", "s", "v", "x"], 1=>["1", "4", "6", "7", "8", "d", "f", "g", "h", "m", "q", "r", "y", "z"]}
```

---

## Sum of Squared Divisors a Square ##

- Difficulty: **medium**
- [x] Problem Completed?

Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. The sum of the squared divisors is 2500 which is 50 * 50, a square!

Given two positive integers we want to find all integers between them whose sum of squared divisors is itself a square. 42 is such a number.

The result will be an array of arrays, each subarray having two elements, first the number whose squared divisors is a square and then the sum of the squared divisors.

p list_squared(1, 250) == [[1, 1], [42, 2500], [246, 84100]] \
p list_squared(42, 250) == [[42, 2500], [246, 84100]] \
p list_squared(250, 500) == [[287, 84100]]

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
# Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. The sum of the squared divisors is 2500 which is 50 * 50, a square!

# Given two positive integers we want to find all integers between them whose sum of squared divisors is itself a square. 42 is such a number.

# The result will be an array of arrays, each subarray having two elements, first the number whose squared divisors is a square and then the sum of the squared divisors.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Integers, representing a range of numbers
Output: 1 Array of arrays, each sub_array will contain; 
          -the numbers whose squared divisors is a square
          -sum of the squared divisors

---------------------------RULES-----------------------------------------
Explicit:
  -Given integers will be positive
  -find all integers between given integers whose sum of squared divisors is a square
    -find all divisors of a number
    -find the sum of all divisors squared
    -if the sum if a perfect square --> include array of number and sum of squared divisors
Implicit:
  -inputs will not be empty
  -will always be a integer (whole number)

--------------------------EXAMPLES---------------------------------------
p list_squared(42, 250) == [[42, 2500], [246, 84100]]
42..250
42 divisors --> 1, 2, 3, 6, 7, 14, 21, 42
squares of divisors --> 1, 4, 9, 36, 49, 196, 441, 1764
sum of squared divisors --> 2500
2500 if a square of 50! (50 * 50 == 2500)
returns ==> [42, 2500]

----------------------------ALGO-----------------------------------------
==> For each integer within the range of integers given as arguments, check to see if all of the divisors of the integers, when squared and added together is the product of a square. 

-- method --> list_squared(integer1, integer2) --> 1 Array of Arrays
  -intialize 'squared' to an empty array
  -iterate through the range of numbers given as arguments
    -find divisors of the current integer (divisors)
    -if divisors squared and added together form the product of a square
      -push sub_array to 'squared'
  -return 'squared'
    
-- method --> find_divisors(integer) --> array
  -initialize 'divisors' as empty array
  -iterate through all numbers between 1 and the given integer
    -initialize 'square' to current number can be divided evenly into given number
    -if 'square' is truthy
      -push current element and square to 'divisors'
  -return 'divisors'
  
-- method --> square_product(array) --> integer or nil
  -transform all elements of given array to themselves squared
  -find sum of all sqaured divisors
  -if sum is a product of aperfect square
    -return square
  -otherwise
    -return nil

=end

def find_divisors(num)
  divisors = []
  1.upto(num) do |current_num|
    divisors << current_num if num % current_num == 0
  end
  divisors
end

def square_product(array)
  squared = array.map { |num| num * num }.sum
  if Math.sqrt(squared) % 1 == 0
    squared
  end
end

def list_squared(start_num, end_num)
  squared = []
  start_num.upto(end_num) do |num|
    divisors = find_divisors(num)
    if square_product(divisors)
      squared << [num, square_product(divisors)]
    end
  end
  squared
end

p list_squared(1, 250) == [[1, 1], [42, 2500], [246, 84100]]
p list_squared(42, 250) == [[42, 2500], [246, 84100]]
p list_squared(250, 500) == [[287, 84100]]
```

---

## Find the Mine ##

- Difficulty: **easy**
- [x] Problem Completed?

You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in the 2D grid-like field in front of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine. The mine is represented as the integer 1 in the 2D array. Areas in the 2D array that are not the mine will be represented as 0s.

The location returned should be an array where the first element is the row index, and the second element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your function will be square (NxN), and there will only be one mine in the array.

p mine_location( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0] \
p mine_location( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1] \
p mine_location( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1] \
p mine_location([ [1, 0], [0, 0] ]) == [0, 0] \
p mine_location([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0] \
p mine_location([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in the 2D grid-like field in front of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine. The mine is represented as the integer 1 in the 2D array. Areas in the 2D array that are not the mine will be represented as 0s.

The location returned should be an array where the first element is the row index, and the second element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your function will be square (NxN), and there will only be one mine in the array.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Array, with nested arrays within
Output: 1 Array, location of the 1 (bomb)
---------------------------RULES-----------------------------------------
Explicit:  
  -integer 1 represents the bomb
  -return the location of the bomb in the form of an array;
    -first element is the index of the nested array that contains 1
    -second element is the index within the nested array of 1
    
Implicit:  
  -There will be no empty inputs
  -all nested array will be of the same length
  -there is only one 1 in the array

--------------------------EXAMPLES---------------------------------------
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
field = [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ]
field[1] --> [0, 1, 0]
field[1][1] --> 1
returns --> [1, 1]

----------------------------ALGO-----------------------------------------
==> find the index of the nested array containing the 1 and then find the index within the nexted array where the 1 is located and return these indices in an array

-- method --> mine_location(array) --> array
  -initialize 'mine_location' to an empty array
  -iterate through the given array
    -if the sub_array contains a 1
      -push the index of the sub_array to mine_location
      -push the index of the 1 found in the sub_array to mine_location
  -return mine_location

=end

MINE = 1

def mine_location(arr)
  mine_location = []
  arr.each_with_index do |sub_arr, index|
    if sub_arr.include?(MINE)
      mine_location << index
      mine_location << sub_arr.index(MINE)
    end
  end
  mine_location
end

p mine_location( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mine_location( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mine_location( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mine_location([ [1, 0], [0, 0] ]) == [0, 0]
p mine_location([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mine_location([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]
```

---

## Scramblies ##

- Difficulty: **easy**
- [x] Problem Completed?

Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included. \
Performance needs to be considered \
Input strings s1 and s2 are null terminated.

p scramble('rkqodlw', 'world') == true \
p scramble('cedewaraaossoqqyt', 'codewars') == true \
p scramble('katas', 'steak') == false \
p scramble('rkqodlw','world') == true \
p scramble('cedewaraaossoqqyt','codewars') == true \
p scramble('katas','steak') == false \
p scramble('scriptjava','javascript') == true \
p scramble('scriptingjava','javascript') == true

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -figure out if any of the characters in str1 can be rearranged to match str2
  -given strings will b elowercase letters
  -no punctuation or digits will be in given strings
Implicit Rules:
  -characters in str1 cannot count for multiple chars in str2
Questions:
  -Null terminated? 

--------------------------EXAMPLES---------------------------------------
rkqodlw', 'world'

str1 --> d k l o q r w
           x     x
str2 --> d   l o   r w --> matches up!

retuns true

-----------------------DATA STRUCTURES-----------------------------------
Input: 2 Strings
Output: boolean
Additional DS Utilized:
  -splitting strings into arrays

----------------------------ALGO-----------------------------------------
High-Level-Algo:
* iterate through the chars of str 2 to check if they exist in str 1
* retunr true if all characters are found, otherwise return false

-- method --> scramble(string, string) --> boolean
  -iinitialize index to 0
  -split str2 into array of characters
  -loop 
    -if char is found in str1
      -remove char from str1
    -otherwise
      -return false
  -return true

=end

def scramble(str1, str2)
  index = 0
  
  while index < (str2.size - 1) do 
    return false unless str1.include?(str2[index])
    index += 1
  end
  true
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
```

```ruby
#### ALTERNATE SOLUTION ####

=begin
-----------------------INSTRUCTIONS--------------------------------------
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.


--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Strings
Output: boolean
---------------------------RULES-----------------------------------------
Explicit:  
  -Return true if a portion of str1 can be rearranged to match str2
  -otherwise return false
  -only lowercase letters will be used (a-z)
  -no punctuation or digits
  -consider performance
  
Implicit:  
  -no empty inputs
  -str2 will never be longer than str1
 
--------------------------EXAMPLES---------------------------------------
p scramble('rkqodlw', 'world') == true
str1 --> 'rkqodlw'
str2 --> 'world'
r  - 'r' from world
k  - not in str2
q  - not in str2
o  - 'o' from world
d  - 'd' from world
l  - 'l' from world
w  - 'w' from world

returns true because all characters from str2 are found in str1

----------------------------ALGO-----------------------------------------
==> return true if all the characters in str2 are found in str1

-- method --> scramble(string, string) --> boolean
  -split str1 into array of characters
  -initialize 'index' to 0
  -loop
    -break if index greater than str2 length - 1 
    -return false if str1 doesn't include the character at current index
    -increment index by 1
    -delete element from str1 that matches index of str2
  -return true
    

=end

def scramble(str1, str2)
  str1_arr = str1.chars
  index = 0
  
  loop do 
    break if index >= str2.size
    if str1_arr.include?(str2[index])
      str1_arr = str1_arr.join.sub(str2[index], '').chars
      # p str1_arr, str2
      index += 1
    else
      return false
    end
  end
  true
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
p scramble("scriptjavx", "javascript") == false
p scramble("aabbcamaomsccdd", "commas") == true

## Still isn't passing codewars efficiency tests
```

---

## Longest Alphabetical Substring ##

- Difficulty: **medium**
- [ ] Problem Completed?

Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

p longest('asd') == 'as' \
p longest('nab') == 'ab' \
p longest('abcdeapbcdef') == 'abcde' \
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt' \
p longest('asdfbyfgiklag') =='fgikl' \
p longest('z') == 'z'
p longest('zyba') == 'z'

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Find the longest substring in alphabetical order.

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

--------------------------PROBLEM----------------------------------------
Questions:
  if given string is alphabetical already will that be the correct output?
Input: 1 String
Output: 1 String
---------------------------RULES-----------------------------------------
Explicit:  
  -Find the longest alphabetical substring in the given string
  -given string will contain only lowercase letters at least one character long
  -if multiple solutions return the first in the order they appear
Implicit:  
  -a single character input string will output itself
  
 
--------------------------EXAMPLES---------------------------------------
Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
"asdfaaaabbbbcttavvfffffdf"
asdf
aaaabbbbctt --> longest alphabetical substring
avv
fffff
df
d

----------------------------ALGO-----------------------------------------
==> find all alphabetical substring within the given string and save to an array object. Find the longest alphabetical substring within the array and return. If there are multiple of the same length, return the first in the order. 

-- method --> longest(string) --> string
  -initialize 'alpha_subs' to an array of alphabetical substrings (find_alpha_subs(string))
  -find the longest substring in alpha_subs and return

-- method --> find_alpha_subs(string) --> array
  -initialized 'alpha_subs' to an empty array
  -split string into an array of characters
  -iterate through 1 upto the length of the array (length)
    -iterate through the array of strings based on the given 'length'
      -finding consective substrings that are alphabetical and pushinig them to alpha_subs
  -return alpha_subs

=end


### My way, not fast enough to pass on Codewars

def find_alpha_subs(str)
  alpha_subs = []
  1.upto(str.size) do |length|
    str.chars.each_cons(length) do |sub_arr|
      alpha_subs << sub_arr.join if sub_arr == sub_arr.sort
    end
  end
  alpha_subs
end

def longest(string)
  alpha_subs = find_alpha_subs(string)
  alpha_subs.max_by { |alpha_str| alpha_str.size }
end


### Faster way found on Codewars

# def longest(str)
#   p str.chars.slice_when { |a, b| a > b }
#              .max_by(&:size)
#              .join
# end


# p find_alpha_subs('nab')

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'
```

---

## Hashtag Generator ##

- Difficulty: **medium**
- [x] Problem Completed?

The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#). \
All words must have their first letter capitalized. \
If the final result is longer than 140 chars it must return false. \
If the input or the result is an empty string it must return false. \

Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata" \
"    Hello     World   "                  =>  "#HelloWorld" \
""                                        =>  false

p generateHashtag("") == false \
p generateHashtag(" "*200) == false \
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag" \
p generateHashtag("Codewars") == "#Codewars" \
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice" \
p generateHashtag("Codewars is nice") == "#CodewarsIsNice" \
p generateHashtag("code" + " "* 140 + "wars") == "#CodeWars" \
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false \
p generateHashtag("a" *139) == "#A" + "a"* 138 \
p generateHashtag("a" * 140) == false

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String
---------------------------RULES-----------------------------------------
Explicit:  
  -output string must begin with a '#'
  -all words in hashtag must have their first letter capitalized
  -return false if output string is > 140 characters
  -if input or output string is empty return false
Implicit:  
  -A hashtag begins with a '#' and every word capitalized with no spaces
  -

--------------------------EXAMPLES---------------------------------------
Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false

----------------------------ALGO-----------------------------------------
==> Break down given string into words, capitalize each words, remove all spaces and add '#' to the begining. 

-- method --> generate_hashtag(string) --> string or boolean object
  -return false if given string is empty
  -split string into array of words, removing all whitespace
  -transform array of words by capitalizing each word
  -add '#' to the beginning of the array
  -join array with ''
  -return false if new_string is greater than 140 characters

=end

def generate_hashtag(str)
  split_str = str.split
  return false if split_str.size == 0
  hashtagged = split_str.map(&:capitalize).unshift('#').join
  hashtagged.size > 140 ? false : hashtagged
end

p generate_hashtag("") == false
p generate_hashtag(" " * 200) == false
p generate_hashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generate_hashtag("Codewars") == "#Codewars"
p generate_hashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generate_hashtag("Codewars is nice") == "#CodewarsIsNice"
p generate_hashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generate_hashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generate_hashtag("a" * 139) == "#A" + "a" * 138
p generate_hashtag("a" * 140) == false
```

---

## Pete the Baker ##

- Difficulty: **medium**
- [x] Problem Completed?

Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, can be considered as 0.

Examples:

// must return 2 \
cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200});

// must return 0 \
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000});

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2 \
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11 \
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0 \
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0 \
p cakes({"eggs"=>4, "flour"=>400},{}) == 0 \
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, can be considered as 0.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Hashes, recipe requirements, ingredients had
Output: 1 Integer
---------------------------RULES-----------------------------------------
Explicit:  
  -Find out the maximum number of cakes that can be made based on;
    -recipes requirements
    -ingredients available
  -return number of cakes that be made
  -an ingredient not within the given hash equals 0
Implicit:  
  -inputs will not be blank

--------------------------EXAMPLES---------------------------------------
cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
reciped requirements --> {flour: 500,  sugar: 200,  eggs: 1}
ingredients had      --> {flour: 1200, sugar: 1200, eggs: 5, milk: 200}
ingredients had / recipe         2            6           5

maximum cakes that can be made --> 2

----------------------------ALGO-----------------------------------------
==> Divide the ingredients had by the recipe requirements and return the smallest value

-- method --> cakes(hash, hash) --> integer
  -iterate through the recipe hash initialize max_cakes to return value
    -divide the value of the recipe hash by the corrisponding ingredients value
    -push result to max_cakes
    -push 0 if value is not found in ingredients hash
  -find minimum value within max_cakes and return
  
=end

def cakes(recipe, ingredients)
  max_cakes = recipe.map do |component, amount|
    ingredients[component].to_i / amount
  end
  max_cakes.min
end


p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1

```

---

## Mean Square Error ##

- Difficulty: **medium**
- [x] Problem Completed?

Complete the function that

accepts two integer arrays of equal length \
compares the value each member in one array to the corresponding member in the other \
squares the absolute value difference between those two values \
and returns the average of those squared absolute value difference between each member pair.

Examples \
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3 \
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16)  / 4 \
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2 \

p solution([1, 2, 3], [4, 5, 6]) == 9 \
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5 \
p solution([-1, 0], [0, -1]) == 1

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Complete the function that

accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.

--------------------------PROBLEM----------------------------------------
Questions:
Input:  2 Arrays
Output: 1 Integer or Float
---------------------------RULES-----------------------------------------
Explicit:  
  -given array object will be of equal length
  -compares the elements at equal indices
  -find square of absolute value of element of array 2 subtracted from element of array 1
  -find and return the average between all elements
Implicit:  
  -positive and negative numbers accepted in given arrays
  -given arrays will not be empty

--------------------------EXAMPLES---------------------------------------
Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
1 - 4 = -3 (AV) --> 3 * 3 --> 9
2 - 5 = -3 (AV) --> 3 * 3 --> 9
3 - 6 = -3 (AV) --> 3 - 3 --> 9
                          -------
                             27 / 3 --> 9
                             
----------------------------ALGO-----------------------------------------

-- method --> solution(array, array) --> integer
  -intialize 'sum' to an empty array
  -initialize 'index' to 0
  -loop
    -subtract element of arr1 from arr2 at current index
    -square the absolute value of result
    -push result to 'sum'
    -increment index by 1
    -break if index > arr1 length
  -find sum of 'sum' array and divide by length of arr1
  -return result
  
=end

def solution(arr1, arr2)
  sum = []
  index = 0
  
  loop do 
    product = arr1[index] - arr2[index]
    sum << product * product
    index +=1
    break if index >= arr1.size
  end
  
  sum.map(&:to_f).sum / arr1.size
end

### ALTERNATIVE

# -- method --> solution(array, array) --> integer
#   -transpose the two arrays
#   -iterate through the new array (transformation)
#     -subtract second el from first
#     -square the result
#   -find sum of new array and divide it by length of arr1

def solution(arr1, arr2)
  [arr1, arr2].transpose.map.with_index do |num, index|
    (num[0] - num[1]) ** 2
  end.sum.to_f / arr1.size
end


p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
```

---

## Exponent Method ##

- Difficulty: **medium**
- [x] Problem Completed?

Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.

Examples:

p power(2, 3) == 8 \
p power(10, 0) == 1 \
p power(-5, 3) == -125 \
p power(-4, 2) == 16 \
p power(10, 0) == 1 \
p power(2, 3) == 8 \
p power(3, 2) == 9 \
p power(-5, 3) == -125 \
p power(-4, 2) == 16 \
p power(8, -2) == nil

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Integers
Output: 1 integer
---------------------------RULES-----------------------------------------
Explicit:  
  -Multiply the first input integer by itself number of times equal to the second input integer
  -do not use the ** operator
  -return nil if the second integer input is negative
Implicit:  
  -if the second input integer is 0 return 1

--------------------------EXAMPLES---------------------------------------
p power(2, 3) == 8
2 * 2 = 4 (2 times)
4 * 2 = 8 (3rd time)

==> 8
                             
----------------------------ALGO-----------------------------------------

-- method --> power(integer, integer) --> integer
  -return nil if num2 < 0
  -initialize current to num1
  -iterate through numbers starting at 1 upto num2
    -current is equal to current * num1
  -return current
  
=end

def power(num1, num2)
  return nil if num2 < 0
  return 1 if num2 == 0
  current = num1
  
  2.upto(num2) do
    current = current * num1
  end
  
  current
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil
```

---

## Where my Anagrams At ##

- Difficulty: **medium**
- [ ] Problem Completed?

What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false

Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa'] \
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer'] \
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. 

Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. 

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String, and 1 Array
Output: 1 Array
---------------------------RULES-----------------------------------------
Explicit:  
  -Find any anagrams of the given string input contained within the given array. 
  -Any found anagrams should be returned in an array
  -return an empty array if there are no anagrams
Implicit:  
  -Inputs will not be empty
  -only lowercase letters will used in string inputs

--------------------------EXAMPLES---------------------------------------
'abba' & 'baab' == true
--> both strings contain the letters 'a' 'a' 'b' 'b' ==> ['baab']

'abba' & 'bbaa' == true
--> both strings contain the letters 'a' 'a' 'b' 'b' ==> ['bbaa']

'abba' & 'abbba' == false
--> 'abbba' has more letters than 'abba' ==> []

'abba' & 'abca' == false
the two strings do not have the same letters => []

----------------------------ALGO-----------------------------------------

--method --> anagrams(string, array) --> array
  -initialize 'anagrams' to an empty string
  -set 'input_str' to given string split into array of characters and sorted
  -iterate through given array
    -
  
=end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []

```

---

## Determine Missing Letters ##

- Difficulty: **medium**
- [x] Problem Completed?

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Array
Output:  1 string
---------------------------RULES-----------------------------------------
Explicit:  
  -Find the missing character in the array of consecutive strings
  -Array will always be valid
  -There will always be exactly 1 letter missing
  -Array length will always be at least 2
  -ALl letters in the array will be cased the same
Implicit:  
  -

--------------------------EXAMPLES---------------------------------------
['O','Q','R','S'] == 'P'
    ^
The 'P' is missing from this sequence
Returns 'P'

----------------------------ALGO-----------------------------------------

--> method --> determine_missing_letter(array) --> string
  -initialize 'alpha' to an array of upper and lowercase letters
  -intialize 'current_index' to the index of the first char in given array within the alpha array
  -iterate through the given array utilizing index
    -if index is 0 go to next
    -if current elements index within the alpha array is not equal to 'current_index' plus 1
      -return the character from alpha at 'current_index' plus 1  
=end

def determine_missing_letter(arr)
  alpha = ('A'..'z').to_a
  current_index = alpha.index(arr.first)
  arr.each_with_index do |char, index|
    next if index == 0
    if alpha.index(char) != current_index + 1
      return alpha[current_index + 1]
    end
    current_index += 1
  end
end

# Alternative Solution using #next

def determine_missing_letter(arr)
  arr.each_with_index do |char, index|
    return char.next if char.next != arr[index + 1]
  end
end

p determine_missing_letter(['a','b','c','d','f']) == 'e' 
p determine_missing_letter(['O','Q','R','S']) == 'P'
p determine_missing_letter(["a","b","c","d","f"]) == "e"
p determine_missing_letter(["O","Q","R","S"]) == "P"
```

---

## Find Primes ##

- Difficulty: **medium**
- [x] Problem Completed?

Write a method that takes two numbers. Return an array containing all primes between the two numbers (include the two given numbers in your answer if they are prime). Don't use Ruby's 'prime' class.

p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2]

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes two numbers. Return an array containing all primes between the two numbers (include the two given numbers in your answer if they are prime). Don't use Ruby's 'prime' class.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Integers
Output: 1 Array
---------------------------RULES-----------------------------------------
Explicit:  
  -return all prime numbers between the 2 given integers, within an array
  -don't use Ruby's prime class
Implicit:  
  -given integers will always start greater than 0
  -given integers will be whole numbers

--------------------------EXAMPLES---------------------------------------
p find_primes(3, 10) == [3, 5, 7]
3..10 --> 3, 4, 5, 6, 7, 8, 9, 10
3 is prime
5 is prime
7 is prime

return ==> [3, 5, 7]

----------------------------ALGO-----------------------------------------
==> Find all prime numbers between the first and second integers given, including the given numbers. Return them in an array. 

-- method --> find_primes(integer, integer) --> array
  -initialize 'primes' to an empty array
  -iterate through num1 upto num2 (outer_num)
    -initialize 'divisors' to an empty array
    -iterate through all numbers starting from 1 upto the (current_num)
      -if inner_num is evenly divisible by outer num
        -push to divisors
    -if divisors is 2 or less elements long
      -push last element of divisors to primes
  -return primes
  
=end

def find_primes(num1, num2)
  primes = []
  num1.upto(num2) do |outer_num|
    divisors = []
    1.upto(outer_num) do |inner_num|
      divisors << inner_num if (outer_num % inner_num) == 0
    end
    primes << divisors.last if divisors.size <= 2 && divisors.last!= 1
  end
  primes
end

p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2]
```

---

## Find Some Substrings ##

- Difficulty: **medium**
- [x] Problem Completed?

Given two arrays of strings a1 and a2 return a sorted array r in alphabetical order of the strings of a1 which are substrings of strings of a2.

substrings(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"] \
substrings(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == [] \
substrings(["delta", "gamma", "alpha", "beta"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == ["alpha", "beta", "gamma"] \
substrings(["albe", "negam"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == []

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
# Given two arrays of strings a1 and a2 return a sorted array r in alphabetical order of the strings of a1 which are substrings of strings of a2.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Arrays
Output: 1 Array
---------------------------RULES-----------------------------------------
Explicit:  
  -Return a sorted alphabetically array of all strings within arr1, that are substrings of the strings in arr2. 
  -
Implicit:  
  -all array arguments will contain strings/not be empty
  -all strings will be lowercase
  -strings may contain some special characters

--------------------------EXAMPLES---------------------------------------
["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]
'arp' is a substring of 'harp'
'live' is a substring of 'lively'
'strong' is a substring of 'armstrong'

==> ["arp", "live", "strong"]

----------------------------ALGO-----------------------------------------

-- method --> substrings(array, array) --> array
  -initialize 'subs' to an empty array
  -iterate through the second array (full_str)
    -iterate through the first array (small_str)
      -if the full_str contains the current small_str
        -push small_str to subs
  -return all unique strings in subs sorted alphabetically

=end

def substrings(arr1, arr2)
  subs = []
  arr2.each do |full_str|
    arr1.each do |small_str|
      subs << small_str if full_str.include?(small_str)
    end
  end
  subs.uniq.sort
end

p substrings(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]
p substrings(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == []
p substrings(["delta", "gamma", "alpha", "beta"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == ["alpha", "beta", "gamma"]
p substrings(["albe", "negam"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == []
```

---

## Next Bigger Number ##

- Difficulty: **hard**
- [ ] Problem Completed?

You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:

12 ==> 21 \
513 ==> 531 \
2017 ==> 2071 \
If no bigger number can be composed using those digits, return -1: \
9 ==> -1 \
111 ==> -1 \
531 ==> -1

p next_bigger_num(9) == -1 \
p next_bigger_num(12) == 21 \
p next_bigger_num(513) == 531 \
p next_bigger_num(2017) == 2071 \
p next_bigger_num(111) == -1 \
p next_bigger_num(531) == -1 \
p next_bigger_num(123456789) == 123456798

```ruby

### SOLUTION TAKEN FROM CODEWARS

def next_bigger(value)

  # This brute force method works nicely for numbers with < 6 digits ...
  # 
  #  sorted_permutations =
  #    value.to_s
  #         .chars
  #         .map(&:to_i)
  #         .permutation.map{|a| a.join.to_i}
  #         .uniq
  #         .sort
  #         
  #  sorted_permutations[sorted_permutations.index(value) + 1] || -1

  # But with larger numbers its time complexity is clearly not suited.
  # So, I used this algorithm:
  # https://www.quora.com/How-do-I-write-a-code-to-find-the-next-highest-number-formed-by-the-digits-of-a-given-number

  
  # Convert the number into an array of digits and reverse it for easier iterating
  a = value.to_s.chars.map(&:to_i).reverse
   
  # The approach is to start with the tens digit, and iterate up, searching the digits
  # to the left of the current digit, for one that has a greater value than the current digit.
  # If found, then the current digit will be swapped with the digit found among those to the left,
  # that is the lowest value, but greater than the current digit. The leftmost such digit will be
  # swapped if its value is duplicated in the group. 
  1.upto(a.size - 1) do |i|
    left_digits = a.take(i)    
    swap_digit_index = find_min_value_greater_than left_digits, a[i]
    
    if swap_digit_index
          
      # Now swap the digits in the array
      a[swap_digit_index], a[i] = a[i], a[swap_digit_index]
      
      # Now arrange all of the digits on the left into descending order
      left_digits = a.shift(i).sort.reverse
     
      # Now reverse the entire array, and return it as an integer
      return (left_digits + a).reverse.map(&:to_s).join.to_i
    end
  end
  
  # Couldn't find a bigger number
  -1
end

# Searches through an array of integers, and
#  returns the index of the first minimum value that is also 
#  greater than the specified value.
# @param [Array<Integer>] values
# @param [Integer] subject the value
# @return [Integer,nil] returns the index of the element
#  that meets the above conditions or nil if none found.
def find_min_value_greater_than(array, value)
  return nil unless array.any? { |v| v > value }
  index = nil
  array.each_with_index do |v, i|
    if v > value
      index = index.nil? ? i : (v < array[index] ? i : index)
    end
  end
  index
end
```

---

## Split Strings ##

- Difficulty: **medium**
- [ ] Problem Completed?

Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

p solution('abc') == ['ab', 'c_'] \
p solution('abcdef') == ['ab', 'cd', 'ef'] \
p solution("abcdef") == ["ab", "cd", "ef"] \
p solution("abcdefg") == ["ab", "cd", "ef", "g_"] \
p solution("") == []

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 Array
---------------------------RULES-----------------------------------------
Explicit:
  -Split string into pairs of 2 characters
  -if string has an odd number of integers the last element should be `_`
Implicit:
  -empty string is an acceptable input
  -only lowercase letters will be used in given strings
--------------------------EXAMPLES---------------------------------------
p solution('abc') == ['ab', 'c_']
'abc'
--> ['ab', 'c_']
----------------------------ALGO-----------------------------------------
-- method --> solution(string) --> array
  -if string length is ogg?
    -push '_' to string
  -split string into array of characters and group the characters in pairs
=end
def solution(str)
  str << '_' if str.size.odd?
  str.chars.each_slice(2).t o_a.map(&:join)
end
p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
```

---

## Record Temps ##

- Difficulty: **medium**
- [x] Problem Completed?

You are given two arrays that each contain data that represents the min and max weather temperatures for each day of the week.

The first array, the records array, contains the all-time record low/high temperatures for that day of the week.
e.g. [[record low, record high], ...]

The second array, the current week array contains the daily low/high temperatures for each day of the current week.
e.g. [[daily low, daily high], ...]

A daily high temperature is considered a new record high if it is higher than the record high for that day of the week. A daily low temperature is considered a new record low if it is lower than the record low for that day of the week.

Compare the daily low/high temperatures of the current week to the record lows/highs and return an array with the updated record temperatures.

There may be multiple record temperatures in a week.
If there are no broken records return the original records array.

```ruby
                sun        mon      tues       wed      thur      fri       sat
record_temps([[34, 82], [24, 82], [20, 89],  [5, 88],  [9, 88], [26, 89], [27, 83]],
             [[44, 72], [19, 70], [40, 69], [39, 68], [33, 64], [36, 70], [38, 69]])
➞            [[34, 82], [19, 82], [20, 89], [5, 88], [9, 88], [26, 89], [27, 83]]
```

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
You are given two arrays that each contain data that represents the min and max weather temperatures for each day of the week.
The first array, the records array, contains the all-time record low/high temperatures for that day of the week.
e.g. [[record low, record high], ...]
The second array, the current week array contains the daily low/high temperatures for each day of the current week.
e.g. [[daily low, daily high], ...]
A daily high temperature is considered a new record high if it is higher than the record high for that day of the week. A daily low temperature is considered a new record low if it is lower than the record low for that day of the week.
Compare the daily low/high temperatures of the current week to the record lows/highs and return an array with the updated record temperatures.
There may be multiple record temperatures in a week.
If there are no broken records return the original records array.
--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Arrays, 1st --> records array, 2nd --> current array
Output: 1 Array
---------------------------RULES-----------------------------------------
Explicit:  
  -First input array is the record low and high temps for this week
  -second input array is the current low and high temps for this week
  -compare the record low/high and the current low/high and return a new array containing all record lows/highs, including any records set this week. 
  -if no new records are set return the old records array
Implicit:  
  -input temps will always be whole numbers
--------------------------EXAMPLES---------------------------------------
#             sun       mon      tues       wed      thur      fri       sat
record_temps([[34, 82], [24, 82], [20, 89],  [5, 88],  [9, 88], [26, 89], [27, 83]],
            [[44, 72], [19, 70], [40, 69], [39, 68], [33, 64], [36, 70], [38, 69]])
➞           [[34, 82], [19, 82], [20, 89], [5, 88], [9, 88], [26, 89], [27, 83]]
=begin
----------------------------ALGO-----------------------------------------
==> Run the through the record low/high temps and compare the low/highs for this week, replacing any new records set this week and return the new records. 
-- method --> record_temps(array, array) --> array
  -iterate through the records array using transformation and the index 
    -initialize 'current_record' to an empty array
    
    -push the return value of record_low to current_record
    -push the return value of record_high to current_record
    -returns current_record
    
  -returns transfortmed array
    
-- method --> record_high(integer, integer) --> boolean
  -return higher value between record high and current high
-- method --> record_low(integer, integer) --> boolean
  -return lower value between record low and record low
    
=end
def record_low(record, temp)
  temp < record ? temp : record
end
def record_high(record, temp)
  temp > record ? temp : record
end
def record_temps(records, weeks_temps)
  records.map.with_index do |day_rec, index|
    record_low_and_high = []
    record_low_and_high << record_low(day_rec.first, weeks_temps[index].first)
    record_low_and_high << record_high(day_rec.last, weeks_temps[index].last)
  end
end
p record_temps([[34, 82], [24, 82], [20, 89],  [5, 88],  [9, 88], [26, 89], [27, 83]], [[44, 72], [19, 70], [40, 69], [39, 68], [33, 64], [36, 70], [38, 69]]) == [[34, 82], [19, 82], [20, 89], [5, 88], [9, 88], [26, 89], [27, 83]]
```

---

## Anagram Difference ##

- Difficulty: **hard**
- [ ] Problem Completed?

Given two words, how many letters do you have to remove from them to make them anagrams?

Example
First word : c od e w ar s (4 letters removed) \
Second word : ha c k er r a nk (6 letters removed) \
Result : 10 \
Hints \
A word is an anagram of another word if they have the same letters (usually in a different order). \
Do not worry about case. All inputs will be lowercase.

p anagram_difference('', '') == 0 \
p anagram_difference('a', '') == 1 \
p anagram_difference('', 'a') == 1 \
p anagram_difference('ab', 'a') == 1 \
p anagram_difference('ab', 'ba') == 0 \
p anagram_difference('ab', 'cd') == 4 \
p anagram_difference('aab', 'a') == 2 \
p anagram_difference('a', 'aab') == 2 \
p anagram_difference('codewars', 'hackerrank') == 10

---

## Highest Scoring Word ##

- Difficulty: **medium**
- [x] Problem Completed?

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

p high('man i need a taxi up to ubud') == 'taxi' \
p high('what time are we climbing up the volcano') == 'volcano' \
p high('take me to semynak') == 'semynak' \
p high('aaa b') == 'aaa'

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Given a string of words, you need to find the highest scoring word.
Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.
You need to return the highest scoring word as a string.
If two words score the same, return the word that appears earliest in the original string.
All letters will be lowercase and all inputs will be valid.
--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String
---------------------------RULES-----------------------------------------
Explicit:
  -Of the given string, find the word with the highest score
  -Scores are based on the position the lettter is found in the alphabet
  -return the highest scoring word
  -if more than one word has the highest score, return the one that appears first in the given string
  -letters will be downcased
  -all inputs will be valid
Implicit:
  -no empty strings passed in
--------------------------EXAMPLES---------------------------------------
p high('aaa b') == 'aaa'
'aaa' ==> 'a' equals 1 because it's the first letter in the alphabet. Total => 3
'b'   ==> 'b' equals 2 because it's the second letter in the alphabet. Total => 2
==> returns 'aaa'
----------------------------ALGO-----------------------------------------
==> Take the individual words found in the given string, evaluate their score, compare all scores, return the word with the greatest score.
-- method --> high(string) --> string
  -initialize 'word_scores' to an empty array
  -split sentence into an array of words
    -set the word as key and return value of get_score as the value to the word_scores hash
  -find the max value in the hash and return the associated key
    
    
-- method --> get_score(string) --> integer
  -initialize 'alpha' to an array of all letters in an array
  -initialize 'score' to 0
  -split string into array of characters
  -iterate through the array 
    -find the index of the character from the 'alpha' array
    -add 1 to the index and ncrement the score by product
=end
def get_score(word)
  alpha = ('a'..'z').to_a
  score = 0
  word.chars.each { |char| score += alpha.index(char) + 1 }
  score
end
def high(sentence)
  word_scores = sentence.split.each_with_object({}) do |word, scores|
    scores[word] = get_score(word)
  end
  
  word_scores.max_by { |k, v| v }.first
end
# p get_score('man')
p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
```

---

## Replace with ALphabet Position ##

- Difficulty: **medium**
- [x] Problem Completed?

In this kata you are required to, given a string, replace every letter with its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

Example
alphabet_position("The sunset sets at twelve o' clock.") \
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" \
p alphabet_position("-.-'") == ""

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
In this kata you are required to, given a string, replace every letter with its position in the alphabet.
If anything in the text isn't a letter, ignore it and don't return it.
"a" = 1, "b" = 2, etc.
--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String
---------------------------RULES-----------------------------------------
Explicit:
  -replace every letter in the given string with its position in the alphabet
  -ignore anything that isn't a letter
Implicit:
  -case insensitive
--------------------------EXAMPLES---------------------------------------
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)
----------------------------ALGO-----------------------------------------
-- method --> alphabet_position(string) --> string
  -downcase strings and remove any non-letter characters
  -initialize 'alpha' to an array of all alphabetical characters
  -split string into array of characters and iterate using transformation
    -find index of current letter in alpha, add 1 and return
  -join array returns by transformation with ' '
=end
def alphabet_position(sentence)
  char_arr = sentence.downcase.gsub(/[^a-z]/, '').chars
  alpha = ('a'..'z').to_a
  
  char_arr.map do |letter|
    (alpha.index(letter) + 1).to_s
  end.join(' ')
end
p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
```

---

## Sherlock on Pockets ##

- Difficulty: **medium**
- [x] Problem Completed?

Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a person which has something not allowed in his/her pockets.

Allowed items are defined by array of numbers.

Pockets contents are defined by map entries where key is a person and value is one or few things represented by an array of numbers (can be nil or empty array if empty), example:

pockets = { \
  bob: [1], \
  tom: [2, 5], \
  jane: [7] \
}

Write a method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.

p find_suspects(pockets, [1, 2]) == [:tom, :jane] \
p find_suspects(pockets, [1, 7, 5, 2]) == nil \
p find_suspects(pockets, []) == [:bob, :tom, :jane] \
p find_suspects(pockets, [7]) == [:bob, :tom]

```ruby
=begin

DOESN"T PASS CODEWARS TESTS BUT GETS ALL TRUES BY SELF ????

-----------------------INSTRUCTIONS--------------------------------------
Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a person which has something not allowed in his/her pockets.
Allowed items are defined by array of numbers.
Pockets contents are in a hash where key is a person and value is one or few things represented by an array of numbers (can be nil or empty array if empty), example:
pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 
Write a method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.
--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 hash, 1 Array
Output: 1 Array
---------------------------RULES-----------------------------------------
Explicit:
  -return an array of the suspects who have something in their pocket not on the list of allowed items
  -if there are no pockets or suspects return nil
Implicit:
  -empty array argument is valid
  -if a person has one allowed thing and one non-allowed thing in their pocket they are still a suspect
--------------------------EXAMPLES---------------------------------------
find_suspects(pockets, [1, 2]) == [:tom, :jane]
1 and 2 are allowed items
bob has 1 in his pocket --> not a suspect
tom has 1 allowed and unallowd item in pocket --> suspect
jane has 1 not allowed item in pocket --> suspect
[:tom, :jane]
----------------------------ALGO-----------------------------------------
-- method --> find_suspects(hash, array) --> array or nil
  -initialize suspects as an empty array
  -iterate through the pockets hash
    -if all of the items in a persons pockets are not found in the allowed items array
      -push persons name to suspects
  -return suspects
  
=end
def find_suspects(pockets, allowed)
  return pockets.keys if allowed.empty?
  suspects = []
  
  pockets.each do |name, items|
    suspects << name unless items.all? { |item| allowed.include?(item) }
  end
  
  suspects.empty? ? nil : suspects
end
pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 
pockets2 = {:meg=>[3], :tom=>[5]}
    
p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]
p find_suspects(pockets2, []) == [:meg, :tom]
```

---

## Capitalize Second of Third ##

- Difficulty: **medium**
- [x] Problem Completed?

Capitalize every second character of every third word of a given string.

p to_weird_case("Lorem Ipsum is simply dummy text of the printing") == "Lorem Ipsum iS simply dummy tExT of the pRiNtInG" \
p to_weird_case("It is a long established fact that a reader will be distracted") == "It is a long established fAcT that a rEaDeR will be dIsTrAcTeD" \
p to_weird_case("aaA bB c") == "aaA bB c" \
p to_weird_case("Miss Mary Poppins word is supercalifragilisticexpialidocious") == "Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Capitalize every second character of every third word of a given string.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String

---------------------------RULES-----------------------------------------
Explicit:
  -Return a variation of the given string, where every second letter of every third word is capitalized
Implicit:
  -Input will be uppercase and lowercase letters
  -Whitespace separating words in given string

--------------------------EXAMPLES---------------------------------------
"Lorem Ipsum is simply dummy text of the printing"
             x                x             x
             iS              tExT        pRiNtInG

==> "Lorem Ipsum iS simply dummy tExT of the pRiNtInG"

----------------------------ALGO-----------------------------------------
==> FOr each 3rd word within the given string, uppercase eavery 2nd letter.

-- method --> to_weird_case(string) --> string
  -split given string into an array of words
  -itereate through the array utilizing index and transformation
    -if the current word is in the 3rd or subsequent 3rd position
      -iterate through the characters of the word usiing transformation
        -capitalize every second character in the word
  -join the transformed words and return

=end

def to_weird_case(sentence)
  words_array = sentence.split
  
  words_array.map.with_index do |word, index|
    if (index + 1) % 3 == 0
      word.chars.map.with_index { |char, idx| idx.odd? ? char.upcase : char }.join
    else
      word
    end
  end.join(' ')
end

p to_weird_case("Lorem Ipsum is simply dummy text of the printing") == "Lorem Ipsum iS simply dummy tExT of the pRiNtInG"
p to_weird_case("It is a long established fact that a reader will be distracted") == "It is a long established fAcT that a rEaDeR will be dIsTrAcTeD"
p to_weird_case("aaA bB c") == "aaA bB c"
p to_weird_case("Miss Mary Poppins word is supercalifragilisticexpialidocious") == "Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"
```

---

## Difference of Two ##

- Difficulty: **medium**
- [x] Problem Completed?

The objective is to return all pairs of integers from a given array of integers
that have a difference of 2. The result array should be sorted in ascending order of values. Assume there are no duplicate integers in the array. The order of the integers in the input array should not matter.

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Difference of Two: The objective is to return all pairs of integers from a given array of integers
that have a difference of 2. The result array should be sorted in ascending order of values. Assume there are no duplicate integers in the array. The order of the integers in the input array should not matter.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Array
Output: 1 Array (nested, if applicable)

---------------------------RULES-----------------------------------------
Explicit:
  -return all pairs of integers that have a difference of 2
  -the return array should be sorted in ascending order
  -the given array will have no duplicate integers
  -the order of the given array should not matter
Implicit:
  -an integer within the given array can be used more than once in the return array
  -all integers are positive

--------------------------EXAMPLES---------------------------------------
[4, 1, 2, 3] == [[1, 3], [2, 4]]
1, 2, 3, 4
1 & 3 are have a dif of 2
2 & 4 have a dif of 2
1 & 2 do not
1 & 4 do not
returns => [[1, 3], [2, 4]]

----------------------------ALGO-----------------------------------------
High-Level --> Sort the given array and then iterate through it to find all pairs that have a difference of 2. Return as an array of arrays.

-- method --> difference_of_two(array) --> array
  -initialize 'pairs' to an empty array
  -sort the given array
  -iterate through the array (num)
    -iterate through the array again (second_num)
      -initialize 'pair' as an empty array
      -if the difference between num and second_num is 2
        -push both numbers to pair
        -sort pair and push to 'pairs'
  -return pairs

=end

def difference_of_two(arr)
  pairs = []
  sorted_arr = arr.sort

  sorted_arr.each do |num|
    sorted_arr.each do |second_num|
      pair = []
      if num - second_num == 2
        pairs << pair.push(num, second_num).sort 
      end
    end
  end
  
  pairs.uniq
end

difference_of_two([1, 2, 3, 4]) == [[1, 3], [2, 4]]
difference_of_two([4, 1, 2, 3]) == [[1, 3], [2, 4]]
difference_of_two([1, 23, 3, 4, 7]) == [[1, 3]]
difference_of_two([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]
difference_of_two([2, 4]) == [[2, 4]]
difference_of_two([1, 4, 7, 10, 13]) == []
```

---

## Vowel Back ##

- Difficulty: **medium**
- [x] Problem Completed?

You need to play around with the provided string (s). \
Move consonants forward 9 places through the alphabet. If they pass ‘z’, start
again at ‘a’. Move vowels back 5 places through the alphabet. If they pass ‘a’,
start again at ‘z’.  Provided string will always be lower case, won’t be empty
and will have no special characters.

p vowel_back("testcase") == "czbclvbz" \
p vowel_back("codewars") == "ljmzfvab" \
p vowel_back("exampletesthere") == "zgvvyuzczbcqzaz" \
p vowel_back("returnofthespacecamel") == "azcpawjocqzbyvlzlvvzu" \
p vowel_back("bringonthebootcamp") == "kadwpjwcqzkjjclvvy" \
p vowel_back("weneedanofficedog") == "fzwzzmvwjoodlzmjp"

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
You need to play around with the provided string (s).
Move consonants forward 9 places through the alphabet. If they pass ‘z’, start
again at ‘a’. Move vowels back 5 places through the alphabet. If they pass ‘a’,
start again at ‘z’.  Provided string will always be lower case, won’t be empty
and will have no special characters.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String

---------------------------RULES-----------------------------------------
Explicit:
  -Move consonants FORWARD 9 places
  -move vowels BACK 5 places
  -if either get to the end of the alphabet start continue from the opposite end
  -Given string will always be lowercase
  -Given string will not be empty
  -Given string will have no special characters
Implicit:
  -

--------------------------EXAMPLES---------------------------------------
"testcase" == "czbclvbz"
t -> forward   9 places --> 'c' (t to z is 6 places, 3 more places from the beginning of the alphabet is 'c')
e -> backwards 5 places --> 'z'
s -> forward   9 places -->...
t -> forward   9 places
c -> forward   9 places
a -> backwards 5 places
s -> forward   9 places
e -> backwards 5 places

==> "czbclvbz"

----------------------------ALGO-----------------------------------------
==> Break given string into array of characters, go through each character and find the charatcer 9 places ahead for a consonant and 5 places back for a vowel, then return string.

-- method --> vowel_back(string) --> string
  -initialize constants 'vowels' and 'consonants' to these specific letters as an array 
  -split given string into characters
  -interate over characters using transformation (char)
    -if char is a consonant
      -return the value form find_consonant(char)
    -if char is a vowel
      -return the value from find_vowel(char)
  -join the array returned by my iterative transformation

-- method --> find_consonant(string) --> string
  -if strings ord value plus 9 >= 122
    -return string ord value plus 9 to a character
  -otherwise
    -subtract strings ord value from 122, 
    -then subtract that value from 9, and add to 96, 
    -then turn into character and return

-- method --> find_vowel(string) --> string
  -if strings ord value minus 5 >= 97 
    -return string ord value minuis 5 to a character
  -otherwise
    -subtract 96 from strings ord value,
    -then subtract that value from 5, and subtract that value from 122, 
    -then turn into character and return

=end

# CONSONANTS = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
# VOWELS = ['a', 'e', 'i', 'o', 'u']

# def find_consonant(char)
#   if (char.ord + 9) <= 122
#     (char.ord + 9).chr
#   else
#     ((9 - (122 - char.ord)) + 96).chr
#   end
# end

# def find_vowel(char)
#   if (char.ord - 5) >= 97
#     (char.ord - 5).chr
#   else
#     (122 - (5 - (char.ord - 96))).chr
#   end
# end

# def vowel_back(str)
#   str.chars.map do |char|
#     if CONSONANTS.include?(char)
#       find_consonant(char)
#     else
#       find_vowel(char)
#     end
#   end.join
# end

def vowel_back(str)
  p const = ("a".."z").to_a + ("a".."z").to_a
  str.chars.map do |l|
    i = const.index(l)
    "aeiou".include?(l) ? const[i - 5] : const[i + 9]
  end.join
end

p vowel_back("testcase") == "czbclvbz"
p vowel_back("codewars") == "ljmzfvab" 
p vowel_back("exampletesthere") == "zgvvyuzczbcqzaz"
p vowel_back("returnofthespacecamel") == "azcpawjocqzbyvlzlvvzu"
p vowel_back("bringonthebootcamp") == "kadwpjwcqzkjjclvvy"
p vowel_back("weneedanofficedog") == "fzwzzmvwjoodlzmjp"

```

---

## Find Missing Letter ##

- Difficulty: **medium**
- [x] Problem Completed?

Find the missing letter: Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array. You will always get an valid
array. And it will be always exactly one letter be missing. The length of the array will always be at least 2. The array will always contain letters in only  one case. Use the English alphabet with 26 letters.

find_missing_letter(["a","b","c","d","f"]) == "e" \
find_missing_letter(["O","Q","R","S"]) == "P" \
find_missing_letter(["b","d"]) == "c" \
find_missing_letter(["a","b","d"]) == "c" \
find_missing_letter(["b","d","e"]) == "c"

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Find the missing letter: Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array. You will always get an valid
array. And it will be always exactly one letter be missing. The length of the array will always be at least 2. The array will always contain letters in only  one case. Use the English alphabet with 26 letters.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 Array of letters (Strings)
Output: 1 String (missing letter)
Interim:

---------------------------RULES-----------------------------------------
Explicit:
  -given array will contain consecutive letters (increasing) with one letter missing
  -find and return the missing letter
  -given array will always be valid
  -there will always be exactly 1 letter missing from given array
  -given array will always be at least 2 elements long
  -strings within given array will always have matching case
  -letters will only be english alphabetical letters (26 total)
Implicit:
  -

--------------------------EXAMPLES---------------------------------------
find_missing_letter(["b","d"]) == "c"
b _ d
  c is the missing letter
  
returns => 'c'

----------------------------ALGO-----------------------------------------
==> Iterate through the given array and check to see if the next element in the array is the same as the next element in the alphabet, if it's different return the next element in the alphabet

-- method --> find_missing_letter(array) --> string
  -iterate through the given array utilizing the index
    -unless the next element in the given array is the same as the next element in the alphabet
      -return the next element in the alphabet
      
=end

def find_missing_letter(arr)
  arr.each_with_index do |letter, index|
    return letter.next unless arr[index + 1] == letter.next
  end
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"
```

---

## Word Scramble ##

- Difficulty: **medium**
- [x] Problem Completed?

Complete the function `scramble(str1, str2)` that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise returns false. Notes: Only lower case letters will be used (a-z). No punctuation or digits will be included.

scramble('fnollfkjchgjgedghmc', 'cwyydgtuidth') == false \
scramble('hi', 'ih') == true \
scramble('i', 'hi') == false \
scramble('rkqodlw', 'world') == true \
scramble('cedewaraaossoqqyt', 'codewars') == true \
scramble('rkqodlw','world') == true \
scramble('cedewaraaossoqqyt','codewars') == true \
scramble('katas','steak') == false \
scramble('scriptjava','javascript') == true \
scramble('scriptingjava','javascript') == true

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Complete the function `scramble(str1, str2)` that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise returns false. Notes: Only lower case letters will be used (a-z). No punctuation or digits will be included.

--------------------------PROBLEM----------------------------------------
Input: 2 Strings (main string, and potential sub-string)
Output: 1 Booelan
Questions:
  -No punc or digits, does this include any non-letter character?
  -Can I mutate the objects passed in to the method? 
  
---------------------------RULES-----------------------------------------
Explicit:
  -return true if a portion of str1 can be rearranged to form str2
  -otherwise return false
  -only lowercase letters will be used
  -no punc or digits*
Implicit:
  -strings will not be empty
  -
Interim:
  -Array will be used to iterate through the sttring elements
  
--------------------------EXAMPLES---------------------------------------
scramble('rkqodlw', 'world') == true
rkqodlw
x  xxxx ---> r o d l w --> rearranged  ==> world

returns ==> true

----------------------------ALGO-----------------------------------------
Higher-Level ==> Iterate through the characters of the second argument and delete them in both strings if they exist in the first string. If a character in string 2 doesn't exist in string 1 or after the complete iteration string 2 is an empty string return true, otherwise return false. 

-- method --> scramble(string, string) --> boolean
  -intiialize 'test_str' to a duplicate of str2
  -split the second string into an array of characters
  -iterate through the array of charatcers
    -if the current character is found within str1
      -substitute current characters with empty string in str1 and str2
    -otherwise
      -return false
  -if test_str is empty return true
  -otherwise return false

=end

def scramble(str1, str2)
  test_str1 = str1.dup
  test_str2 = str2.dup
  
  test_str2.chars.each do |char|
    if test_str1.include?(char)
      test_str1.sub!(char, '')
      test_str2.sub!(char, '')
    else
      return false
    end
  end
  
  test_str2.empty?
end


p scramble('fnollfkjchgjgedghmc', 'cwyydgtuidth') == false
p scramble('hi', 'ih') == true
p scramble('i', 'hi') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
p scramble('laifnalg','faaaalling') == false
```

---

## Alphabetized ##

- Difficulty: **medium**
- [x] Problem Completed?

Given a string, concatenate into a new string with case-insensitive alphabetical
order of appeareance. Whitespace and punctuation shall be removed.

alphabetized("The Holy Bible") == "BbeehHilloTy"

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Given a string, concatenate into a new string with case-insensitive alphabetical
order of appeareance. Whitespace and punctuation shall be removed.

--------------------------PROBLEM----------------------------------------
Input: 1 String
Output: 1 String
Questions:
  -Concatenation is required for this problem? 
  -If I return a new string without concatenation does that count?
  
---------------------------RULES-----------------------------------------
Explicit:
  -concatenate given string into a new string with the letters ordered alphabetically ignoring case
  -punctuation and white space will be removed
Implicit:
  -input will not be empty
  -input will be a valid string
Interim:
  -using array to sort the characters of the given string
--------------------------EXAMPLES---------------------------------------

----------------------------ALGO-----------------------------------------
Higher-Level ==> convert the given string and sort while treating uppercase elements like lowercase elements. Then concatenate each letter to a new string removing punctuation and white space.

-- method --> alphabetized(string) --> string
  -initialize 'result' to an empty string
  -split the given string into an array of characters
  -sort the array of chars by their downcased values
  -iterate through the array of characters
    -if current char is a letter 
      -concatenate to the 'result' string
  -return the 'result' string

=end

def alphabetized(string)
  result = ''
  string.chars.sort_by { |sorting_char| sorting_char.downcase }.each do |char|
    result.concat(char) if /[A-z]/.match?(char)
  end
  result
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
```

---

## Anagram Detection ##

- Difficulty: **easy**
- [x] Problem Completed?

An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.

Examples
"foefet" is an anagram of "toffee"

"Buckethead" is an anagram of "DeathCubeK"

p is_anagram('Creative', 'Reactive') == true \
p is_anagram("foefet", "toffee") == true \
p is_anagram("Buckethead", "DeathCubeK") == true \
p is_anagram("Twoo", "WooT") == true \
p is_anagram("dumble", "bumble") == false \
p is_anagram("ound", "round") == false \
p is_anagram("apple", "pale") == false

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.

--------------------------PROBLEM----------------------------------------
Input: 2 Strings
Output: boolean value
Questions:
  -Will given strings contain only lowercase letters? Punctuation? White space?
---------------------------RULES-----------------------------------------
Explicit:
  -Anagram: the result of rearranging the letters of a word to produce a new word
  -anagrams are case insensitive
  -return true if the given strings are anagrams of each other, otherwise false
Implicit:
  -given strings will not be empty
  -given strings will not contain punctuation or whitespace

--------------------------EXAMPLES---------------------------------------
"foefet" is an anagram of "toffee"

"Buckethead" is an anagram of "DeathCubeK"

----------------------------ALGO-----------------------------------------
Higher-Level ==> Split up strings into arrays of characters and compare to see if they are the same if sorted. 

-- method --> is_anagram(string, string) --> boolean
  -downcase and then split both strings into array of characters, then sort
  -compare whether these arrays are the same

=end

def is_anagram(str1, str2)
  str1.downcase.chars.sort == str2.downcase.chars.sort
end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false
```

---

## Highest Scoring Word Again ##

- Difficulty: **easy**
- [x] Problem Completed?

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs wabideill be valid.

p high('man i need a taxi up to ubud') == 'taxi' \
p high('what time are we climbing up the volcano') == 'volcano' \
p high('take me to semynak') == 'semynak' \
p high('aaa b') == 'aaa'

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.  

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -Find the highest scoring word within the given string
  -letter values are equal to their numerical place within the alphabet (a -> 1, b -> 2, etc)
  -return the WORD with the highest score
  -if multiple words have the highest score, return the first to appear
  -given inputs will be lowercase and valid
Implicit Rules:
  -a word is a cluster of characters within the given string separated by white space
  -only letters separated by white space will be included in the given strings
Questions:
  -what is considered a word?
  -will given string include punctuation or digits?
  
--------------------------EXAMPLES---------------------------------------
('aaa b') == 'aaa'
a ==> 1
'aaa' --> 3 points

b ==> 2
'b' --> 2 points

'aaa' > 'b'

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 String, highest scoring word
Additional DS Utilized:
  -Array to split given string into words, and then into characters
  -Hash to organze word scores
  -Integers to calculate the score of words

----------------------------ALGO-----------------------------------------
Higher-Level ==> Split given string into an array of words, then calcualte the value of each letter of each word to gather each words total score, then return the word with the highest score.

-- method --> high(string) --> string
  -split given string into an array of words
  -initialize 'scores' to an empty hash
  -iterate through the array of words
    -split word into array of characters and iterate through using transformation
      -return value of find_value(char)
    -assign  word as key and return value of transformation as key to 'scores'
  -find the maximum value within scores and return the key associated with it

-- method --> find_value(string) --> integer
  -initialize 'alpha' to an array of each letter in the alphabet
  -return the index of the character + 1

=end

def find_value(char)
  alpha = ('a'..'z').to_a
  alpha.index(char) + 1
end

def high(sentence)
  scores = {}
  sentence.split.each do |word|
    word_score = word.chars.map { |char| find_value(char) }.sum
    scores[word] = word_score  
  end
  scores.max_by { |word, score| score }.first
end

# p find_value('a') == 1
# p find_value('c') == 3
# p find_value('f') == 6

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the valcono volcano') == 'valcono'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
```

---

## Rotate Matrix ##

- Difficulty: **medium**
- [ ] Problem Completed?

Given a matrix represented as a list of string, such as

```ruby
###.....
..###...
....###.
.....###
.....###
....###.
..###...
###.....
```

write a function `rotateClockwise(matrix)` that return its 90° clockwise rotation, for our example:

```ruby
#......#
#......#
##....##
.#....#.
.##..##.
..####..
..####..
...##...
```

rotateClockwise(["abc", "def"])) #, ["da", "eb", "fc"]); \
rotateClockwise(["c","b","a"])) #, ["abc"]); \
rotateClockwise(["cba"])) # ["c","b","a"]); \
rotateClockwise(["a", "b", "c"])) #, ["cba"]);

```ruby

=begin
-----------------------INSTRUCTIONS--------------------------------------
Given a matrix represented as a list of strings, such as...

matrix = ['###.....',
          '..###...',
          '....###.',
          '.....###',
          '.....###',
          '....###.',
          '..###...',
          '###.....']
          
write a function; rotateClockwise(matrix), that return its 90° clockwise rotation, for example:

['#......#',
 '#......#',
 '##....##',
 '.#....#.',
 '.##..##.',
 '..####..',
 '..####..',
 '...##...']
  
--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -matrix: a 2 dimensional collection, in this circumstance represented by an array of strings
  -write a method that rotates the given matrix 90 degrees clockwise
  -
Implicit Rules:
  -the elements within the first string should be the last elements in all of the strings of the output matrix
  -all elements within the given array will be strings of the same length
  -strings within given array will have a length of at least 1
  -string elements within given array can be any characters
Questions:
  -what is a matrix?
  
--------------------------EXAMPLES---------------------------------------
["abc", "def"] --> ["da", "eb", "fc"]

[[a, b, c], [d, e, f]]
[[d, a], [e, b], [f, c]]

[da, eb, fc]

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 array of strings
Output: 1 array
Additional DS Utilized:
  -Strings within given array will be converted to arrays then converted back to strings 

----------------------------ALGO-----------------------------------------
Higher-Level ==> Reverse the given array, then group the characters of each element by index in and push them to a new array where they are joined into strings.,

-- method --> rotate_clockwise(array) --> array
  -initialize an empty array (output)
  -reverse the given array
  -iterate a number times equal to the strings length in the given array (index)
    -initialize an empty array (nested)
    -iterate through the given array
      -remove and push the elements at the current 'index' to 'nested'
    -push nested to output
  -return output

=end

def rotate_clockwise(arr)
  output = []
  reversed_arr = arr.reverse
  
  arr.first.size.times do |index|
    nested_arr = reversed_arr.each_with_object([]) do |str, nested|
      nested << str.chars[index]
    end
    output << nested_arr
  end
  
  output.map(&:join)
end

p rotate_clockwise(["abc", "def"]) == ["da", "eb", "fc"]
p rotate_clockwise(["c","b","a"]) == ["abc"]
p rotate_clockwise(["cba"]) == ["c","b","a"]
p rotate_clockwise(["a", "b", "c"]) == ["cba"]
p rotate_clockwise(['###.....', '..###...', '....###.', '.....###', '.....###', '....###.', '..###...', '###.....']) == ['#......#', '#......#', '##....##', '.#....#.', '.##..##.', '..####..', '..####..', '...##...']
```

---

## Longest Common Prefix ##

- Difficulty: **medium**
- [x] Problem Completed?

Write a method to find the longest common prefix string amongst an array of strings. If there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

puts common_prefix(["flower", "flow", "flight"]) == "fl"
puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method to find the longest common prefix string amongst an array of strings. If there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -find and return the longest common prefix of an array of strings
  -return an empty string if no common prefix exists
  -all given strings will be lowercase letters (a-z)
Implicit Rules:
  -All strings will be at least one letter in length
Questions:
  -What is a prefix?

--------------------------EXAMPLES---------------------------------------
["flower", "flow", "flight"]) == "fl"

flower
flxxxx

flow
flxx

flight
flxxxx

'fl' is the longest common prefix of the given strings

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 Array
Output: 1 String
Additional DS Utilized:
  -split given strings into an array
  -join array of strings to string

----------------------------ALGO-----------------------------------------
Higher-Level ==> Split the first string into an array of characters, then compare all the strings character by character to see if they match the charatcers of the array, when a character doesn't match return the characters from the array up to that point, joined into a string.

* split first string into array of characters
* iterate based on index of array and compare the characters within the array at current index
* when a character doesn't match return the array of characters up to the current index, joined as a string

-- method --> common_prefix(array) --> string
  -split first element of array into array of characters (base_chars)
  -iterate from 0 upto the length of base_chars (index)
    -unless all strings within given arr at current index equal the char of base_chars at current index
      -return the chars of the first string in given arr from index 0, to current index
  -otherwise return first string within given array
      
=end

def common_prefix(arr)
  base_chars = arr.first.chars
  
  base_chars.size.times do |index|
    unless arr.all? { |word| word[index] == base_chars[index] }
      return arr.first[0, index]
    end
  end
  
  arr.first
end
  
p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"
```

---

## Consecutive Runs ##

- Difficulty: **medium**
- [x] Problem Completed?

Given a certain string, create a hash with each character in string as key andall possible substrings in string starting at each character as value.

p consecutive_runs('abcd') == {"a"=>["a", "ab", "abc", "abcd"], /
                               "b"=>["b", "bc", "bcd"], /
                               "c"=>["c", "cd"], /
                               "d"=>["d"]}

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Given a certain string, create a hash with each character in string as key andall possible substrings in string starting at each character as value.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -create a hash where the keys are a character from the given string and the value is an array of all possible substrings starting with the key.
Implicit Rules:
  -input will be be a valid non-empty string
  -lowercase letters only
Questions:
  -lowercase letters only? 
  
--------------------------EXAMPLES---------------------------------------
'abcd'
a --> a, ab, abc, abcd
b --> b, bc, bcd
etc.

{"a"=>["a", "ab", "abc", "abcd"], 
 "b"=>["b", "bc", "bcd"], 
 "c"=>["c", "cd"], 
 "d"=>["d"]}

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 Hash, keys will be strings, values will be arrays
Additional DS Utilized:
  -splitting strings into array of characters
  -joining arrays into strings

----------------------------ALGO-----------------------------------------
Higher-Level ==> Split given string into array of characters, iterate through all numbers upto the length of the array, collect all substrings starting at specific indices and add them to a hash collection based on the starting character.

* split string into array of characters
* collect all substring into an array
* iterate through the array of characters
* gather all substrings that begin with current character and push to hash
* retruning hash

-- method --> consecutive_runs(string) --> hash
  -initialize an empty hash (subs)
  -split given string into array of characters (chars)
  -intialize subs to get_subs(arr)
  -iterate through array of characters 
    -select all chars that begin with current char and push to hash
  -return hash

-- method --> get_subs(array) --> array
  -initialize subs as empty array
  -iterate through 1 upto length of arr (length)
    -iterate through the arr of characters by length
      -push joined sub arrays to subs
  -return subs
  [a ab etc]

=end

def get_subs(arr)
  subs = []
  1.upto(arr.size) do |length|
    arr.each_cons(length) do |sub_arr|
      subs << sub_arr.join
    end
  end
  subs
end

def consecutive_runs(str)
  sub_hash = {}
  str = str.chars
  subs = get_subs(str)
  
  str.each do |char|
    sub_hash[char] = subs.select { |sub| sub[0] == char }
  end
  
  sub_hash
end

# p get_subs(%w(a b c d))

p consecutive_runs('abcd') == {"a"=>["a", "ab", "abc", "abcd"], 
                               "b"=>["b", "bc", "bcd"], 
                               "c"=>["c", "cd"], 
                               "d"=>["d"]}
```

---

## Search Query ##

- Difficulty: **medium**
- [x] Problem Completed?

Solve utilizing the given examples;

PRODUCTS = [\
  { name: "Thinkpad x210", price: 220},\
  { name: "Thinkpad x220", price: 250},\
  { name: "Thinkpad x250", price: 979},\
  { name: "Thinkpad x230", price: 300},\
  { name: "Thinkpad x230", price: 330},\
  { name: "Thinkpad x230", price: 350},\
  { name: "Thinkpad x240", price: 700},\
  { name: "Macbook Leopard", price: 300},\
  { name: "Macbook Air", price: 700},\
  { name: "Macbook Pro", price: 600},\
  { name: "Macbook", price: 1449},\
  { name: "Dell Latitude", price: 200},\
  { name: "Dell Latitude", price: 650},\
  { name: "Dell Inspiron", price: 300},\
  { name: "Dell Inspiron", price: 450}
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

p search(query) == [ { name: "Thinkpad x220", price: 250} ] \
p search(query2) == [ { name: "Dell Inspiron", price: 300}, { name: "Dell Inspiron", price: 450} ]

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Solve utilizing the given examples;

PRODUCTS = [
  { name: "Thinkpad x210", price: 220},
  { name: "Thinkpad x220", price: 250},
  { name: "Thinkpad x250", price: 979},
  { name: "Thinkpad x230", price: 300},
  { name: "Thinkpad x230", price: 330},
  { name: "Thinkpad x230", price: 350},
  { name: "Thinkpad x240", price: 700},
  { name: "Macbook Leopard", price: 300},
  { name: "Macbook Air", price: 700},
  { name: "Macbook Pro", price: 600},
  { name: "Macbook", price: 1449},
  { name: "Dell Latitude", price: 200},
  { name: "Dell Latitude", price: 650},
  { name: "Dell Inspiron", price: 300},
  { name: "Dell Inspiron", price: 450}
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

p search(query) == [ { name: "Thinkpad x220", price: 250} ]
p search(query2) == [ { name: "Dell Inspiron", price: 300}, { name: "Dell Inspiron", price: 450} ]

--------------------------PROBLEM----------------------------------------
Explicit Rules:
Implicit Rules:
  -return an array of hashes, where the hashes meet the search criteria passed in as an argument
  -criteria icludes:
    -price min
    -price max
    -keyword
    
Questions:
--------------------------EXAMPLES---------------------------------------
search(query) == [ { name: "Thinkpad x220", price: 250} ]

min price = 240
max price 280
keyword = 'thinkpad'

option that meets criteria => [ { name: "Thinkpad x220", price: 250} ]

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 Hash, 3 criteria(key/values)
Output: 1 Array of hashes, hashes are options that meet given criteria
Additional DS Utilized:
  - Array to return hash options
  - Hashes for argument, constant options, and return options

----------------------------ALGO-----------------------------------------
Higher-Level ==> Utilizing the criteria passed in as an argument, iterate through the PRODUCTS constant and push all hashes that meet the criteria to a new array, return new array

-- method --> search(hash) --> array
  -iterate through the PRODUCTS array using selection (hash)
    -current hash price >= min and <= max and name downcased contains keyword?
  -return new array object

=end

PRODUCTS = [
  { name: "Thinkpad x210", price: 220},
  { name: "Thinkpad x220", price: 250},
  { name: "Thinkpad x250", price: 979},
  { name: "Thinkpad x230", price: 300},
  { name: "Thinkpad x230", price: 330},
  { name: "Thinkpad x230", price: 350},
  { name: "Thinkpad x240", price: 700},
  { name: "Macbook Leopard", price: 300},
  { name: "Macbook Air", price: 700},
  { name: "Macbook Pro", price: 600},
  { name: "Macbook", price: 1449},
  { name: "Dell Latitude", price: 200},
  { name: "Dell Latitude", price: 650},
  { name: "Dell Inspiron", price: 300},
  { name: "Dell Inspiron", price: 450}
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

def search(query)
  PRODUCTS.select do |hash|
    hash[:price] >= query[:price_min] &&
    hash[:price] <= query[:price_max] &&
    hash[:name].downcase.include?(query[:q])
  end
end

p search(query) == [ { name: "Thinkpad x220", price: 250} ]
p search(query2) == [ { name: "Dell Inspiron", price: 300}, { name: "Dell Inspiron", price: 450} ]
```

---

## Repeated Substring 2 ##

- Difficulty: **medium**
- [x] Problem Completed?

Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only.

- Example 1:
  - Input "abab"
  - Output: True
  - Explanation: It's the substring 'ab' twice.

- Example 2:
  - Input: "aba"
  - Output: False

p repeated_substring('abab') == true\
p repeated_substring('aba') == false\
p repeated_substring('aabaaba') == false\
p repeated_substring('abaababaab') == true\
p repeated_substring('abcabcabcabc') == true\
p repeated_substring('aaaaa') == true

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Problem 1: Repeated substring

Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only.

Example 1:
 - Input "abab"
 - Output: True
 - Explanation: It's the substring 'ab' twice.

Example 2:
 - Input: "aba"
 - Output: False

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -Check if  the given string can be constructed by taking a substring of itself and repeating. 
  -Given string will consist of lowercase letters only
Implicit Rules:
  -no empty strings given
  -no whitespace or punctuation
  -substring cannot be the same length as the given string
Questions:
  -
  
--------------------------EXAMPLES---------------------------------------
"abab"
a, ab, aba, abab
a does not work
ab if repeated twice, will be the same as the given string
aba does not work
abab is not valid

==> true, because 'ab' repeated twice is the same as the given string

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 boolean
Additional DS Utilized:
  -split string into an array
  -join array into a string
  -integers used to countinstances of repeated substrings

----------------------------ALGO-----------------------------------------
Higher-Level ==> Find all substrings of a length less than the givens string, repeat each substring to determine if it casn be repeated to construct the given string, if it can return ture, else return false.

-- method --> repeated_substring(string) --> boolean
  -initialize subs to return value of find_subs
  -iterate through the subs array
    -intialize 'temp_string'
    -loop
      -concatenate the current sub_string to itslef until the length is greater or equal to the lenght of the given string
    -if temp_string equals given string return true
  -return false
  
-- method --> find_subs(string) --> array
  -initialize an emoty array (subs)
  -iterate from 1 to the length of the given string minus 1 (length)
    -iterate through the given string broken into array of characters finding each consecutive combo based on length
      -join and push sub_arrays into subs array
  -return subs
  
=end

def find_subs(str)
  subs = []
  1.upto(str.size - 1) do |length|
    str.chars.each_cons(length) do |sub_arr|
      subs << sub_arr.join
    end
  end
  subs
end

def repeated_substring(str)
  subs = find_subs(str)
  subs.each do |sub_str|
    temp_str = sub_str
    rounds = 1   
  
    loop do
      temp_str += sub_str
      rounds += 1
      break if temp_str.size >= str.size
    end
    return true if temp_str == str
  end
  false
end

# p find_subs('abab') == %w(a b a b ab ba ab aba bab)

p repeated_substring('abab') == true
p repeated_substring('aba') == false
p repeated_substring('aabaaba') == false
p repeated_substring('abaababaab') == true
p repeated_substring('abcabcabcabc') == true
p repeated_substring('aaaaa') == true
```

---

## Reverse String ##

- Difficulty: **easy**
- [x] Problem Completed?

Problem 1: Reverse a string without using the built-in #reverse method

take a string as an argument, return the string in reverse order without using the built-in reverse method.

reverse_string("abcde") == "edcba"\
reverse_string(" ") == " "\
reverse_string("football") == "llabtoof"

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Reverse a string without using the built-in #reverse method

take a string as an argument, return the string in reverse order without using the built-in reverse method.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -take a string as an argument and reverse the order of the characters 
  -do not use the reverse method
Implicit Rules:
  -whitespace allowed
  -any character type allowed
Questions:
  -no questions currently
  
--------------------------EXAMPLES---------------------------------------
'abcde'

a b c d e
e d c b a

'edcba'
-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 String
Additional DS Utilized:
  -splitting string into an array
  -joining arrays into strings
  
----------------------------ALGO-----------------------------------------
Higher-Level ==> split given string into an array of characters and push each character into a new string object starting from the end, then join and return the new string

-- method --> reverse_string(string) --> string
  -initialize an empty string object (new_string)
  -initialize 'index' to -1
  -while length of str is greater or equal to positive version of index
    -concat character at current index to new_string
    -decrement index by 1
  -return new_string

=end

def reverse_string(str)
  new_string = ''
  index = -1
  
  while str.size >= index.abs do
    new_string << str[index]
    index -= 1
  end
  new_string
end

p reverse_string("abcde") == "edcba"
p reverse_string(" ") == " "
p reverse_string("football") == "llabtoof"
```

---

## Fizzbuzz ##

- Difficulty: **easy**
- [x] Problem Completed?

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers except if a number is divisible by 3, print out "Fizz", if a number is divisible by 5, print out "Buzz", and if a number is divisible by 3 and 5, print out "FizzBuzz".

fizzbuzz(1, 10)\
fizzbuzz(1, 15)

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers except if a number is divisible by 3, print out "Fizz", if a number is divisible by 5, print out "Buzz", and if a number is divisible by 3 and 5, print out "FizzBuzz".

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -return all digits from a given range
  -if the digit is divisible by 3 return 'Fizz' instead
  -if the digit is divisible by 5 return 'Buzz' instead
  -if the digit is divisible by 3 and 5 return 'FizzBuzz' instead
Implicit Rules:
Questions:
  
--------------------------EXAMPLES---------------------------------------

-----------------------DATA STRUCTURES-----------------------------------
Input: 
Output: 
Additional DS Utilized:

----------------------------ALGO-----------------------------------------
Higher-Level ==> 

-- method 

=end

def fizzbuzz(starting, ending)
  starting.upto(ending) do |num|
    if num % 3 == 0 && num % 5 == 0
      puts 'FizzBuzz'
    elsif num % 3 == 0
      puts 'Fizz'
    elsif num % 5 == 0
      puts 'Buzz'
    else
      puts num
    end
  end
end

fizzbuzz(1, 10)
fizzbuzz(1, 15)
```

---

## Remove Vowels ##

- Difficulty: **easy**
- [x] Problem Completed?

Problem 1: remove vowels from an array of strings

Write a method that takes an array of strings and returns an array of the same string values, except with the vowels removed.

p remove_vowels(['green', 'yellow', 'black', 'white']) == ['grn', 'yllw', 'blck', 'wht']

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Problem 1: remove vowels from an array of strings

Write a method that takes an array of strings and returns an array of the same string values, except with the vowels removed.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -remove all vowels from the given array of strings and return
Implicit Rules:
  -all given strings will comtain lowercase letters only
  -input will be valid and strings will not be empty
Questions:
  -none
  
--------------------------EXAMPLES---------------------------------------
['green', 'yellow', 'black', 'white'] == ['grn', 'yllw', 'blck', 'wht']

green --> grn
yellow --> yllw
black --> blck
white --> wht

returns --> ['grn', 'yllw', 'blck', 'wht']

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 Array of strings
Output: 1 Array of strings
Additional DS Utilized:
  -split string into array
  -join array into string

----------------------------ALGO-----------------------------------------
Higher-Level ==> Itersate through the array of strings, then iterate through each vowel character and remove from current string if applicable, return an array with al vowels removed from strings.

-intialize 'vowels' to a constant of lowercase vowel characters

-- method --> remove_vowels(array) --> array
  -iterate through the given array using transformation
    -iterate through current word split into characters using selection 
      -check if the current char is not a vowel
    -join split word back together and return to transformation
    
=end

VOWELS = ['a', 'e', 'i', 'o', 'u']

def remove_vowels(arr)
  arr.map do |word|
    word.chars.select { |char| !VOWELS.include?(char) }.join
  end
end

p remove_vowels(['green', 'yellow', 'black', 'white']) == ['grn', 'yllw', 'blck', 'wht']
```

---

## Delete Digit ##

- Difficulty: **easy**
- [x] Problem Completed?

Task: Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output\
[input] integer n

Constraints: 10 ≤ n ≤ 1,000,000.

[output] an integer

p delete_digit(152) == 52\
p delete_digit(1001) == 101\
p delete_digit(10) == 1

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Task
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1,000,000.

[output] an integer


--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -find the maximal number obtainable by removing a single digit from the given input
  -input will be between 10 and 1,000,000
Implicit Rules:
  -
Questions:

--------------------------EXAMPLES---------------------------------------
1001

001
101
101
100

101 is greatest of possible outputs

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 Integer
Output: 1 Integer
Additional DS Utilized:
 -converting integers into strings
 -converting strings into integers
 -splitting strings into array
 -joining arrays into strings

----------------------------ALGO-----------------------------------------
Higher-Level ==> convert given number into a string, split and iterate finding all possible different sub_digits by removing a single digit, then return the greatest of these digits.

* convert to string and split, iterate over each char
* feed each possible combination of removing a single digit into an array
* find the greatest and return

-- method --> deleet_digit(integer) --> integer
  -convert num into string, split into chars and iterate over using transformation and index
    -initialize str_num to num converted to string
    -remove the current digit, join the remaining digits and convert to integer
    -return this integer to the iteration
  -find and return the greatest digit in the returned array

=end

def delete_digit(num)
  num.to_s.chars.map.with_index do |digit, index|
    temp = num.to_s
    temp[index] = ''
    temp.to_i
  end.max
end

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
```

---

## Multiples of 3 or 5 ##

- Difficulty: **easy**
- [x] Problem Completed?

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

p solution(10) == 23\
p solution(20) == 78\
p solution(200) == 9168

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -find all the multiples of 3 and 5 below the given number
  -return the sum of all of these numbers
  -if a number is divisible by 3 and 5 only include it once
Implicit Rules:
  -the given number is not included in the possible divisible number
  -given number will always be a valid whole number
Questions:
  -
--------------------------EXAMPLES---------------------------------------
10

3, 5, 6, 9 are all divisble by 3 and/or 5 

summed --> 23

returns 23

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 Integer
Output: 1 Integer
Additional DS Utilized:
  -array to hold divisible values
  -range to search through possible numbers

----------------------------ALGO-----------------------------------------
Higher-Level ==> Find all numbers between 1 and upto the given number that are divisble by 3 and/or 5, add them all together and return the sum

* iterate through numbers 1 upto given number aand push all divisible numbers to an array
* find sum of digits within array and return

-- method --> solution(integer) --> integer
  -initialize en empty array (divisors)
  -iterate through numbers 1 upto given integer
    -if current num is divisible by 3 and/or 5 
      -push to divisors
  -find sum of divisors and return 

=end

def solution(num)
  divisors = []
  
  3.upto(num - 1) do |current_num|
    divisors << current_num if current_num % 3 == 0 || current_num % 5 == 0
  end
  
  divisors.sum
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
```

---

## String Transformer ##

- Difficulty: **medium**
- [x] Problem Completed?

Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.

Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:

"Example Input" ==> "iNPUT eXAMPLE"

You may assume the input only contain English alphabet and spaces.

string_transformer('Example string') == 'STRING eXAMPLE'\
string_transformer("Example Input") == "iNPUT eXAMPLE"

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.

Note: You will have to handle multiple spaces, and leading/trailing spaces.

You may assume the input only contain English alphabet and spaces.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -Change the case of every letter within the given string
  -reverse the order of words in the string
Implicit Rules:
  -string inputs will not be empty
  -split words in given string at ' '
Questions:
  -
  
--------------------------EXAMPLES---------------------------------------
For example:

"Example Input" ==> "iNPUT eXAMPLE"
swap order of words  
--> Input Example

swap case
--> 'iNPUT eXAMPLE

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 String
Additional DS Utilized:
  -split strings into arrays
  -join arrays into strings

----------------------------ALGO-----------------------------------------
Higher-Level ==> 

* split given stirng into array of words
* interate through each character of each word and swap their case
* return new string

-- method --> string_transformer(string) --> string
  -split given string into array of words (words)
  -iterate through words transformatively
    -split word and iterate through each character
      -swap case
    -join array back into a word
  -join array of words back into a string abd return

=end

def swap_case(char)
  char.upcase == char ? char.downcase : char.upcase
end

def string_transformer(str)
  words = str.split(/ /).reverse
  swapped = words.map do |word|
    word.chars.map { |char| swap_case(char) }.join
  end.join(' ')
  
  str[-1] == ' ' ? swapped = ' '  + swapped : swapped
end

# p swap_case('A') == 'a'
# p swap_case('b') == 'B'

p string_transformer('Example string') == 'STRING eXAMPLE'
p string_transformer("Example Input") == "iNPUT eXAMPLE"
p string_transformer("Rsl Zqlv") == "zQLV rSL"
p string_transformer("You Know When  THAT  Hotline Bling") == "bLING hOTLINE  that  wHEN kNOW yOU"
p string_transformer(" A b C d E f G ") == " g F e D c B a "
```

---

## Largest Product in a Series ##

- Difficulty: **hard**
- [x] Problem Completed?

Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

The input string always has more than five digits.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -Find the greatest product of 5 consecutive digits within the given string
  -product is the result of numbers being multipled together
  -input string will always have more than 5 digits
Implicit Rules:
  -digits will all be considered positive
  -given string number can start with 0
  -given string will only consist of digits (0-9)
Questions:
  -What is the product? 
--------------------------EXAMPLES---------------------------------------
For example:

greatestProduct("123834539327238239583") // should return 3240

"123834539327238239583"
12383 --> 1 * 2 * 3 * 8 * 3 --> product
23834
38345
...

greatest product of 5 consecutive digits --> 3240

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 Integer
Additional DS Utilized:
  -converting string into array
  -joining array into string
  -converting between strings an integers

----------------------------ALGO-----------------------------------------
Higher-Level ==> Find all substrings of the given string that are 5 characters long, convert these substring into individual digits and find the product, the find and return the greatest of these products

* find all substrings that are 5 chars long
* find all products of the individual digits within these substrings
* find the greatest product and return

-- method --> greatest_product(string) --> integer
  -assign the return value of find_subs to 'subs'
  -assign the return value of find_products to products
  -find and return the greatest value in products
  
-- method --> find_subs(string) --> array
  -split given string into array of characters
  -initialize an empty array (subs_of_five)
  -iterate through the array and collect all consecutive sub_arrays that have a length of 5
    -join the sub_array and push to subs_of_five
  -return subs_of_five
  
-- method --> find_products(array) --> array
  -initialize an empty array (products)
  -iterate through the given array
    -initialize produt to 1
      -split the current array into characters
      -convert each char to an integer
      -multiply the chars together
      -return product
  -return products

=end

def find_subs(str)
  subs_of_five = []
  str.chars.each_cons(5) { |sub_arr| subs_of_five << sub_arr.join }
  subs_of_five
end

def find_products(subs_of_five)
  subs_of_five.map do |sub|
    product = 1
    sub.chars.map(&:to_i).map { |num_sub| product *= num_sub }
    product
  end
end

def greatest_product(str)
  subs = find_subs(str)
  products = find_products(subs)
  products.max
end

# p find_products(find_subs("123834539327238239583"))

# p find_subs("123834539327238239583")

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
```

---

## Duplicate Encoder ##

- Difficulty: **hard**
- [x] Problem Completed?

The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

Examples\
"din"      =>  "((("\
"recede"   =>  "()()()"\
"Success"  =>  ")())())"\
"(( @"     =>  "))(("

p duplicate_encode("din") == "((("\
p duplicate_encode("recede") == "()()()"\
p duplicate_encode("Success") == ")())())"\
p duplicate_encode("(( @") == "))(("

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -create a new string object based on the given string object where;
    -each character is replaced with '(' if that char only appears once in the given string
    -if the char appears more than once in the given string replace it with ')'
  -ignore case when determining if a char is a duplicate
Implicit Rules:
  -given string can contain upper and lower case letters
  -given string can contain white spacce
  -given string can contain punctuation
  -given string can contain '(' and ')' characters as well
  -given string will not be empty
Questions:
--------------------------EXAMPLES---------------------------------------
"recede"   =>  "()()()"
recede
r --> 1 instance  --> '(' 
e --> 3 instances --> ')'
c --> 1 instance  --> '('
d --> 1 instance  --> '('

returns ==> "()()()"

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 String
Additional DS Utilized:
  -converting string into array 
  -joining array into string
  -utilizing hash for tallying the number of char instances
  -integers for tallying instances

----------------------------ALGO-----------------------------------------
Higher-Level ==> 

* Tally the number of instances of each character in the given string
* Iterate through the given string broken into an array of characters
  * construct a new string string based on whether the chars occur 1 time or more

-- method --> duplicate_encode(string) --> string
  -intialize 'instances' to the return value of 'tally_instances' with the given string downcased and apssed as an argument
  -initialize an empty string (encoded)
  -iterate through the given string downcased and split into an array of characters
    -if current char occurs more than once in instances
      -concat ')' to encoded
    -otherwise
      -concat '(' to encoded
  -return encoded

-- method --> tally_instances(string) --> hash
  -initialize an empty hash (instances)
  -split the given string into array of characters and iterate through
    -if the current char is not a key within instances
      -assigned the char as a key and its count within the arr as the value
    -otherwise
      -increment the value associated with the key by 1

=end

def tally_instances(str)
  str.chars.each_with_object(Hash.new(0)) do |char, instances|
    instances[char] += 1
  end
end

def duplicate_encode(str)
  instances = tally_instances(str.downcase)
  str.downcase.chars.each_with_object('') do |char, encoded_str|
    instances[char] > 1 ? encoded_str << ')' : encoded_str << '('
  end
end

# p tally_instances("recede")

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("
```

---

## Backspaces in String ##

- Difficulty: **medium**
- [x] Problem Completed?

Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -'#' acts like a backspace
  -return a string where for every '#' in the string, the character before it will be removed
Implicit Rules:
  -string inputs will be non-empty
  -an empty string input will return an empty string
  -string containing only '#' characters will return an empty string
Questions:
  -n/a
  
--------------------------EXAMPLES---------------------------------------
Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 String
Additional DS Utilized:
  -converting string into array
  -converting array into string

----------------------------ALGO-----------------------------------------
Higher-Level ==> Split given string into array and iterate through the collection pushing each element to a new array unless the character is '#' in which case remove the last element pushed to the new array, then join and return the new string

-- method --> clean_string(string) --> string
  -initialize an empty array (clean_arr)
  -split given string into array of characters and iterate through the collection
    -if the char is not '#' 
      -push to clean_arr
    -otherwise
      -remove the last element in clean_arr
  -join clean_arr and return

=end

def clean_string(str)
  str.chars.each_with_object([]) do |char, clean_arr|
    char == '#' ? clean_arr.pop : clean_arr << char
  end.join
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
```

---

## Alphabetized Again ##

- Difficulty: **medium**
- [x] Problem Completed?

Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance".\
Whitespace and punctuation shall simply be removed.\
The input string can contain any characters except for numbers.

def alphabetized(str)
  alpha = ('a'..'z').to_a
  letters = str.chars.select { |char| alpha.include?(char.downcase) }
  letters.sort { |a, b| a.downcase <=> b.downcase }.join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("codeWars Can't Load Today") == "aaaacCdddeLnooorstTWy"

```ruby
def alphabetized(str)
  alpha = ('a'..'z').to_a
  letters = str.chars.select { |char| alpha.include?(char.downcase) }
  letters.sort { |a, b| a.downcase <=> b.downcase }.join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("codeWars Can't Load Today") == "aaaacCdddeLnooorstTWy"
```

---

## Transform to Prime ##

- Difficulty: **medium**
- [x] Problem Completed?

Given a List [] of n integers , find the minimum number to be inserted in a list, so that the sum of all elements of the list should equal the closest prime number .

Notes

- List size is at least 2 .

- List's numbers will only have positives (n > 0) .

- Repetition of numbers in the list could occur .

- The newer list's sum should equal the closest prime number .

- Input >> Output Examples

1. minimum_number([3,1,2]) ==> return (1)\
Explanation:\
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which will make *the sum of the List** equal the closest prime number (7)* .

2. minimum_number([2,12,8,4,6]) ==> return (b, 5)
Explanation:\
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to prime number is (5) , which will make *the sum of the List** equal the closest prime number (37)* .

3. minimum_number ([50,39,49,6,17,28]) ==> return (2)
Explanation:\
Since , the sum of the list's elements equal to (189) , the minimum number to be inserted to transform the sum to prime number is (2) , which will make *the sum of the List** equal the closest prime number (191)* .

p minimum_number([3,1,2]) == 1\
p minimum_number([5,2]) == 0\
p minimum_number([1,1,1]) == 0\
p minimum_number([2,12,8,4,6]) == 5\
p minimum_number([50,39,49,6,17,28]) == 2

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Given a List [] of n integers , find the minimum number to be inserted in a list, so that the sum of all elements of the list should equal the closest prime number.

Notes
List size is at least 2 .

List's numbers will only have positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .

Input >> Output Examples

1. minimum_number([3,1,2]) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which will make the sum of the List** equal the closest prime number (7) .

2. minimum_number([2,12,8,4,6]) ==> return (5)
Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to prime number is (5) , which will make the sum of the List** equal the closest prime number (37) .

3. minimum_number([50,39,49,6,17,28]) ==> return (2)
Explanation:
Since , the sum of the list's elements equal to (189), the minimum number to be inserted to transform the sum to prime number is (2) , which will make the sum of the List equal the closest prime number (191) .


--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -given array will be at least 2 elements long
  -given array integers will be pos
  -there may be repeated numbers within the given array
  -new array, when summed, should equal the closest prime number
  -return an integer, that when included within the given array and summed equals the closest* prime number
Implicit Rules:
  -the closest prime number will always be greater than the sum of the array integers
  -if the sum of the warray integers is a prime, return 0
Questions:
  -closest prime number? Up? Down? Either?
    --> closest prime number greater than the sum of the array integers
--------------------------EXAMPLES---------------------------------------
p minimum_number([3,1,2]) == 1
[3, 1, 2] summed --> 6
6 is not prime
add 1 and check 
7 is prime!

therefore, return 1

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 array, containing positive integers
Output: 1 integer
Additional DS Utilized:
  -arrays and integers

----------------------------ALGO-----------------------------------------
Higher-Level ==> Find the sum of the given array, check if it is a prime number, add 1 to the sum and check again until the new total is a prime, then return the amount added to the original sum.

* find the sum of the given array
* loop
  * check if the sum is prime, increment sum by 1 and check again until its prime
* return the amount incremented

-- method --> minimum_number(array) --> integer
  -find the sum of the given array (sum)
  -initialize 'result' set to 0
  -unless is_prime? == true
    -increment result by 1
    -increment sum by 1
  -return result
  
-- method --> is_prime?(integer) --> boolean
  -iterate through 2 upto the given integer to see if any of them are divisibles

=end

def is_prime?(given_num)
  !(2..given_num -1).to_a.any? { |num| given_num % num == 0 }
end

def minimum_number(arr)
  sum = arr.sum
  result = 0
  
  until is_prime?(sum) do
    result += 1
    sum += 1
  end
  
  result
end

# p is_prime?(6) == false
# p is_prime?(7) == true

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2
```

---

## Word to Digit ##

- Difficulty: **medium**
- [x] Problem Completed?

Given a string that contains the written versions of the numbers 0-9, return the same string that has converted each writtten number within the string to an integer.

a = 'One Two Three'
convert_word_to_number(a) == '1 2 3'
a == '1 2 3'

b = 'one Two three'
convert_word_to_number(b) == '1 2 3'
b == '1 2 3'

convert_word_to_number('One Two Three and some words') == '1 2 3 and some words'
convert_word_to_number('Nine eight seven and some words') == '9 8 7 and some words'

convert_word_to_number('one word') == '1 word'
convert_word_to_number('lone word') == 'lone word'

```ruby
-----------------------INSTRUCTIONS--------------------------------------
Given a string that contains the written versions of the numbers 0-9, return the same string that has converted each writtten number within the string to an integer.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -given string will include word versions of numbers 0-9
  -return the same string converting words nums to nums
  
Implicit Rules:
  -maintain all other characters besides word numbers
  -white space, other words etc will remainn the same
  -all words are separated by one space
  -words can be capitalized or lowercase
Questions:

--------------------------EXAMPLES---------------------------------------
('one word') == '1 word'
one ==> 1

so we swap out the word number

returns '1 word'

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 String
Additional DS Utilized:
  -converting string into array of words

----------------------------ALGO-----------------------------------------
Higher-Level ==> 

* initialize contant 'WORD-NUMS' to words and their numberical equal in a hash
* iterate through the WORD_NUM and for each key word found in the given string sub with the value
* return the string

- initialize WORD_NUM to ...

-- method --> convert_word_to_number(string) --> string
  -iterate through WORD_NUM
    -substitute globally any instance of a element with ita index
  -return string

=end



WORD_NUMS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

# def convert_word_to_number(str)
#   WORD_NUMS.each_with_index do |word, index|
#     str.gsub!(word, index.to_s)
#   end
#   str
# end
def convert_word_to_number(str)
  str.split.each do |word|
    if WORD_NUMS.include?(word.downcase)
      str.gsub!(word, WORD_NUMS.index(word.downcase).to_s)
    end
  end

  str
end

a = 'One Two Three'
convert_word_to_number(a) == '1 2 3'
a == '1 2 3'

b = 'one Two three'
convert_word_to_number(b) == '1 2 3'
b == '1 2 3'

convert_word_to_number('One Two Three and some words') == '1 2 3 and some words'
convert_word_to_number('Nine eight seven and some words') == '9 8 7 and some words'

convert_word_to_number('one word') == '1 word'
p convert_word_to_number('lone word') == 'lone word'
```

---

## Longest AE ##

- Difficulty: **medium**
- [x] Problem Completed?

Find the length of the longest substring in the given string that contains exatly 2 characters "a" and 2 characters "e" in it.

As an example, if the input was “aaee”, the substring (aaee) length would be 4.
For a string "babanctekeaa", the longest substring is "babancteke" and its length is 10.

If the length of the input string is 0, return value must be -1 and if none of the substrings contain 2 "a" and "e" characters return -1 as well.

p longest_ae("aaee") == 4\
p longest_ae("babanctekeaa") == 10\
p longest_ae("xenoglossophobia") == -1\
p longest_ae("pteromerhanophobia") == 18\
p longest_ae("johannisberger") == -1\
p longest_ae("secaundogenituareabb") == 16

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Find the length of the longest substring in the given string that contains exatly 2 characters "a" and 2 characters "e" in it.

As an example, if the input was “aaee”, the substring (aaee) length would be 4.
For a string "babanctekeaa", the longest substring is "babancteke" and its length is 10.

If the length of the input string is 0, return value must be -1 and if none of the substrings contain 2 "a" and "e" characters return -1 as well.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -Find longest substring of given string that has 2 'a' and 'e' characters
  -if givens tring is empty return -1
  -if there are no substrings with 2 'a' and 'e' characters return -1
Implicit Rules:
  -all string characters will be lowercase letters
Questions:

--------------------------EXAMPLES---------------------------------------
"babanctekeaa" ==> 10

babancteke --> contains exactly 2 'a' and 'e' characters and is the longest substring

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 String
Output: 1 Integer
Additional DS Utilized:
  -splitting string into array
  -joining array into string

----------------------------ALGO-----------------------------------------
High-Level-Algo:

* Find all substrings of the given string
* iterate through substrings and find all substrings with exactlt 2 'a' and 'e' chars
* find and return the longest of these substrings

-- method --> longest_ae(string) --> integer
  -intialize 'subs' to the return value of find_subs
  -select all the substring that contain 2 'a' and 'e' characters (two_ae)
  -find and return the length of the longest element in two_ae
  
-- method --> find_subs(string) --> array
  -initialize an empty array (subs)
  -itertae through 1 upto the length of the givens string (length)
    -split the given string into an array of chars and iterate over (collecting sub_arrays)
      -joing and push sub_arrays to subs
  -return length of longest string or -1

=end

def find_subs(str)
  subs = []
  1.upto(str.size) do |length|
    str.chars.each_cons(length) { |sub_arr| subs << sub_arr.join }
  end
  subs
end

def longest_ae(str)
  subs = find_subs(str)
  two_ae = subs.select { |sub_str| sub_str.count('a') == 2 && sub_str.count('e') == 2 }
  two_ae.empty? ? -1 : two_ae.max_by { |str| str.length }.size
end

# p find_subs("babanctekeaa")

p longest_ae("aaee") == 4
p longest_ae("babanctekeaa") == 10
p longest_ae("xenoglossophobia") == -1
p longest_ae("pteromerhanophobia") == 18
p longest_ae("johannisberger") == -1
p longest_ae("secaundogenituareabb") == 16
```

---

## Minimum Sub Length ##

- Difficulty: **medium**
- [x] Problem Completed?

Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

p minSubLength([2,3,1,2,4,3], 7) == 2\
p minSubLength([1, 10, 5, 2, 7], 9) == 1\
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4\
p minSubLength([1, 2, 4], 8) == 0

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -given an array of positive integers and an integer object (s)
  -find shortest array of integers that, when summed, is greater than or equal to parameter s
  -if there isn't one, return 0
  -give integers will be positive
Implicit Rules:
  -given array will not be empty
  -given integer will be positive
Questions:

--------------------------EXAMPLES---------------------------------------
([1, 10, 5, 2, 7], 9) == 1
[1, 10] >= 9
[10] >= 9 --> shortest sub-array >= 9
[5, 2, 7] >= 9

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 Array of integers, 1 Integer
Output: 1 integer
Additional DS Utilized:
  -integers, arrays

----------------------------ALGO-----------------------------------------
High-Level-Algo:
* find all sub-arrays
* filter out any sub-arrays thats sum is less than parameter s
* find the shortest sub-array and return its length, otherwise return 0

-- method --> min_sub_length(array, integer) --> integer
  -initialize subs to the return value of find_subs
  -select the sub-arrays from subs whose sum is >= to s
  -find the shortest sub-array 
  -return shortest sub-array length or 0
  
-- method --> find_subs(array) --> array
  -initialize an empty array (subs)
  -iterate through numbers 1 upto arrays length (length)
    -iterate through array finding consecutive sub-arrays  
      -push all sub_arrays to subs
  -return subs

=end

def find_subs(arr)
  subs = []
  1.upto(arr.size) do |length|
    arr.each_cons(length) { |sub_arr| subs << sub_arr }
  end
  subs
end

def min_sub_length(arr, s)
  subs = find_subs(arr)
  greater_subs = subs.select { |sub_arr| sub_arr.sum >= s }
  return 0 if greater_subs.empty?
  greater_subs.min_by { |sub_arr| sub_arr.length }.size
end

# p find_subs([2,3,1,2,4,3]) 

p min_sub_length([2,3,1,2,4,3], 7) == 2
p min_sub_length([1, 10, 5, 2, 7], 9) == 1
p min_sub_length([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p min_sub_length([1, 2, 4], 8) == 0
```

---

## Two Sum ##

- Difficulty: **medium**
- [x] Problem Completed?

Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value. The indices of these items should then be returned in a tuple like so: (index1, index2).

The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

p two_sum([1, 2, 3], 4).sort == [0, 2]\
p two_sum([1234, 5678, 9012], 14690).sort == [1, 2]\
p two_sum([2, 2, 3], 4).sort == [0, 1]

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value. The indices of these items should then be returned in a tuple like so: (index1, index2).

The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -given an array of integers and a target integer
  -find two different numbers in the array thats sum is the target
  -the indices of these numbers should be returned in an array
  -inputs will always be a valid array with at least 2 valid integers
  -target will always be the sum of 2 numbers in the array
Implicit Rules:
  -given integers will always be greater than 0
Questions:

--------------------------EXAMPLES---------------------------------------

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 array, 1 integer
Output: 1 array
Additional DS Utilized:
  -

----------------------------ALGO-----------------------------------------
High-Level-Algo:
* find all possible 2 element long sub-arrays
* iterate through the sub_arrays and find combos thats sum is the target and the numbes are different
* find the indices of these 2 numbers and return them in an array

-- method --> two_sum(array, integer) --> array
  -find all 2 element long sub-arrays (all_subs)
  -iterate through all_subs using selection
    -two numbers == target & two numbers different?
  -find the indices of the 2 numbers and return

=end

def two_sum(arr, target)
  all_subs = arr.combination(2).to_a
  result_subs = all_subs.select { |sub| sub.sum == target }
  
  result_subs = result_subs.first 
  result = []
  
  1.times do |_|
    first_index = arr.index(result_subs[0])
    result << first_index
    arr[first_index] = ''
    result << arr.index(result_subs[1])
  end

  result
end

p two_sum([1, 2, 3], 4).sort == [0, 2]
p two_sum([1234, 5678, 9012], 14690).sort == [1, 2]
p two_sum([2, 2, 3], 4).sort == [0, 1]
```

---

## Digital Root ##

- Difficulty: **medium**
- [x] Problem Completed?

In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Here's how it works:

digital_root(16)\
=> 1 + 6\
=> 7

digital_root(942)\
=> 9 + 4 + 2\
=> 15 ...\
=> 1 + 5\
=> 6

digital_root(132189)\
=> 1 + 3 + 2 + 1 + 8 + 9\
=> 24 ...\
=> 2 + 4\
=> 6

digital_root(493193)\
=> 4 + 9 + 3 + 1 + 9 + 3\
=> 29 ...\
=> 2 + 9\
=> 11 ...\
=> 1 + 1\
=> 2

p digital_root(16) == 7\
p digital_root(456) == 6\
p digital_root(132189) == 6\
p digital_root(493193) == 2

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Here's how it works:

digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

digital_root(493193)
=> 4 + 9 + 3 + 1 + 9 + 3
=> 29 ...
=> 2 + 9
=> 11 ...
=> 1 + 1
=> 2

--------------------------PROBLEM----------------------------------------
Explicit Rules:
  -given an integer input
    -take the sum of the digits of the given integer
    -if that value is a double digit, repeat, until a single digit
    -return the number of times this must be done
Implicit Rules:
  -given number will be gresater than 0
  -given number will be a whole number
Questions:

--------------------------EXAMPLES---------------------------------------
456
--> 4 + 5 + 6 (1)
15
--> 1 + 5 (2)
6

returns 2

-----------------------DATA STRUCTURES-----------------------------------
Input: 1 Integer
Output: 1 Integer
Additional DS Utilized:
  -splitting integers into an array of digits

----------------------------ALGO-----------------------------------------
High-Level-Algo:
* unless given integer is a single digit, split into digits and find sum
* increment a counter for every time this must be done
* return the counter 

-- method --> digital_root(integer) --> integer
  -initialize 'counter' to 0
  -if given number split into array of digits is longer than 1 element long
    -pass sum of array of digits to digital_root
    -increment counter by 1
  -otherwise
    -return counter
=end

def digital_root(num)
  num = num.digits
  if num.size > 1
    num = num.sum
    digital_root(num)
  else
    return num.sum
  end
end

p digital_root(16) == 7 
p digital_root(456) == 6 
p digital_root(132189) == 6
p digital_root(493193) == 2
```
