# string interpolation

name = 'bob'
item = 'cap-'
names = %w[hal ned jim kal bob]
puts names[0].index('h')
puts "hello, #{name}."

# String class methods

# \n -> new line
# \t -> tab
# \" -> double quotes
# \' -> single quote
# \\ -> backslash

# capitalize -> returns new string
name.capitalize # "Bob"

# capitalize! -> mutates the caller -> string (if changes are made), nil (if no changes are made)
name.capitalize! # "Bob"

# center(width, padstr=' ') -> returns new string
name.center(10, '-') # "---Bob----"

# chomp() -> returns new string (with optional separator removed from end of string)
# input = gets.chomp

# chomp!() -> mutates the caller
item.chomp!('-') # "cap"

# chop -> returns new string with last character removed
item.chop # "ca"

# chop! -> mutates the caller
item.chop! # "ca"

# chr -> returns a string equaling the one-character beginning of the string
item.chr # "c"

# clear -> returns a string - empties the string (mutates the caller)
name.clear # ""

# count -> returns a fixnum - intersection of the number of characters
a = "hello world"
a.count('hd') # 2

# delete -> returns a new string - removing all the intersection of characters
a.delete('hd') # 'ello worl'

# delete! -> returns a string or nil (if no modifications were made)
a.delete!('z') # nil
a.delete!('hd') # 'ello worl'

# downcase -> returns a new string - all uppercase letters replaced with lowercase
"HeLlo WoRlD".downcase # "hello world"

# downcase -> returns a string - mutates the caller
"HeLlo WoRlD".downcase # "hello world"

# each_char -> passes each character to a block
"hey".each_char { |c| print c, '-'} # 'h-e-y-'

# empty? -> returns a boolean (depending on if the string has a length of zero or not)
item.empty? # false

# end_with? -> returns a boolean
"hello".end_with?("llo") # true

# eql? -> returns a boolean
p "hello".eql?("HELLO") # false

# gsub -> returns a new string - with matches (regex) removed and replaced
"welcome".gsub(/c/, "*") # wel*ome
"Hello People".gsub(/[HP]/, 'H' => 'h', 'P' => 'p') # "hello people"

# gsub! -> returns a string - with matches (regex) removed and replaced
new_name = "Hal Hope"
new_name.gsub!(/H/, 'h') # "hal hope"

# include? -> returns a boolean - true if the string contains the given character or string
new_name.include?('al') # true

# index -> fixnum - returns the index of the first occurance of the given string or character
"howdy people".index('y') # 4

# insert -> returns a string (mutates the caller)
person = "kal kool"
p person.insert(0, "***").insert(-1, "***") # "***kal kool***"

# inspect -> returns a string (including quote marks and escaped special characters)
"hal".inspect # "\"hal\""

# intern -> returns a symbol of the given string (same as #to_sym)
"bob".intern # :bob

# length -> returns an integer
"items".length # 5

# ljust -> returns a new string
"bob".ljust(5, "-") # "bob--"

# lstrip -> returns a new string
"   people   ".lstrip # "people   "

# lstrip! -> returns a string (mutates the caller)
"   people   ".lstrip! # "people   "

# match -> returns the matchdata or nil
"items".match('t') # #<MatchData "t">

# partition -> returns an array - that includes a head, separator, and tail
"bob".partition("o") # ["b", "o", "b"]

