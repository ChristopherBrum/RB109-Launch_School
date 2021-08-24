def split_char(str)
  str.scan(/[a-z]/i)
end
def alphabetized(str)
  arr = split_char(str)
  arr.sort { |a, b| p a.downcase <=> b.downcase }.join
end
# alphabetized("The Holy Bible")
alphabetized("The Holy Bible") == "BbeehHilloTy"
# alphabetized("!@$%^&*()_+=-`,") == ""
# alphabetized("codeWars Can't Load Today") == "aaaacCdddeLnooorstTWy"