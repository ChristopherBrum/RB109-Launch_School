1. [Repeater](#repeater)
2. [Double Consonants](#double-consonants)
3. [Rotate 13](#rotate-13)
4. [Longest Palindrome](#longest-palindrome)
5. [Find Chidren](#find-children)
6. [Double Consonants Alternative](#double-consonants-alternative)
7. [Reversed Number](#reversed-number)
8. [Get the Middle Character](#get-the-middle-character)
9. [Rotation Pt 1](#rotation-pt-1)
10. [Rotation Pt 2](#rotation-pt-2)
11. [Rotation Pt 3](#rotation-pt-3)
12. [1000 Lights](#1000-lights)
13. [Next Largest Num](#next-largest-num)
14. [Count Letters in Strings](#count-letters-in-strings)
15. [Count Pairs in String](#count-pairs-in-string)
16. [Return Substring Instance Count](#return-substring-instance-count)
17. [Alphabet Symmetry](#alphabet-symmetry)
18. [Longest Vowel Chain](#longest-vowel-chain)
19. [Non Even Substrings](#non-even-substrings)
20. [Substring Fun](#substring-fun)
21. [Repeated Substring](#repeated-substring)
22. [Typoglycemia Generator](#typoglycemia-generator)
23. [Most Frequently Used Words in a Text](#most-frequently-used-words-in-a-text)
24. [Detect Pangram](#detect-pangram)
25. [Kebabize](#kebabize)
26. [Dubstep](#dubstep)
27. [Take a Ten Minute Walk](#take-a-ten-minute-walk)
28. [Stop gninnipS My sdroW](#stop-gninnips-my-sdrow)
29. [Nested Brackets](#nested-brackets)
30. [Write Number in Expanded Form](#write-number-in-expanded-form)
31. [Mexican Wave Variation 1](#mexican-wave-variation-1)
32. [Sum Consecutives](#sum-consecutives)
33. [Mexican Wave Variation 2](#mexican-wave-variation-2)

---

1. ## Repeater ##

- ### Difficulty: **easy** ###
- [x] Problem Completed? 

Write a method that takes a string, and returns a new string in which every character is doubled.

p repeater('Hello') == "HHeelllloo"<br>
p repeater("Good job!") == "GGoooodd  jjoobb!!"<br>
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
<br><br>

2. ## Double Consonants ##

- ### Difficulty: **easy** ###
- [ ] Problem Completed? 

Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

double_consonants('String') == "SSttrrinngg"<br>
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"<br>
double_consonants("July 4th") == "JJullyy 4tthh"<br>
double_consonants('') == ""<br>

```ruby
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
--------------------------PROBLEM----------------------------------------
Questions:
Input: 1 String
Output: 1 String

---------------------------RULES-----------------------------------------
Explicit:
Implicit:

--------------------------EXAMPLES---------------------------------------

----------------------------ALGO-----------------------------------------

=end
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
```
---
<br><br>

3. ## Rotate 13 ##

- ### Difficulty: **med/hard** ###
- [ ] Problem Completed? 

How can you tell an extrovert from an introvert at NSA? Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE thl'f fubrf.

I found this joke on USENET, but the punchline is scrambled. Maybe you can decipher it? According to Wikipedia, ROT13 (http://en.wikipedia.org/wiki/ROT13) is frequently used to obfuscate jokes on USENET.

Hint: For this task you're only supposed to substitue characters. Not spaces, punctuation, numbers etc. 

rot13("EBG13 rknzcyr.") == "ROT13 example.";
rot13("This is my first ROT13 excercise!" == "Guvf vf zl svefg EBG13 rkprepvfr!"

Rot 13 means each letter is replaced by the letter appearing 13 places in the alphabt. after the original letter. Last 13 letters alphabet you start over.

Test examples:

rot13("EBG13 rknzcyr.") == "ROT13 example.";
rot13("This is my first ROT13 excercise!" == "Guvf vf zl svefg EBG13 rkprepvfr!"
Rot 13 means each letter is replaced by the letter appearing 13 places in the alphabt. after the original letter. Last 13 letters alphabet you start over.



### Problem: ###

Rot 13 means each letter is replaced by the letter appearing 13 places in the alphabt after the original letter

- input: string
- output: string
- rules: 
  - For this task you're only supposed to substitue characters. Not spaces, punctuation, numbers etc.
  - if there is a number, return it as it is

### Algorithm: ###
  - replace the alphabet characters with the ones that comes after 13 
  - abcdefghijklm nopqrstuvwxyz

  - split the string into array of words
  - iterate over the characters
  
```ruby
def rot13(string)
  lowercase_alpha = ("a".."z").to_a
  uppercase_alpha = ("A".."Z").to_a
  
  result = ""
  
  #string.split.each do |char|
    string.chars.each do |char|
      if  lowercase_alpha.include?(char)
        result << char.tr("abcdefghijklm", "nopqrstuvwxyz")
      elsif uppercase_alpha.include?(char)
        result << char.tr("ABCDEFGHIJKLM", "NOPQRSTUVWXYZ")
      else
        result << char
      end
    end
  #end
  result
end

# Having a Problem with this Solution


p rot13("Abc") #== "Nop"<br>
p rot13("xYz") == "kLm"<br>
p rot13("EBG13 rknzcyr.") #== "ROT13 example."<br>
p rot13("This is my first ROT13 excercise!") #== "Guvf vf zl svefg EBG13 rkprepvfr!"<br>
```

### Ginni's Algorithm: ###
- Convert the input string into an array of chars
- Iterate over each char in the array transforming as follows
  - If the current char is a uppercase letter:
    - Convert to ASCII code 
    - Add 13 to the ASCII code
    - If this is greater than 90
      - subtract 91 from value
      - Add that difference to the beginning letter of the ASCII values (65)
    - Return the char associated with the integer result
  - If the current char is a lowercase letter:
    - Convert to ASCII code
    - Add 13 to ASCII code
    - If the is greater than 122
      - subtract 123 from the value
      - Add that difference to the beginning letter of the alphabet (97)
    - Return the char associated with the integer result
  - If the current char is not a letter
    - Return that character
- Join and return the resulting string
=end

```ruby
# Ginni's Solution
def rot_upper(char)
  value = char.ord
  value += 13
  if value > 90
    value -= 91
    value += 65
  end
  
  value.chr
end

def rot_lower(char)
  value = char.ord
  value += 13
  if value > 122
    value -= 123
    value += 97
  end
  
  value.chr
end


def rot13(string)
  string.chars.map do |char|
    if ('A'..'Z').include?(char)
      rot_upper(char)
    elsif ('a'..'z').include?(char)
      rot_lower(char)
    else
      char
    end
  end.join
end
```

---
<br><br>

4. ## Longest Palindrome ## 

- ### Difficulty: **easy** ###
- [x] Problem Completed? 

Find the length of the longest substring in the given string that is the same in reverse.

Example:<br>
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

-----------------------INSTRUCTIONS--------------------------------------<br>
Find the length of the longest substring in the given string that is the same in reverse.

Example:<br>
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

--------------------------PROBLEM----------------------------------------<br>
- Questions:<br>
  - Are whites spaces included or negated?<br>
- Input: 1 String<br>
- Output: 1 Integer, length of the longest substring palindrome<br>

---------------------------RULES-----------------------------------------<br>
- Explicit:
  - Find the length of the longest substring in the given string that is the same in reverse.
  - If the length of the input string is 0, return value must be 0
- Implicit:
  - 

--------------------------EXAMPLES---------------------------------------<br>
longest_palindrome("I like racecars that go fast") == 7<br>
'racecar' -> reveresed == -> 'racecar'<br>
length is 7<br>
Returns => 7<br>

----------------------------ALGO-----------------------------------------<br>
=> Find all substrings of the input string. Iterate through substrings and collect all palindromes from within collection. Find the palindrome with the greatest length and return.

- Initialize an empty array to sub_strings 
- Split input string into an array of characters
- Iterate over the array
  - Find all possible subarrays and push to sub_strings array, join back to strings

- Iterate over sub_strings array
  - Keep all sub_strings that are palindromes
- Find palindrome with greatest length and return

=end

```ruby
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
<br><br>

5. ## Find Children ##

- ### Difficulty: **easy** ###
- [x] Problem Completed? 

Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".

-Function input: String contains only letters, uppercase letters are unique.

Task:
Place all people in alphabetical order where Mothers are followed by their children, 
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

6. ## Double Consonants Alternative ##

- ### Difficulty: **easy** ###
- [x] Problem Completed?

Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:

double_consonants('String') == "SSttrrinngg"<br>
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"<br>
double_consonants("July 4th") == "JJullyy 4tthh"<br>
double_consonants('') == ""<br>

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

7. ## Reversed Number ##

- ### Difficulty: **easy** ###
- [x] Problem Completed?

Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

Copy Code
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
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

8. ## Get The Middle Character ## 

- ### Difficulty: **easy** ###
- [x] Problem Completed?

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:

Copy Code
center_of('I love ruby') == 'e'<br>
center_of('Launch School') == ' '<br>
center_of('Launch') == 'un'<br>
center_of('Launchschool') == 'hs'<br>
center_of('x') == 'x'<br>

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

9. ## Rotation Pt 1 ##

- ### Difficulty: **medium** ###
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

10. ## Rotation Pt 2 ##

- ### Difficulty: **medium** ###
- [x] Problem Completed?

Write a method that can rotate the last n digits of a number. For example:

Note; that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

```ruby
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
```



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

11. ## Rotation pt 3 ##

- ### Difficulty: **medium** ###
- [x] Problem Completed?

If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

```ruby
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
```

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

12. ## 1000 Lights ##

- ### Difficulty: **medium** ###
- [x] Problem Completed?

You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
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

13. ## Next Largest Num ##

- ### Difficulty: **medium** ###
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

14. ## Count Letters in String ##

- ### Difficulty: **medium** ###
- [x] Problem Completed?

Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}<br>
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}<br>
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}<br>


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

15. ## Count Pairs in String ##

- ### Difficulty: **medium** ###
- [x] Problem Completed?

You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0<br>
If there are more pairs of a certain number, count each pair only once.<br> 
E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)<br>
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000<br>

Examples
[1, 2, 5, 6, 5, 2]  -->  2<br>
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4<br>
...because there are 4 pairs: 2, 20, 6 and 2 (again)<br>

p pairs([1, 2, 5, 6, 5, 2]) == 2<br>
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4<br>
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3<br>
p pairs([1000, 1000]) == 1<br>
p pairs([]) == 0<br>
p pairs([54]) == 0<br>

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

16. ## Return Substring Instance Count ##

- ### Difficulty: **medium** ###
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

17. ## Alphabet Symmetry ##

- ### Difficulty: **medium** ###
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

p solve(["abode","ABc","xyzD"]) == [4,3,1]<br>
p solve(["abide","ABc","xyz"]) == [4,3,0]<br>
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]<br>
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]<br>


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

18. ## Longest Vowel Chain ##

- ### Difficulty: **medium** ###
- [x] Problem Completed?


The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

p solve("codewarriors") == 2<br>
p solve("suoidea") == 3<br>
p solve("iuuvgheaae") == 4<br>
p solve("ultrarevolutionariees") == 3<br>
p solve("strengthlessnesses") == 1<br>
p solve("cuboideonavicuare") == 2<br>
p solve("chrononhotonthuooaos") == 5<br>
p solve("iiihoovaeaaaoougjyaw") == 8<br>
    


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
### MUCH QUICKER METHOD !!!

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

19. ## Non Even Substrings  ##

- ### Difficulty: **medium** ###
- [x] Problem Completed?

Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.
=end
p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
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

20. ## Substring Fun ##

- ### Difficulty: **medium** ###
- [x] Problem Completed?

Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"<br>
  ^        ^        ^<br>
  n=0     n=1     n=2<br>

Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.


p nth_char(['yoda', 'best', 'has']) == 'yes'<br>
p nth_char([]) == ''<br>
p nth_char(['X-ray']) == 'X'<br>
p nth_char(['No', 'No']) == 'No'<br>
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'<br>


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

21. ## Repeated Substring ##

- ### Difficulty: **medium** ###
- [x] Problem Completed?

For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times. The input string consists of lowercase latin letters. Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:

for string `s = "ababab"`
the answer is `["ab", 3]`

Example #2:

for string `s = "abcde"` the answer is `"abcde"` because for this string `"abcde"` the minimum substring `t`, such that `s` is `t` repeated `k` times, is itself.


`p f("ababab") == ["ab", 3]`<br>
`p f("abcde") == ["abcde", 1]`<br>

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

22. ## Typoglycemia Generator ##

- ### Difficulty: **hard** ###
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

for reference: http://en.wikipedia.org/wiki/Typoglycemia
=end

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

23. ## Most Frequently Used Words in a Text ##

- ### Difficulty: **hard** ###
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
on Sundays, made away with three-quarters of his income.")<br>
returns => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")<br>
returns => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")<br>
returns => ["won't", "wont"]

Bonus points (not really, but just for fun):<br>
Avoid creating an array whose memory footprint is roughly as big as the input text.<br>
Avoid sorting the entire array of unique words.

p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]<br>
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]<br>
p top_3_words("  //wont won't won't ") == ["won't", "wont"]<br>
p top_3_words("  , e   .. ") == ["e"]<br>
p top_3_words("  ...  ") == []<br>
p top_3_words("  '  ") == []<br>
p top_3_words("  '''  ") == []<br>
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

24. ## Detect Pangram ##

- ### Difficulty: **medium** ###
- [x] Problem Completed? 

A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.
=end
p panagram?("The quick brown fox jumps over the lazy dog.") == true
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

25. ## Kebabize ##

- ### Difficulty: **medium** ###
- [x] Problem Completed? 

Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps<br>
kebabize('camelsHave3Humps') // camels-have-humps

Notes:

the returned string should only contain lowercase letters

p kebabize('myCamelCasedString') == 'my-camel-cased-string'<br>
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

26. ## Dubstep ##

- ### Difficulty: **medium** ###
- [x] Problem Completed? 

Polycarpus works as a Dhttps://www.codewars.com/kata/551dc350bf4e526099000ae5/train/rubyJ in the best Berland nightclub, and he often uses dubstep music in his performance. Recently, he has decided to take a couple of old songs and make dubstep remixes from them.

Let's assume that a song consists of some number of words (that don't contain WUB). To make the dubstep remix of this song, Polycarpus inserts a certain number of words "WUB" before the first word of the song (the number may be zero), after the last word (the number may be zero), and between words (at least one between any pair of neighbouring words), and then the boy glues together all the words, including "WUB", in one string and plays the song at the club.

For example, a song with words "I AM X" can transform into a dubstep remix as "WUBWUBIWUBAMWUBWUBX" and cannot transform into "WUBWUBIAMWUBX".

Recently, Jonny has heard Polycarpus's new dubstep track, but since he isn't into modern music, he decided to find out what was the initial song that Polycarpus remixed. Help Jonny restore the original song.

Input<br>
The input consists of a single non-empty string, consisting only of uppercase English letters, the string's length doesn't exceed 200 characters

Output<br>
Return the words of the initial song that Polycarpus used to make a dubsteb remix. Separate the words with a space.

Examples<br>
song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")  =>  WE ARE THE CHAMPIONS MY FRIEND<br>
p song_decoder("AWUBBWUBC") == "A B C"<br>
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"<br>
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

27. ## Take a Ten Minute Walk ##

- ### Difficulty: **medium** ###
- [x] Problem Completed? 

You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true<br>
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false<br>
p is_valid_walk(['w']) == false<br>
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false<br>


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

28. ## Stop gninnipS My sdroW ##

- ### Difficulty: **medium** ###
- [x] Problem Completed? 

(https://www.codewars.com/kata/5264d2b162488dc400000001)
6 kyu
Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"<br>
p spin_words("This is a test") == "This is a test"<br>
p spin_words("This is another test") == "This is rehtona test"<br>
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

29. ## Nested Brackets ##

- ### Difficulty: **hard** ###
- [x] Problem Completed? 

Given a string containing brackets [], braces {}, parentheses (), or any combination thereof, verify that any and all pairs are matched and nested correctly.

p paired?('[]]') == false<br>
p paired?(']][[') == false<br>
p paired?('{}{}[()]') == true<br>
p paired?('{}{}[()') == false<br>
p paired?('[({]})') == false<br>
p paired?('\left(\begin{array}{cc} \frac{1}{3} & x\\ ' +<br>
  '\mathrm{e}^{x} &... x^2 \end{array}\right)') == true<br>
p paired?('(((185 + 223.85) * 15) - 543)/2') == true<br>

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

30. ## Write Number in Expanded Form ##

- ### Difficulty: **medium** ###
- [x] Problem Completed? 

Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. 

For example:

expanded_form(12); # Should return '10 + 2'<br>
expanded_form(42); # Should return '40 + 2'<br>
expanded_form(70304); # Should return '70000 + 300 + 4'<br>
NOTE: All numbers will be whole numbers greater than 0.<br>

If you liked this kata, check out part 2!!

p expanded_form(12) == '10 + 2'<br>
p expanded_form(42) == '40 + 2'<br>
p expanded_form(70304) == '70000 + 300 + 4'<br>

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

31. ## Mexican Wave Variation 1 ##

- ### Difficulty: **hard** ###
- [x] Problem Completed? 

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

Rules
  1.  The input string will always be lower case but maybe empty.
  2.  If the character in the string is whitespace then pass over it as if it was an empty seat.

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]<br>
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]<br>
p wave("") == []<br>
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]<br>
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]<br>

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

32. ## Sum Consecutives ##

- ### Difficulty: **hard** ###
- [ ] Problem Completed? 

You are given an array that contains only integers (positive and negative). Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

You can assume there is never an empty array and there will always be an integer.

p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2]<br>
p sum_consecutives([1,1,7,7,3]) == [2,14,3]<br>
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]<br>

```ruby
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

# def sum_consecutives(arr)
#   sums = []
#   arr.each_with_index do |num, index|
#     sum = 0
#     current = 0
#     loop do
#       current = num
#       sum += current
#       p "array current: #{arr[index]}, arr + 1: #{arr[index + 1]}"
#       break if arr[index] != arr[index + 1]
#     end
#     sums << sum
#   end
#   sum
# end

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

33. ## Mexican Wave Variation 2 ##

- ### Difficulty: **hard** ###
- [ ] Problem Completed? 

Your task is to create a method that turns a string into a wave (like at a stadium). You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

Rules

 1. The input string will always be lower case but maybe empty.
 2. If the character in the string is whitespace then pass over it
 3. Leave each fourth letter unaltered—-do not make those letters uppercase

p wave("hello") == ["Hello", "hEllo", "heLlo", "hello", "hellO"]<br>
p wave("studying") == ["Studying", "sTudying", "stUdying", "studying", "studYing", "studyIng", "studyiNg", "studying"]<br>
p wave("launch school") == ["Launch school", "lAunch school", "laUnch school", "launch school", "launCh school", "launcH school", "launch School", "launch school", "launch scHool", "launch schOol", "launch schoOl", "launch school"]<br>
p wave("") == []<br>

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