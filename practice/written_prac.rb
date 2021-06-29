=begin
-----------------------INSTRUCTIONS--------------------------------------
Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

  -the first and last characters remain in original place for each word
  -characters between the first and last characters must be sorted alphabetically
  -punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

  -words are seperated by single spaces
  -only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
  -special characters do not take the position of the non special characters, for example: -dcba -> -dbca
  -for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
  -ignore capitalisation


--------------------------PROBLEM----------------------------------------
Questions:
Input: String
Output: String

---------------------------RULES-----------------------------------------
Explicit:
  -the first and last characters remain in original place for each word
  -characters between the first and last characters must be sorted alphabetically
  -punctuation should remain at the same place as it started, for example: shan't -> sahn't
  
Implicit:
  -words are seperated by single spaces
  -only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
  -special characters do not take the position of the non special characters, for example: -dcba -> -dbca
  -for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
  -ignore capitalisation

--------------------------EXAMPLES---------------------------------------
p scramble_words('professionals') == 'paefilnoorsss'

=> 'professionals'
=> 'p' + 'rofessional' + 's'
=> 'p' + 'aefilnoorss' + 's'
=> 'paefilnoorsss'

----------------------------ALGO-----------------------------------------
  -split string into an array of strings
  -iterate through the array
    -Slice first and last elements of string and save them as variables 'first' and 'last'
  -if there is punctuation, save the punctuation and the index 
  -Sort the remaining elements
  -insert the punctuation at the given index
  -preppend the first element
  -append the last element
  -return string
  

=end

def scramble_words(words)
  first = ''
  last = ''
  words.split.each_with_index do |word, index|
    word_arr = word.chars
    first = word_arr.shift
    last = word_arr.pop
    if word_arr.include?(/(-',.)/) ####################
      p 'YES'
    end
  end
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
