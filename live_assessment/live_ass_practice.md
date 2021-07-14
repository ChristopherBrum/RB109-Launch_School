1. ## Repeater ##
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

8. ##  ## 

- [] Problem Completed?
