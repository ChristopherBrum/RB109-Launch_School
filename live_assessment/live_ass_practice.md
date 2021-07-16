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

6. ## Double Consonants ##

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

### Difficulty: **easy** ###
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


14. ##  ##

- ### Difficulty: **medium** ###
- [ ] Problem Completed?






