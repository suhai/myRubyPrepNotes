#
puts __FILE__ # returns the file path of the current file
puts $PROGRAM_NAME # returns the file path of the current file
puts
#-----------------------------------------------------------------------------
puts " ===== MY RUBY NOTES ===== "
#-----------------------------------------------------------------------------
puts " Demorgan's Law is given by : (x && y) == !(!x || !y) "
# In propositional logic and boolean algebra, De Morgan's laws[1][2][3] are a pair of transformation rules that are both valid rules of inference. They are named after Augustus De Morgan, a 19th-century British mathematician. The rules allow the expression of conjunctions and disjunctions purely in terms of each other via negation.
# The rules can be expressed in English as:
# The negation of a conjunction is the disjunction of the negations; and
#The negation of a disjunction is the conjunction of the negations;
# or
# The complement of the union of two sets is the same as the intersection of their complements; and
# The complement of the intersection of two sets is the same as the union of their complements.


puts "NAMING GUIDELINES" 
# snake_case:  (not CamelCase) when naming methods, variables, and files. 
# CamelCase:  for classes and modules.
# SCREAMING_SNAKE_CASE:  for other constants.
# adjective?:  for methods that return a boolean value (i.e. true or false) 
# word!:  for safe mothods or methods that are potentially 'dangerous' (e.g., because they modify the calling object or arguments. ex. map! changes the original array).

# Comment Annotations
# Annotations should usually be written on the line immediately above the relevant code.
# The annotation keyword is followed by a colon and a space, then a note describing the problem.
# If multiple lines are required to describe the problem, subsequent lines should be indented three spaces after the # (one general plus two for indentation purpose).
# 1. Use TODO to note missing features or functionality that should be added at a later date.

# 2. Use FIXME to note broken code that needs to be fixed.
# def bar
#   # FIXME: This has crashed occasionally since v3.2.1. It may
#   #   be related to the BarBazUtil upgrade.
#   baz(:quux)
# end

# 3. Use OPTIMIZE to note slow or inefficient code that may cause performance problems. 
# def bar
#   sleep 100 # OPTIMIZE
# end

# In cases where the problem is so obvious that any documentation would be redundant, annotations may be left at the end of the offending line with no note. This usage should be the exception and not the rule. 

# 4. Use HACK to note code smells where questionable coding practices were used and should be refactored away.
# 5. Use REVIEW to note anything that should be looked at to confirm it is working as intended. For example: REVIEW: Are we sure this is how the client does X currently? [link]
# 6. Use other custom annotation keywords if it feels appropriate, but be sure to document them in your project's README or similar.
#-----------------------------------------------------------------------------
puts 

al = ["a","b","c"]
ba = ["e","f","g"]
puts al.product(ba).inspect

#0.10
puts "Table of Contents".center 60
puts "Chapter 1:  Numbers".ljust(30) + "page 1".rjust(30)
puts "Chapter 2:  Letters".ljust(30) + "page 72".rjust(30)
puts "Chapter 3:  Variables".ljust(30) + "page 118".rjust(30)
puts "So, about that centering... ".ljust 50
puts

name = "suHaiBu YehUZa"
puts name.length
puts name.reverse
puts name.upcase
puts name.downcase
puts name.swapcase
puts

kappa = "Hello world"
puts kappa[0]
puts kappa.index("w")
puts kappa.include?("e")
puts kappa.length
puts kappa.delete("H")
puts kappa.delete("e")
puts kappa.delete("l")
puts kappa.upcase
puts kappa.downcase
puts kappa.capitalize
puts kappa.swapcase
puts
puts kappa.split.inspect # this splits the sentence on " "
puts "soldier".split.inspect
puts kappa.split("").inspect
puts kappa.split(" ").inspect
puts
kappo = kappa.split
kappi = kappa.split("")
puts kappo.join.inspect # this joins the array with ""
puts kappi.join.inspect # this joins the array with ""
puts kappo.join("").inspect
puts kappi.join("").inspect
puts kappo.join(" ").inspect
puts kappi.join(" ").inspect
puts

#
puts " ===== dup and clone ===== "
puts [1,2,3].dup.inspect
puts [1,2,3].clone.inspect
puts 'Hello World!'.dup
puts 'Hello World!'.clone
puts

puts (11 % 2)
puts (9 / 2)
puts (9.0 / 2)
puts (9.fdiv(2))
puts 123 == 123 # true
puts 123.eql?(123) # true
puts 123.eql?(231) # false
puts(!(123 == 123)) # false
seven = "4".to_i + "3".to_i;     puts seven
not_seven = "4" + "3";    puts(not_seven)
one = 1.to_s;    three = 3.to_s
puts one + three + " is surprisingly read as thirteen"
puts "But #{one}#{three} is also an unlucky number!"
puts 

puts "7".to_i
puts 42.to_s
puts 3 < 4
puts 5 > 10
puts 3 == 4 
puts 4 != 5 
puts "Three" == "Three" 
puts

arr = [2, 3, 5, 7]
puts arr[0] # prints 2, the item at position zero
item = arr.shift # remove 2 from the array
puts item # prints 2
puts arr == [3, 5, 7] # prints true; the leading 2 is removed
arr = [2, 3, 5, 7] # reset arr
puts arr[3] # prints 7, the last item of the array
item = arr.pop # remove 7 from array
puts item # prints 7
puts arr.length # prints 3, since there are only three items left
puts arr == [2, 3, 5] # prints true; only the seven is removed
puts [1, 2, 3].shift # 1
puts [1, 2, 3].unshift(7).inspect # [7, 1, 2, 3]
puts
print "2 + 2 is equal to ", 2 + 2
puts
puts "2 + 2 is equal to #{2+2}"
puts


puts " ===== chr and ord ===== "
puts 97.chr
puts 99.chr
puts "a".ord
puts "A".ord
puts "z".ord
puts "Z".ord
puts 97.chr.ord # 97
puts "Z".ord.chr # Z
puts 
puts "b".next 
puts "z".next 
puts "Z".next 
puts 1.next 
puts (-5).next
puts 1.pred # 0
puts (-1).pred # -2
puts "a is equal to : #{"a".ord }" 
puts "z is equal to : " + "z".ord.to_s
puts "The ord for \" \" is \" \".ord which is = " + " ".ord.to_s
puts "32.chr is equal to ' '"
puts

# print "what's your first name? "
# first_name = gets.chomp
# first_name.capitalize!
# puts "your name is #{first_name}"
# puts


# print "Integer Please  "
# user_num = Integer(gets.chomp)
# if user_num < 0
#     puts "that's negative"
# elsif user_num == 0
#     puts "thats zero"
# elsif user_num > 0
#     puts "that's positive"
# end
# puts


# print "word please!  "
# user_input = gets.chomp
# user_input.downcase!

# if user_input.include? "o"
#     user_input.gsub!(/o/,"a")
# else puts "nada para ti"
# end
# puts "word is \"#{user_input}\" "
# puts

# puts "type in your favorite fruit"
# input = gets.chomp
# loop do
#     break if input == "apple"
#         puts "try another fruit"
#         input = gets.chomp
#         #break if input == "apple"
# end
# puts "Yay! I love apples too"
# puts


#19
# puts "Text to redact"
# text = gets.chomp
# text.capitalize!
# puts "words to redact"
# redact = gets.chomp
# redact.downcase!
#     words = text.split (" ")
#     words.each do |xx|
#         if xx != redact
#             print xx + " "
#         else print "REDACTED " 
#         end
#     end
# puts
# puts


# numbers = []
# while numbers.length < 3 do
#     puts "Enter a new number"
#     num = gets.chomp
#     numbers.push("#{num}")
#     #numbers.push(num.to_s)
# end
# print numbers
# puts
# puts

class Pet
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
  attr_accessor :song, :dance
  def bark
    puts "woof!"
  end
end

class Bird < Pet 
  attr_accessor :length
end

a_bird = Bird.new
a_bird.name = "akoo"
a_bird.length = 10

a_dog = Dog.new
a_dog.name = "juba"
a_dog.song = "wow"
a_dog.dance = "hola hola"

puts a_dog.name
puts a_bird.name
puts a_bird.length
puts a_dog.dance
puts a_dog.bark

kofi = Dog.new
puts kofi.bark
puts kofi.class
puts a_dog.class
puts 

puts 2.class
puts "hello".class
puts 3.33.class
# puts puts.class
Kernel.puts "Hello world!"
puts "Test" + "Test"
puts "Test".capitalize
puts "Test".downcase
puts "Test".chop
puts "Test".hash
puts "Test".next
puts "Test".reverse
puts "Test".sum
puts "Test".swapcase
puts "Test".upcase
puts "Test".upcase.reverse
puts "Test".upcase.reverse.next
puts

def hola
  puts "hola! hola!!"
end
puts hola

age = 21
puts "You're a teenager" if age > 12 && age < 20
puts "You're not a teenager" unless age > 12 && age < 20
puts age.between?(12, 20)
puts "You're 21" if age == 21
puts 1 <=> 2
puts 1 <=> 1
puts 1 <=> 0

puts "You're either very young or very old" if age < 10 || age > 80
gender = "male"
puts "You're a working age man" if gender == "male" && (age >= 18 && age <= 65)
#puts "You're a working age man" if gender == "male" && (age.between?(18,65) == true)
puts

3.times do puts "Hey, what's up hello!" end
puts

1.upto(5) { |n| print n}.inspect
puts
"a".upto("e") { |n| print n}.inspect
puts
10.downto(5) { |n| print n}.inspect
puts
"Y".upto("d") { |n| print n}.inspect
puts
0.step(50, 5) { |n| print n}.inspect
puts

puts 10 / 3
puts 10.to_f / 3
puts 5.1.to_i
puts 2.9.to_i
puts 

k = "Test"
y = "String"
puts "Success!" if k + y == "TestString"
puts
puts %q"This is a test for multiple line text such as this poem:
John is my son
So I sent him to school
To learn how to spell John Bull."
puts

#puts = <<eyyo
    #This is a test for multiple line text such as this poem:
    #A lion
    #a lion has a tail
    #it has a big head
    #and a very small waist
#eyyo

#another way of creating arrays from strings is :
print %w{this is a check of the longest word series} 
puts 
puts 

puts "Suhai " * 3
puts 

puts true if 120.chr.eql?("x")
puts  true if "A".sum == 65
puts false if "z".ord != 123
puts "Suhai".sum
puts "S".sum
puts "Suhai".ord # == "S".ord == "S".sum
puts "Yehuza".sum
puts "Yehuza".ord
puts

ab = 10
ac = 40
puts "#{ab} + #{ac} = #{ab + ac}"
puts "10 + 0 is not = #{ab + ac}"
alp = "monkey"
puts "Let the #{alp} out of the cage"
puts "I love my family #{"very " * 3}much"
puts

puts "foobar".sub("bar", "foo")
puts "kakaveli".sub("a", "o")
puts "kakaveli".gsub("a", "o")
puts "paramaribo".sub("a", "")
puts "paramaribo".gsub("a", "")
puts "paramaribo".gsub("a", " ")

puts
puts "Hey what's up hello".sub(/^../, "Hello")
puts "Hey what's up hello".sub(/..$/, "Hello")
puts "We gon' party like".sub(/\A../, "Hello")
puts "We gon' party like".sub(/..\Z/, "Hello")
puts

in_da_club = %q"Go, go, go, go, go go, go, go, shawty
It's your birthday
We gon' party like it's yo birthday
We gon' sip Bacardi like it's your birthday"
puts in_da_club.sub(/\A../, "Hello")
puts
puts in_da_club.sub(/..\Z/, "Hello")
puts

puts "This is a test".scan(/./).inspect
puts "This is a test".scan(/../).inspect
puts "This is a test".scan(/\w\w/).inspect
puts "This is a test".scan(/\w\w\w/).inspect
puts "This is a test".scan(/\w\w\w\w/).inspect
puts "This is a test".scan(/\w\w\w\w\w/).inspect
puts "This3 is123 a98763211 test2".scan(/\w\w\w\w\w/).inspect
puts "T_his3 is1_23 a_98763211 tes_t2".scan(/\w\w\w\w\w\w/).inspect
puts "This? is, a> @test".scan(/\W/).inspect
puts "This? is, a> @?test".scan(/\W\W/).inspect
puts

puts " ===== 1-2-buckle my shoe ===== " 
puts "12bucckle my shoe, 34shut the door".scan(/\d\d/).inspect
puts "12b6u5cckle my shoe, 34s7hut the door".scan(/\d\d\d/).inspect
puts "12bucckle my shoe, 34shut the door".scan(/\D\D\D/).inspect
puts " 12bucckle my shoe, 34shut the door".scan(/\s/).inspect
puts " 12bucckle my shoe, 34shut the door".scan(/\S\S\S\S\S/).inspect
puts


puts " ===== The car cost ===== "
puts "The car costs $1000 and the lunch costs $15".scan(/\d/).inspect
puts "The car costs $1000 and the lunch costs $15".scan(/\d?/).inspect 
puts "The car costs $1000 and the lunch costs $15".scan(/\d+/).inspect
puts "The car costs $1000 and the lunch costs $15".scan(/\d+?/).inspect
puts "The car costs $1000 and the lunch costs $15".scan(/\d*/).inspect
puts
puts "The car costs $1000 and the lunch costs $15".scan(/\d*?/).inspect
puts "The car costs $1000 and the lunch costs $156".scan(/\d{2}/).inspect
puts "The car costs $1000 and the lunch costs $156".scan(/\d{2,}/).inspect
puts "The car costs $1000, $17 or costs $15321 ".scan(/\d{1,3}/).inspect
puts "The car costs $1000 and the lunch costs $15".scan(/\d{1,5}/).inspect
puts

puts "This is a test".scan(/[aeiou]/).inspect
puts "This is a test".scan(/[^aeiou]/).inspect
puts "This is a test".scan(/[a-m]/).inspect
puts "This is a test".scan(/[^a-m]/).inspect
puts "This is a test".scan(/[a-zA-Z]/).inspect
puts "This is a test".scan(/[[:alnum:]]/).inspect
puts
puts "This contains vowels" if "This is a test" =~ /[aeiou]/
puts "This contains no numbers" unless "This is a test" =~ /[0-9]/
puts "This contains vowels" if "This is a test".match(/[aeiou]/)
puts "String has vowels" if "This is a test".match("[aeiou]")
puts "This contains no digits" unless "This is a test".match(/[0-9]/)
puts

aaa = "This is a test".match(/(\w+) (\w+) (\w+)/)
puts aaa[0]
puts aaa[1]
puts aaa[2]
puts aaa[3]
puts
# puts aaa[0] returns the data matched by the entire expression of 
#aaa above. puts aaa[4] yields no result because only the first three 
#words are "matched".

nums = [1,2,3,4]
print nums << 5 
puts
puts nums[0] += 5
nums[2] = "Fish" 
puts nums[2]
puts nums[2] * 2
nums[3] = "Eggo " * 3
puts nums[3]
puts nums[3] * 2
puts nums[0]
puts nums[1]
puts nums[2]
puts nums[3]
puts nums[4]
puts

arr_1 = []
arr_1 << "apricot"
arr_1 << "banana"
arr_1 << "cherry"
arr_1 << "dawadawa"
arr_1 << "eggplant"
arr_1.push("fig")
arr_1.push("garlic")
arr_1.unshift("apple")
print arr_1
puts
puts
puts arr_1.pop
puts arr_1.pop
puts arr_1.pop
puts arr_1.shift
puts arr_1.shift
print arr_1
puts
puts arr_1.size
puts arr_1.length
puts arr_1.join
puts arr_1.join("")
puts arr_1.join(" ")
puts arr_1.join(",")
puts arr_1.join(", ")
puts
puts "This is a test".scan(/\w/).join(",")
puts "This is a test".scan(/\w+/).join(", ")
puts
puts "Short sentence. Another. No more".split(/\./).inspect
puts "Short sentence. Another. No more".split(/\ /).inspect
puts "John is my friend".split(/\ /).inspect
puts "Words   with  lots      of spaces".split(/\s+/).inspect
puts

loca = [1, 2, "test", 4, 5]
puts loca.each { |xx| xx.to_s + "X" }.inspect
puts [1,2,3,4,5].collect { |xx| xx ** 2 }.inspect
puts

ww = [1,2,3]
xx = [1,2,3,4,5]
yy = ["a","b","c","d","e"]
zz = xx + yy
puts (xx + yy).inspect
puts (xx + yy).inspect
puts zz.inspect
puts (xx - ww).inspect
am = xx - ww
puts am.inspect
puts

ap = []
puts "ap is Empty" if ap.empty?

ak = [9,8,7,"a"]
puts ak.include?(9)
puts ak.include?("b")
puts ak.first
puts ak.last
print ak.first(2)
puts
puts ak.last(2).join("_")
puts ak.reverse.inspect
puts 

puts " ===== slice, inject, each_cons ===== "
puts "mississippi".slice(0, 3)
puts "mississippi".slice(2, 5)
puts "mississippi".slice(-4, 3)
puts "mississippi".slice(-1, 6)
puts

puts (1..2).inject(:+)
puts (1..2).inject(:-)
nums = 1..10
puts nums.inject(:+)
puts nums.inject(:-)
puts nums.inject(:*)
puts
#each_cons(p1) public
#Iterates the given block for each array of consecutive <n> elements. 
#If no block is given, returns an enumerator.
nums.each_cons(3) {|a| p a}
puts
nums.each_cons(3) {|a| print "#{a.inject(:+)}; " }
puts
# Sum some numbers
puts (5..10).reduce(:+)                            #=> 45
# Same using a block and inject
puts (5..10).inject {|sum, n| sum + n }            #=> 45
# Multiply some numbers
puts (5..10).reduce(:*)                         #=> 151200
# Same using a block
puts (5..10).inject(1) {|product, n| product * n } #=> 151200
(1..10).each_cons(3) {|a| puts a.inject(:-)}
puts
puts nums.inject(:/).to_f
puts
# find the longest word
longest = %w{ cat sheep bear }.inject do |memo, word|
   memo.length > word.length ? memo : word
end
puts longest 
puts

puts " ===== making Arrays and Strings ====="
puts %w[albatross dog horse].inspect
puts %w(albatross dog horse).inspect
puts

# making a string
puts %q[albatross dog horse].inspect
puts %q(albatross dog horse).inspect
puts

#.each_char and .each_index
puts " ===== each_char  and each_index ====="
"hello".each_char {|c| print c }.inspect
puts
"hello".split("").each_index {|c| print c, ' '}.inspect
puts
puts 

puts " ===== all? ====="
puts %w[ant bear cat].inspect
puts %w[ant bear cat].all? { |word| word.length >= 3 } # true
puts %w[ant bear cat].all? { |word| word.length >= 4 } # false
puts 

puts " ===== any? ====="
puts %w[ant bear cat].any? { |word| word.length >= 3 } # true
puts %w[ant bear cat].any? { |word| word.length >= 5 } # false
puts

puts " ===== none? ====="
puts %w[ant bear cat].none? { |word| word.length >= 3 } # false
puts %w[ant bear cat].none? { |word| word.length >= 5 } # true
puts 

puts " ===== one? ====="
puts %w[ant bear cat].one? { |word| word.length >= 4 } # true
puts %w[ant cat abcdefghijk 1234567890].one? { |word| word.length >= 9 } # false
puts %w[ant bears cat].one? { |word| word.length == 5 } # true
puts
puts " ===== reject ====="
puts %w[ant bear cat ox].reject {|word| word.length > 3 }.inspect # 
puts %w[ant bear cat ox].reject {|word| word.length < 3 }.inspect #
puts

puts " ===== member ====="
puts %w(cat dog sheep).inspect
puts %q(cat dog sheep).inspect
puts %w(cat dog sheep).member?("dog")
puts %q(cat dog sheep).include?("sheep")
#puts %q(cat dog sheep).member?("sheep") #=> invalid for '.member?'
puts

puts %w(1 2 3 4 5).inspect # ["1", "2", "3", "4", "5"]
puts %w(1 2 3 4 5).member?(5) # false
puts %w(1 2 3 4 5).member?(5.to_s) # true
puts [1, 2, 3, 4, 5].member?(3) # true
puts [1, 2, 3, 4, 5].include?(3) # true
puts 

puts " ===== max,  max_by ====="
swy = %w(albatross dog horse ox elk ram zebra)
puts swy.max #regualr max    
puts swy.max { |aa, bb| aa.length <=> bb.length } # max by length
puts swy.max(2).inspect # regualr max 2
puts swy.max(2) {|aa, bb| aa.length <=> bb.length}.inspect # max 2 by length
puts swy.max_by {|m| m.length } # max by length
puts swy.max_by(3) {|m| m.length }.inspect # max 3 by length
puts

puts " ===== min,  min_by ====="
puts swy.min        
puts swy.min { |aa, bb| aa.length <=> bb.length }
puts swy.min(2).inspect
puts swy.min(2) {|aa, bb| aa.length <=> bb.length}.inspect 
puts swy.min_by {|m| m.length }
puts swy.min_by(3) {|m| m.length }.inspect
puts

puts " ===== minmax ====="
puts swy.minmax.inspect         
puts swy.minmax { |aa, bb| aa.length <=> bb.length }.inspect
puts swy.minmax_by {|x| x.length }.inspect
puts

puts " ===== # Tests 4 Strings ===== "
a1 = "abcde"
b1 = a1.split("")
puts b1.inspect
puts b1.join(" ")
puts

a2 = "john is my son"
b2 = a2.split(" ")
puts b2.inspect
puts b2.join(" ")
puts

a3 = "6,7,8,9"
b3 = a3.split(",")
puts b3.inspect
puts b3.join(" ")
puts

a4 = "a lion, a tiger, a bear"
b4 = a4.split(" ")
puts b4.inspect
puts b4.join(" ")
puts

a5 = "California  , Oregon, Washington,    Idaho" # note the multi-space after WA and before ID
b5 = a5.split(",") # This splits it at the comma to forma an array, but still leaves the spaces
puts b5.inspect
c1 = b5.join(" ") # This takes b5 and joins it to form a string with its content separated by spaces 
puts c1.inspect
c2 = c1.split(" ") # This takes  c1 and splits it at the spaces to forn an array
puts c2.inspect
puts


puts " ===== # Tests 4 Arrays ===== "
a6 = [1, 2, 3, 4, 5]
b6a = a6.join("")
puts b6a.inspect
b6b = a6.join(" ")
puts b6b.inspect
b6c = a6.join(",")
puts b6c.inspect
b6d = a6.join(", ")
puts b6d.inspect
puts 

a7 = ["m", "n", "o", "p"]
b7a = a7.join("")
puts b7a.inspect
b7b = a7.join(" ")
puts b7b.inspect
b7c = a7.join(",")
puts b7c.inspect
b7d = a7.join(", ")
puts b7d.inspect
puts 

a8 = ["q", "r", "s", "t"]
b8a = a8.join("")
puts b8a.inspect
b8b = a8.join(" ")
puts b8b.inspect
b8c = a8.join(",")
puts b8c.inspect
b8d = a8.join(", ")
puts b8d.inspect
puts

puts " ===== Converting Strings to Arrays ===== "
puts "m,n,o,p,q".split(",").inspect
p "m,n,o,p,q".split(",")
puts "m,n,o,p,q".split(",")

puts "0,1,2,3,4".split(",").inspect
puts "0,1,2,3,4".split(",").map(&:to_i).inspect
p "0,1,2,3,4".split(",").map(&:to_i)
puts "MNOPQ".split("").inspect #note what happens when string includes spaces between words
p "MNOPQ".split("")
puts "56789".split("").inspect
puts "56789".split("").map(&:to_i).inspect
p "56789".split("").map(&:to_i)
puts 


puts " ===== Converting Arrays to Strings ===== "
#puts ["ab","cd","ef","gh","ij"].join(",")
puts ["ab","cd","ef","gh","ij"].join(",")
puts ["ab","cd","ef","gh","ij"].join(",").inspect #note this and below
# p ["ab","cd","ef","gh","ij"].join(",") #note this and above
puts ["AB","CD","EF","GH","IJ"].map(&:inspect).join(',') #don't like this atm
# p ["AB","CD","EF","GH","IJ"].map(&:inspect).join(',') #don't really like this atm
puts ["50", "51", "52", "53", "54"]*","
# p ["50", "51", "52", "53", "54"]*","
puts [90, 91, 92, 93, 94]*";"
# p [90, 91, 92, 93, 94]*","
puts

puts " ===== # shift and shift(n) ===== "
arg1 = [10,20,30,40,50]
puts arg1.shift.inspect  
puts arg1.inspect         
puts
arg2 = [ "-m", "-n", "-o", "-p", "-q", "-r", "-s", "-t" ]
puts arg2.shift(2).inspect 
puts arg2.shift(3).inspect
puts arg2.inspect 
puts

puts " ===== Testing Pure Strings ===== "
george = "washington"
puts george.include?("t")
puts george.include?("e")
puts george.include?("W") # false unless 'W' is downcase-d to "W".downcase
puts

james = "madison the great 10"
puts james.include?("d")
puts james.include?(" ")
puts james.include?("z")
puts
puts james.include?("th")
puts james.include?("ad")
puts james.include?("thad")
puts
puts james.include?("10")
puts james.include?("1")
puts james.include?(2.to_s)
puts james.include?(001.to_s)
puts

string1 = "abcdefgh"
new_string1 = ""
ind = 3
new_string1 << string1[(ind-2)..(ind+3)]
puts new_string1
puts new_string1.split("").inspect # converts to an array
puts new_string1.include?("d")
puts

puts " ===== Testing Pure Arrays ===== "
adam = [1,2,3,4,5]
puts adam.include?(2)
puts adam.include?(21)
puts
eve = ["apple","cherry","plum","strawberry"]
puts eve.include?("apple")
puts eve.include?("orange")
puts eve.include?("berry")
puts

array1 = [0,1,2,3,4,"5",6,7,"8",9,10,11,12,13,14,15,16]
puts array1.include?(15)
new_array = []
ind = 6
new_array << array1[(ind-3)..(ind+3)]
puts new_array.inspect
puts new_array.include?([3, 4, "5", 6, 7, "8", 9])
newer_array = new_array.flatten!
puts newer_array.inspect
puts
puts newer_array.include?("5")
puts newer_array.include?("4")
puts newer_array.include?(7)
puts newer_array.include?(2)
puts

puts " ===== Testing Array => String mix-up ===== "
array1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
string = ""
ind = 4
string << array1[(ind-3)..(ind+3)].to_s
puts string
puts string.include?("3")
puts string.include?(3.to_s)
puts string.include?("9")
puts
puts

puts " ===== # index ===== "
ab = [ "a", "c", "b", "c" ]
puts ab.index("b") #2
puts ab.index("z").inspect # nil
puts ab.index { |m| m == "c" } # 1
puts

puts " ===== # insert ===== "
ac = %w{ a b c d }
puts ac.inspect
puts ac.insert(2, 99).inspect # ["a", "b", 99, "c", "d"]
puts ac.insert(-2, 1, 2, 3).inspect # ["a", "b", 99, "c", 1, 2, 3, "d"]
puts 

puts " ===== # replace ===== "
ad = [ "a", "b", "c", "d", "e" ]
puts ad.inspect
ad.replace(["q", "r", 4, "t", 13, 11, "w", "x", "y", 7 ])
puts ad.inspect
puts
# other ways of replacing part, but not all, of an array or string are below
ad[ad.index(4)] = "A"
puts ad.inspect
ad[ad.index("w")] = "B"
puts ad.inspect
puts
puts ad.map{ |m| m == 11 ? "45" : m }.inspect
puts ad.map{ |m| m == "x" ? 23 : m }.inspect
puts
puts ad.map{ |m| m == 7 ? 5 : m }.inspect
puts ad.map{ |r| r == "q" ? "m" : r }.inspect
puts

puts " ===== # join ===== "
puts [ "a", "b", "c" ].join("-")
puts

puts " ===== # keep_if ===== "
ae = %w{ghijklmnop}
puts ae.keep_if { |v| v =~ /[aeiou]/ }
puts ae.keep_if { |v| v =~ /[abcde]/ } # not kept because abcde isnt't in 'ae'
puts ae.inspect
puts
puts " ===== # 'collect' and 'map.with_index' ===== "
af = [ "a", "b", "c", "d" ]
puts af.collect { |m| m + "!" }.inspect
puts af.map.with_index{ |m, n| m * n }.inspect 
puts af.inspect
puts

puts " ===== #rotate(count=1) ===== " 
#Returns a new array by rotating self so that the element at 
#count is the first element of the new array.
#If count is negative then it rotates in the opposite direction, 
#starting from the end of self where -1 is the last element.
ag = [ "a", "b", "c", "d" ]
puts ag.rotate.inspect # = ["b", "c", "d", "a"]
puts ag.inspect # = ["a", "b", "c", "d"]
puts ag.rotate(2).inspect # = ["c", "d", "a", "b"]
puts ag.rotate(0).inspect # ["a", "b", "c", "d"]
puts ag.rotate(-3).inspect # = ["b", "c", "d", "a"]
puts

puts " ===== #rotate!(count=1) ===== "
#Rotates self in place so that the element at count comes first, 
#and returns self.
#If count is negative then it rotates in the opposite direction, 
#starting from the end of the array where -1 is the last element.
ah = [ "a", "b", "c", "d" ]
puts ah.rotate!.inspect # = ["b", "c", "d", "a"]
puts ah.inspect # = ["b", "c", "d", "a"]
puts ah.rotate!(2).inspect # = ["d", "a", "b", "c"]
puts ah.rotate!(-3).inspect # = ["a", "b", "c", "d"]
puts 

puts " ===== # Sample ===== "
aj = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
puts aj.sample.inspect         #=> 7
puts aj.sample(4).inspect      #=> [6, 4, 2, 5]
puts


an_arr = [1, 2, 3, 4, 5]
some_arr = ["a", "b", "c", "d", "e"]
#a_string = "56789"
a_string = "56789".split("")
#some_string = "aeiou"
some_string = "aeiou".split("")
# ".each" and ".each_with_index" work on arrays but not strings.
# Take a look at "an_arr" and "some_arr" below at work 
# But note that "a_string" and "some_string" don't work without modification
puts " ===== an_arr ===== "
an_arr.each do |element|
    # puts element
end
puts

an_arr.each_with_index do |elmnt, indx|
    puts "#{elmnt}: #{indx}"
end
puts

puts " ===== some_arr ===== "
some_arr.each do |element|
    # puts element
end
puts 

some_arr.each_with_index do |elmnt, indx|
    puts "#{elmnt}: #{indx}"
end
puts

puts " ===== a_string ===== "
a_string.each do |element|
    # puts element
end
puts
a_string.each_with_index do |elmnt, indx|
    puts "#{elmnt}: #{indx}"
end
puts

puts " ===== some_strings ===== "
some_arr.each do |element|
    # puts element
end
puts
some_string.each_with_index do |elmnt, indx|
    puts "#{elmnt}: #{indx}"
end
puts

puts " ===== Look at 'flatten' and 'faltten!' at work here ===== " 
jon = [ 1, 2, 3 ] # [1, 2, 3]
bull = [ 4, 5, 6, [7, 8] ] # [4, 5, 6, [7, 8]]
don1 = [ jon, bull] # [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
puts don1.inspect
puts don1.flatten.inspect  
don2 = [ jon, bull, 9, 10 ] # [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
puts don2.flatten.inspect # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
pan = [ 1, 2, [3, 4, 5, [6, 7, [8, 9]]]]
puts pan.flatten(1).inspect # [ 1, 2, 3, 4, 5, [6, 7, [8, 9]]]
puts pan.flatten(2).inspect # [ 1, 2, 3, 4, 5, 6, 7, [8, 9]]
puts

andy = [ 1, 2, [3, [4, 5] ] ]
puts andy.flatten!.inspect # [1, 2, 3, 4, 5]
puts andy.flatten!.inspect # This return 'nil' because andy is already flatten-ed
puts andy.inspect # andy is permanently from 'andy.flatten!'
sam = [ 1, 2, [3, [4, 5] ] ]
puts sam.flatten!(1).inspect #=> [1, 2, 3, [4, 5]]
puts

array = []
#array = nil
str1 = "a,b,c"
array << str1.split(/,/)
puts array.inspect  #  [["a", "b", "c"]] 

str2 = 'x,y,z'
array << str2.split(/,/)
puts array.inspect # == [["a", "b", "c"], ["x", "y", "z"]] 
puts array.flatten!.inspect # == ["a", "b", "c", "x", "y", "z"]
puts


puts " ===== MATHEMATICS ===== "
puts 7 / 2
puts 7.0 / 2
puts 5 ** 2
puts 9 ** 0.5
puts 8 ** 0.5
puts

puts 365 % 7
puts 366 % 7
puts 365.25 % 7
puts (5 - 2).abs
puts (2 - 5).abs
puts

puts rand
puts rand
puts rand
puts rand(100)
puts rand(100)
puts rand (100)
puts

puts rand(1)
puts rand(1)
puts rand(1)
puts rand(2)
puts rand(5)
puts rand(99995437856979556895)
puts 

puts %q(The weatherman said there is a ) + "#{rand(101)}%" + %q( chance of rain but you can never trust a weatherman.)
puts

srand 10
puts rand(9)
puts rand(9)
puts rand(9)
puts rand(9)
puts 
#srand causes the same random numbers to be generated in the 
#same sequence if "srand-ed" with the same number; "10" in this
#case. to undo srand, you just do "srand 0" and every subsequent 
#rand would revert to normal.
srand 10
puts rand(9)
puts rand(9)
puts rand(9)
puts rand(9)
puts ""
srand 0
puts rand(9)
puts rand(9)
puts rand(9)
puts rand(9)
puts

puts 5.integer? # true
puts 5.is_a?(Integer) # true
puts 2.pred # 1
puts 2.next # 3
puts 3.even? # false
puts
puts 3.odd? # true
puts 4.6.round
puts 4.5.round
puts 4.4.round
puts
puts 4.65837.round(3)
puts 4.65837.round(1)
puts 4.65837.floor
puts 4.65837.ceil
puts "23".to_i
#puts "23".to_int
puts
puts Math::PI
puts Math::E
puts Math.cos(Math::PI/3)
puts Math.tan(Math::PI/4) 
puts Math.log(Math::E**2)
puts (1 + Math.sqrt(5))/2
puts

# Checking for Even and Odd numbers
puts [1,2,3,4,5].select {|n|  n.even?}.inspect
puts [1,2,3,4,5].select {|n|  n.odd?}.inspect
puts
puts rand # generates a random float >= 0.0 but < 1.0
puts rand(2) # generates a random integer >= 0 but < 2
puts rand(5) # generates a random integer >= 0 but < 5
puts (1900 + rand(81)).to_s # generates a random year between 1900 and 1980
puts rand(1900..1980) # generates a random year between 1900 and 1980
puts "The year was #{1900 + rand(81)}"
puts (1900..1980).to_a[rand(80)]
puts [*1900..1980].sample
puts (1900..1980).to_a.shuffle.first
puts 1 + rand(6)
puts (2 + rand(6) + rand(6))
puts ""
puts eval 1.to_s + 1.to_s
puts

#
puts ({ :name => 'Fred', :age => 10 }).to_s
def circumference_of_circle(radius)
  2 * Pi * radius
end
Pi = 3.141592
puts circumference_of_circle(10)
# The method below returns a random capital letter
def random
  (rand(26) + 65).chr
end

# Mix-Ins
module UsefulFeatures
  def class_name
    self.class.to_s
  end
end
class Merson
  include UsefulFeatures
end
x = Merson.new
puts x.class_name

#
module AnotherModule
  def do_stuff
    puts "This is a test"
  end
end
include AnotherModule
do_stuff
puts AnotherModule.do_stuff

# Enumerables
my_array = %w{this is a test of the longest word check}
longest_word = ''
my_array.each do |word|
  longest_word = word if longest_word.length < word.length
end
puts longest_word
puts

my_array = %w{10 56 92 3 49 588 18}
highest_number = 0
my_array.each do |n|
  n = n.to_i
  highest_number = n if n > highest_number
end
puts highest_number
puts

puts [1, 2, 3, 4].collect { |m| m.to_s + "x" }.inspect
puts [1, 2, 3, 4].detect { |m| m.between?(2,3) }.inspect
puts [1, 2, 3, 4].select { |m| m.between?(2,3) }.inspect
puts

puts [4,1,3,2].sort.inspect
puts [1,2,3,4].max
puts [1,2,3,4].min
puts (1..10).to_a

vowels = %w{a e i o u}
puts vowels.collect { |m| m + "x" }.inspect
puts vowels.detect { |m| m > "j" }
puts vowels.select { |m| m > "j" }.inspect
puts vowels.sort.inspect
puts vowels.max
puts

# Comparable
puts 1 <=> 2 # -1
puts 1 <=> 1 # 0
puts 2 <=> 1 # 1
puts 
class Song
  include Comparable
  attr_accessor :length
  def <=>(other)
    @length <=> other.length
  end
  def initialize(song_name, length)
  	@song_name = song_name
    @length = length
  end
end
a = Song.new('Rock around the clock', 143)
b = Song.new('Bohemian Rhapsody', 544)
c = Song.new('Minute Waltz', 60)
puts a < b 
puts b < c 
puts a.between?(b,c)
puts

puts 3.between?(2, 4)
puts 3.between?(2, 3)
puts 3.between?(1, 2)
puts '4'.between?('2', '3')
puts 'e'.between?('b', 'q')
puts

puts "B" > "A" # alphabets value increases from "a" to "z"
puts "Z" > "B"
puts "a" > "Z" # any lowercase is greater than any uppercase
puts "b" > "a" # "A" has the least value and "z" has the highest value
puts "z" > "x"
puts "A < B < Y < Z < a < c < m < z"
puts
puts "cat" < "dog"
puts "cat" < "Dog"
puts "Cat" < "Dog"
puts "ant" < "Zoo"
puts "ant" > "Zoo"
puts 

2.times do
  puts "hi"
end
 
lineWidth = 40
str = '--> text <--'
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth
puts str.ljust(lineWidth*0.5) + str.rjust(lineWidth*0.5)
puts

iAmChris  = true
iAmPurple = false
iLikeFood = true
iEatRocks = false
puts (iAmChris  and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmPurple and iLikeFood)
puts (iAmPurple and iEatRocks)
puts
puts (iAmChris  or iLikeFood)
puts (iLikeFood or iEatRocks)
puts (iAmPurple or iLikeFood)
puts (iAmPurple or iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmChris )

puts
colorArray = []  # same as Array.new
colorHash  = {}  # same as Hash.new
colorArray[0]         = 'red'
colorArray[1]         = 'green'
colorArray[2]         = 'blue'
colorHash['strings']  = 'red'
colorHash['numbers']  = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |m|
  puts m
end
puts

colorHash.each do |m, n|
  puts m + ':  ' + n
end
puts

kl = (0..10).map do |m|
  next :q if m % 4 == 0
  m
end
puts kl.inspect
puts


def testing(target, method)
  (0..100).each do |x|
    (0..100).each do |y|
      if x * y == target
        print "[#{x} * #{y}]:" + (x * y).to_s + "  "
        break if method == "break"
        return if method == "return"
      end
    end 
  end
end
puts testing(5, "break")
puts testing(5, "return")
puts testing(3, "break")
puts testing(3, "return")
puts

puts [1,2].product([10,20]).inspect
puts [1,2].product([3,4],[5,6]).inspect
puts [1,2].product(["a","b"],[3,4],["c","d"]).inspect
puts

puts " ===== zipping ===== "
a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
puts [1,2,3].zip(a, b).inspect # [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
puts [1,2].zip(a,b).inspect # [[1, 4, 7], [2, 5, 8]]
puts a.zip([1,2],[8]).inspect # [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
puts 

A = [1, 2, 3, 4, 5]
B = [4, 5, 6, 7, 8]
union = A | B
isect = A & B
diff1  = A - B
diff2  = B - A
sdiff = (A - B) | (B - A)
puts "Union of arrays: #{union} or #{A + B}"
puts "Intersection of arrays: #{isect}"
puts "Difference of arrays A - B: #{diff1}"
puts "Difference of arrays B - A: #{diff2}"    
puts "Symmetric difference of arrays: #{sdiff}" 
puts

integers = [1, 2, 3, 4, 5]
animals = %w( donkey dog cat dolphin eagle )
weights = Array.new
weights << 4.55 << 3.22 << 3.55 << 8.55 << 3.23
puts integers.inspect
puts animals.inspect
puts weights.inspect
puts

def my_uniq(arr)
  new_arr = []
  arr.each do |i|
    new_arr << i if !new_arr.include?(i)
  end
  new_arr.sort
end
hola = [1,4,3,2,1,6,45,2,4,6,8,9,0,3,2,1,2,3,4,5,6,7,8,9,10,12]
puts my_uniq(hola).inspect
puts

def two_sum(nums)
  out_put = []
    nums.each do |x|
      nums.each do |y|
        out_put << "[#{x}:#{y}]" if x + y == 0
      end
    end
  out_put    
end
plav = [-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9]
puts two_sum(plav)
puts

puts " ===== matrix transpose ===== "
# def my_transpose(arr)
#     fin_new_arr = []
#     new_arr = []
#     i = 0
#     while i < arr.length
#         arr.each do |x|
#         new_arr << x[i]
#         end
#     fin_new_arr << new_arr
#     i += 1
#     end
#     fin_new_arr
# end
# doti = [[1,2,3],["a","b","c"],[7,8,9]]
# print my_transpose(doti)

def my_transpose(matrix)
  transposed = []
  matrix[0].size.times do
    transposed << []
  end
  row = 0
  while row < transposed.size
    column = 0
    while column < matrix.size
      transposed[row] << matrix[column][row]
      column += 1
    end
    row += 1
  end
  transposed
end
row_oriented = [[1, 2, 3], ["a","b","c"], [7, 8, 9]]
araba = [[1, "a", 7], [2, "b", 8], [3, "c", 9]]
puts my_transpose(row_oriented).inspect #[[1, "a", 7], [2, "b", 8], [3, "c", 9]]
puts my_transpose(araba).inspect # [[1, 2, 3], ["a", "b", "c"], [7, 8, 9]]
puts


puts " ===== map ====="
puts [1, 2, 3].map { |n| n * n }.inspect #=> [1, 4, 9]
names = ['daniel', 'edmund', 'Paul']
puts names.map {|nam| nam.capitalize }.inspect
puts names.map.with_index {|nam, indx| nam + indx.to_s }.inspect
puts

puts " ===== select ====="
puts [1, 2, 3, 4, 5].select { |n|  n.even?  }.inspect
puts %w{ a b c d e f }.select { |m| m =~ /[aeiou]/ }.inspect
puts

puts " ===== flat_map ====="
puts [1, 2, 3, 4].map {|e| [e, -e]}.inspect 
puts [1, 2, 3, 4].flat_map {|e| [e, -e]}.inspect
puts [[1, 2], [3, 4]].map {|e| e + [100]}.inspect
puts [[1, 2], [3, 4]].flat_map {|e| e + [100]}.inspect
puts

# cycle
puts " ===== cycle ====="
puts ["john", "bull"].cycle(2) {|m|  print m + " "}.inspect
#puts ["john", "bull"].cycle {|x| puts x + " "} # will run forever
puts

# '.detect' or '.find' returns the first that satifies block
puts " ===== detect,  find, find_all, find_index ====="
puts (1..11).detect {|ii| ii % 5 == 0} # 5
puts (1..10).detect {|ii| ii % 5 == 0 && ii % 7 == 0}   #=> nil
puts (1..100).find {|ii| ii % 5 == 0 && ii % 7 == 0}   #=> 35
puts (1..10).find_all { |ii|  ii % 3 == 0 }.inspect # [3, 6, 9]
puts (1..100).find_index(50).inspect # 49
puts (1..100).find_index {|ii| ii % 5 == 0 and ii % 6 == 0}.inspect # 29
puts (1..10).select { |ii|  ii.even? }.inspect # [2, 4, 6, 8, 10]
puts

puts " ===== drop, drop_while ====="
puts [5, 4, 3, 2, 1].drop(3).inspect
puts %w(r s t u v).drop(2).inspect
#puts %q(rstuv).drop(3).inspect #=> invalid
# '.drop_while' drops the first element(s) that satifies block, and
# if the first element fails block then self is returned
puts [1, 2, 3, 4, 5, 2, 0].drop_while { |ii| ii < 3 }.inspect
puts [5,7,4,3,2,1].drop_while{ |ii| ii.odd? }.inspect
puts [5,4,3,2,1].drop_while{ |ii| ii.even? }.inspect #returns self
puts


puts " ===== each_with_object ====="
puts (1..10).each_with_object([]) { |m, obj| obj << m * 2 }.inspect # [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
puts (1..10).map { |m| m * 2 }.inspect # [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
puts 

puts " ===== break, exit, and return ===== "
def testing(target, method)
  ["a", "b", "c"].each do |x|
    (1..5).each do |y|
    puts x * y
     if x * y == target
       break if method == "break"
       exit if method == "exit"
       return if method == "return"
     end
    end 
  end
end
testing("aaa", "break")
puts
# testing("aaa", "exit") # This would exit the entire ruby script
testing("aaa", "return")
puts

puts " ===== select, include, any?, is_a? ===== "
nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
an_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
new_string = ''
ind = 4
new_string << an_array[(ind-3)..(ind+3)].to_s
puts new_string.include?("3")
puts nums.select {|m| m % 3 == 0}.inspect
puts nums.include?(5)
puts nums.include?(15)
puts
puts nums.any? {|m| m % 2 == 0}
puts nums.any? {|m| m % 11 == 0}
puts "string".is_a?(String) 
puts "string".is_a?(Object)
puts 1.is_a?(Integer)
puts 1.is_a?(Object)
puts 1.is_a?(Numeric)
puts

puts " ===== Primes, Math, index, etc ===== "
require "prime" # needed in order for Prime to be activated
some_primes = []
Prime.each(30) { |prime| some_primes << prime }
puts some_primes.inspect
puts (Prime.first 5).inspect # puts the first five primes starting from 2
puts Prime.entries(30).inspect # puts all prines less than 30
puts Prime.prime?(2) # puts true if 2 is prime. otherwise puts false
puts

require "mathn" # needed in order for some math computations
puts Math.sqrt(4/9)     # => 2 over 3
puts Math.sqrt(4.0/9.0) # => 0.666666666666667
puts Math.sqrt(- 4/9) # => Error message if 'math' hasn't been required
puts 8.lcm(5)
puts 8.lcm(2)
puts 8.lcm(3)
#
puts 24.gcd(8)
puts 24.gcd(20)
puts 24.gcd(5)
puts

puts [1, 2, 3].index(1)
puts [1, 2, 3].index(2)
puts [1, 2, 3].index(3)
puts [1, 2, 3].index(4)
puts "Couldn't find answer" if [1, 2, 3].index(42).nil?
puts (0..10).select {|m| m % 2 == 0}.reverse.reverse.inspect
puts

puts " ===== string and array theory ===== "
puts "catamaran".scan(/\w/).inspect
puts "catamaran".scan(/./).inspect
puts
puts [1,2,3,4].inspect
puts "suhai"
puts "suhai".inspect
p "suhai"
p 98
puts 98
puts 1 + 2
p 1 + 3
puts
puts %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
puts %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
puts %w[ant bear cat].any? { |word| word.length >= 3 } #=> true
puts %w[ant bear cat].any? { |word| word.length >= 4 } #=> true
puts 
puts [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk {|n| n.even?}.each {|resp, argu| p [resp, argu]}.inspect
puts

#values_at
a = %w{ a b c d e f }
p a.values_at(1, 3, 5)          # => ["b", "d", "f"]
p a.values_at(1, 3, 5, 7)       # => ["b", "d", "f", nil]
p a.values_at(-1, -2, -2, -7)   # => ["f", "e", "e", nil]
p a.values_at(4..6, 3...6)      # => ["e", "f", nil, "d", "e", "f"]
puts


puts " ===== Classes, Blocks, and Yield ===== " 
# 
random_string = 'hey whats up hello'
puts random_string.split.map(&:capitalize).inspect

class String
  def capp
    self.split.map(&:capitalize).inspect
  end
end
puts random_string.capp

class Array
  def summa
    self.reduce(:+)
  end
end
puts [1, 2, 3, 4, 5].summa
puts

class SomeClass  # For unknown reasons this runs even before being called
  puts 'Just started class S'  
  puts self  
  module M  
    puts 'Nested module S::M'  
    puts self  
  end  
  puts 'Back in the outer level of S'  
  puts self  
end
puts

class Soy  # For unknown reasons this runs even before being called
  puts 'Just started class'  
  puts self  
  module Beans  
    puts 'i just nested a module'  
    puts self  
  end  
  puts 'Back in the outer level of class'  
  puts self  
end
puts

def one_two_three
  yield 1
  yield 2
  yield 3
end
one_two_three { |number| puts number * 10 } # 10, 20, 30
puts 

def explicit_block(&block)
  block.call # Same as yield
end
explicit_block { puts "Explicit block called" }
puts

def do_something_with_block
  return "No block given" unless block_given?
  yield 'here we go again'
end
puts do_something_with_block
puts do_something_with_block { |m| puts m}


def print_list(array, first = 1) 
  counter = first
  array.each do |item|
    # puts "#{counter}. #{item}"
    puts "#{yield counter}. #{item}"
    counter = counter.next
  end
end
print_list(["Ruby", "Python", "C"]) { |n| "#{n}"}
puts
print_list(["Ruby", "Python", "C"]) { |n| "(#{n})"}
puts
print_list(["Ruby", "Python", "C"]) { |n| "<#{n}>"}
puts
print_list(["Ruby", "Python", "C"]) { |n| "[#{n}]"}
puts
puts

print_list( ["alpha","beta","gamma"], 1 ) { |n| "[#{100*n}]:" }
puts
print_list(["a","b","c"], 'A') { |n| "<#{n}>"}
puts
print_list(["john","peter","paul"], 'a') { |n| "<#{n}>"}
puts
print_list(["5","10","15"], 'y') { |n| "<#{n}>"}
puts


class Array
  def new_collect
    results = []
    0.upto(self.length - 1) do |index|
      results << yield(self[index])
    end
    results
  end
end
puts [9, 8, 7].new_collect { |m| m + 1 }.inspect
puts

days = ["mondaz", "tuesday", "wednesday", "thursday", "fridaz"]  
puts days.select { |m| m.match(/^t/) }.inspect # ["tuesday", "thursday"]
puts days.select { |m| m.match(/z$/) }.inspect # ["mondaz", "fridaz"]
puts days.sort { |m, n| m.size <=> n.size }.inspect
random_proc = Proc.new { |m| puts "#{m ** 2}! " }
puts [1,2,3].each(&random_proc).inspect #[1,4,9]
puts

def foo(x)
  puts "OK: called as foo(#{x.inspect})"
  yield("A gift from foo!") if block_given?
end
foo(10) # OK: called as foo(10)
foo(123) {|m| puts "BLOCK: #{m} How nice =)"}
# OK: called as foo(123)
# BLOCK: A gift from foo! How nice =)
puts 

def bar(x, &block)
  puts "OK: called as bar(#{x.inspect})"
  block.call("A gift from bar!") if block
end
bar(10) # OK: called as bar(10)
bar(123) {|m| puts "BLOCK: #{m} How nice =)"}
# OK: called as bar(123)
# BLOCK: A gift from bar! How nice =)
puts 

def test
  yield 5
  puts "You are in the method test"
  yield 100
end
test {|i| puts "You are in the block #{i}"}
puts

def upp(anarg)
  yield(anarg)
end
upp("gnirts a si ereH"){|m| m.reverse!; puts(m)}
puts

def meditate
  print "Today we will practice zazen"
  yield # This indicates the method is expecting a block
end 
# meditate
meditate { print " for 40 minutes." }
puts
puts 

def add_to_http
  "http://#{yield}"
end
puts add_to_http { "www.example.com" }
puts add_to_http { "www.tkldmonkey.com" }
puts


puts " ===== Lamdas and Procs ===== " 
# Here is a summary of how procs and lambdas are different:
# 1. Lambdas are defined with -> {} and procs with Proc.new {}.
# 2. Procs return from the current method, while lambdas return from the lambda itself.
# 3. Procs don’t care about the correct number of arguments, while lambdas will raise an exception.
# Taking a look at this list, we can see that lambdas are a lot closer to a regular method than procs are.
# Procs & lambdas also have another special attribute. When you create a Ruby proc, it captures the current execution scope with it. This concept, which is sometimes called closure, means that a proc will carry with it values like local variables and methods from the context where it was defined.
# They don’t carry the actual values, but a reference to them, so if the variables change after the proc is created, the proc will always have the latest version.
def a_method
 puts lambda { return "we just returned from the block" }.call
 return "we just returned from the calling method"
end
puts a_method
puts 

def the_method
 puts Proc.new { return "we just returned from the block" }.call
 return "we just returned from the calling method"
end
puts the_method
puts

lambda_1 = -> { puts "This is one way of createing a lambda" }
lambda_2 = lambda { puts "This is another way of creating a lambda" }
lambda_1.call
lambda_2.call
times_two = ->(m) { m * 2 }
puts times_two.call(10) # 20
times_three = lambda { |m| m * 3 }
puts times_three.call(10) # 30
puts 

square_proc = proc { |num| puts num * num }
square_proc.call(5)
proc_1 = Proc.new { |m, n| puts "I don't care about arguments!" }
proc_1.call # "I don't care about arguments!"
proc_2 = Proc.new { |m| puts "Neither do I!" }
proc_2.call # Neither do I!
proc_3 = Proc.new { puts "same here, guys!" }
proc_3.call # same here, guys!
puts 


my_lambda = -> { return 1 }
puts "Lambda result: #{my_lambda.call}" #Lambda result: 1
puts
# my_proc = Proc.new { return 1 }
# puts "Proc result: #{my_proc.call}" # Should raise a (LocalJumpError) exception
# This is because if the proc was inside a method, then calling return would be equivalent to returning from that method. For example:
def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end
puts call_proc # Prints "Before proc" but not "After proc"
puts 

def call_proc(my_proc)
  count = 500
  my_proc.call
end
count = 1
my_proc = Proc.new { puts count }
puts call_proc(my_proc) # 1 but not 500


def return_binding
  foo = 100
  binding
end
# Foo is available thanks to the binding, even though we are outside of the method where it was defined.
puts return_binding.class
puts return_binding.eval('foo')
# If you try to print foo directly you will get an error.
# The reason is that foo was never defined outside of the method.
puts 

short_lambda = ->(aa, bb) { aa + bb }
puts short_lambda.call(2, 3)
long_lambda = lambda { |aa, bb| aa + bb }
puts long_lambda.call(10, 5)
short_proc = proc { |aa, bb| aa + bb }
puts short_proc.call(20, 5)
long_proc = Proc.new { |aa, bb| aa + bb }
puts long_proc.call(30, 5)
puts


class Array
  def first_and_last
    [self.first, self.last]
  end
end

class String
  def first_and_last
    [self[0], self[-1]]
  end
end
puts [10, 20, 30].first_and_last.inspect # [10, 30]
puts "ABCD".first_and_last.inspect # ["A", "D"]
puts ["Hello", "Goodbye"].map(&:first_and_last).inspect # [["H", "o"], ["G", "e"]]
puts

symbolic_proc = :first_and_last.to_proc # #<Proc:0x007feb749b0070>
puts symbolic_proc.call([1, 2, 3]).inspect #=> [1, 3]
puts symbolic_proc.call("abcd").inspect #=> ["A", "D"]
puts ["Hello", "Goodbye"].map(&:first_and_last).inspect # => [["H", "o"], ["G", "e"]]
# Note: In order to convert a symbol to a string you can use #to_s or #to_sym to go from string to symbol
puts 


class Array
  def random_each(&swy)
    puts swy 
    shuffle.each { |el| swy.call el}
  end
end
[1, 2, 3, 4, 5].random_each { |i| puts i * 2}
puts

several = Proc.new {|num| num > 3 and num < 8 } 
few = Proc.new {|num| num == 3 }
couple = Proc.new {|num| num == 2 }
one = Proc.new {|num| num == 1 }
none = Proc.new {|num| num == 0 }
0.upto(10) do |num|
  print "#{num} item is "

  case num    
  when several 
    puts 'several'
  when few
    puts 'few'
  when couple 
    puts 'couple'
  when one 
    puts 'uno sol'
  when none 
    puts 'none at all'
  else
    puts 'Awesome!!!'
  end

end
puts 

def lambda_proc(l_p)
  puts 'About to run a lambda or a proc here, por favor'
  l_p.call
  puts "Finished running the proc"
end
lambda_proc lambda { puts "I'm a lambda"; return }
# lambda_proc proc { puts 'I\'m a proc'; return} # note that this would throw a LocalJumpError : Unexpected return 
puts

def multiple_generator(m)
  lambda { |n| n * m} 
end
doubler = multiple_generator(2)
tripler = multiple_generator(3)
puts doubler[5] # 10
puts tripler[10] # 30
puts 

# Writing a method that takes a block
# Blocks are passed to methods mostly like other arguments. Let's write a method, maybe that will call a block only if its argument is true. It should work like this:
# maybe(true) { puts "Hello!" } # runs block, since passed true
# maybe(false) { puts "Goodbye!" } # doesn't run block
# Here's how we could define maybe:
def maybe(flag, &prc)
  prc.call if flag
end
# def maybe(flag)
#   yield if flag
# end
maybe(true) { puts "Hello!" } # runs block, since passed true
maybe(false) { puts "Goodbye!" } # doesn't run block
# Notice the &prc argument? The ampersand is a special symbol that signifies that prc should hold a Proc. The block, if provided, gets turned into a Proc object, which is then stored in the prc variable; if no block is provided, prc is set to nil. We need to mark the variable with a & because procs are not passed like normal arguments; they don't appear inside the parens in the list of values to pass in.
def amp_makes_block_a_proc(&prc)
  puts prc.class
end
amp_makes_block_a_proc {|m| m + 1} # Proc
puts
# What's the difference between a block and a Proc? A block is the Ruby code you write; it is not a real Ruby object.
# Ruby will create an object that will store your block so that you can call it later, a Proc. You can create a Proc object yourself:
my_proc = Proc.new { "Hey, friend!" }
puts my_proc.call # calls the block, which returns: "Hey, friend!"
puts my_proc.call # calls it again

# The & way only allows you to pass a single block/proc to a method. If you want to pass multiple procs, you must pass them as normal arguments:
proc_add_1 = Proc.new {|num| num + 1}
proc_add_2 = Proc.new {|num| num + 2}
def chain_blocks(start_val, proc1, proc2, &proc3)
  val1 = proc1.call(start_val)
  val2 = proc2.call(val1)
  val3 = proc3.call(val2)

  val3
end
puts chain_blocks(1, proc_add_1, proc_add_2) { |num| num + 3 } # 7
# This passes in three procs; proc_add_1, proc_add_2, and then the third block after it has been procified.
puts

# AVOID CALLING RETURN WITHIN A BLOCK OR PROC UNLESS YOU REALLY MEAN IT
def wrap_block(&prc)
  puts "Started at #{Time.now}."
  value = prc.call
  puts "Ended at #{Time.now}."

  value
end

# example 1
def test1
  value = wrap_block { 1 + 1 }
  puts "All done! Got value: #{value}."
end
test1
puts

# example 2
def test2
  value = wrap_block do
    # this is going to return immediately *from test2*
    # will not wait for printing end time, or "Never called!"
    return 1 + 1
  end

  puts "#{value} is Never reached or called!"
end
test2
puts

# example 3
# wrap_block do
#   # Throws exception:
#   #     "LocalJumpError: unexpected return"
#   # Does this because it wouldn't otherwise be legal to call return at
#   # the top level of our Ruby code (outside a method).
#   return 1 + 1
# end


add_one = Proc.new { |i| i + 1}
# [1, 2, 3].map(add_one) # wrong number of arguments (1 for 0)
puts [1, 2, 3].map(&add_one).inspect # => [2, 3, 4]
# puts [1, 2, 3].map(&add_one) { "an actual block!" }
# SyntaxError: (eval):2: both block arg and actual block given
puts ["a", "b", "c"].map { |m| m.upcase }.inspect
puts ["a", "b", "c"].map(&:upcase).inspect
puts [1, 2, 3, 4, 5, 6].select { |num| num.even? }.inspect
puts [1, 2, 3, 4, 5, 6].select(&:odd?).inspect
puts 
# What's happening here? Using the & symbol calls #to_proc on the item following the ampersand. For example, in the above code, #to_proc is called on the symbols :upcase and :odd.
# When #to_proc is called on a symbol, we get back a Proc object that just calls a method with the same name as the symbol on its argument.
# Here's what the above is "actually doing".
# ["a", "b", "c"].map { |s| s.upcase }
# [1, 2, 5].select { |i| i.odd? }
# Here's an example of converting a Symbol into a Proc. Notice that we can call the same Proc on different data structures:

class Array
  def first_and_last
    [self.first, self.last]
  end
end

class String
  def first_and_last
    [self[0], self[-1]]
  end
end
puts
puts symbolic_proc = :first_and_last.to_proc #=> #<Proc:0x007feb749b0070>
puts symbolic_proc.call([1,2,3]).inspect #=> [1, 3]
puts symbolic_proc.call("ABCD").inspect #=> ["A", "D"]
puts ["Hello", "Goodbye"].map(&:first_and_last).inspect # => [["H", "o"], ["G", "e"]]
# Note: In order to convert a symbol to a string you can use #to_s or #to_sym to go from string to symbol
# The different uses of &
# You may have noticed that the & appears in many places in the examples above. The & can be tricky because it does several things:
# Converts blocks to procs
# Converts method names (passed as symbols) to procs
# Converts procs to blocks
# We have mostly seen the first two uses, but you should be aware of the third. For example, assume we have a method my_sort! that takes a block argument, like this:
# animals = ['cats', 'dog', 'badgers']
# animals.my_sort! do |animal1, animal2|
#   animal1.length <=> animal2.length
# end
# puts animals # => ['dog', 'cats', 'badgers']
# We can easily define a non-bang version of this method like so:

class Array
  def my_sort(&prc)
    self.dup.my_sort!(&prc)
  end
end
# The two uses of & in the above example do different things: the first one calls #to_proc on a block argument, creating a first-class proc object that we can refer to with prc. But #my_sort! expects a block argument, not a proc, so we can't simply pass it prc. Instead, when we call #my_sort!, we use & again, but this time & means the opposite of what it meant in the previous line; now & is changing the proc back into a block.
puts 
 

sammy = [ "a", "b", "c" ]
puts sammy.join('-').inspect
sammy << 'd'
puts sammy.freeze.inspect    #=> ["a", "b", "c", "d"]
puts sammy.frozen?   #=> true
puts sammy[0]
# sammy << 'e' # can't modify frozen Array (RuntimeError)
puts sammy.join('-').inspect

tommy = (10..1).to_a
puts tommy.inspect
# 10.downto(1) {|x| puts x}
jommy = (1..10).to_a
puts jommy.inspect
# (1..10).to_a.reverse.each {|i| puts i }
puts 

puts Class.is_a?(Object)
puts Class.class

# Extending a class
# It is possible to add functionality to a class by extending (or monkey-patching) it. We can accomplish this by opening up the class definition and writing our new method definitions inside of it, like so:
class String
  def palindrome?
    self == self.reverse
  end
end
# This way, in addition to all the functionality available to the 'String' class, a method 'palindrome?' is also now available to all incidents of strings. Hence, the method palindrome? can be called by any string and a result.
puts 'abcdcba'.palindrome?
puts 'abcdcbab'.palindrome?
puts 'madam'.palindrome?
puts 

puts " ===== HASHES ===== "
# What's a Hash?
# A Hash is a collection of key-value pairs. You can think of a hash like an array, but instead of the keys being incrementing integer indices (i.e., 0, 1, 2, 3, etc.), the keys are arbitrary, and can be any kind of object.
# You can create a hash a couple different ways:
# empty_hash = Hash.new
# another_empty_hash = {} # shorter and preferred
capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }

# We can look up values in a hash by its key:
puts capitals['New York'] # => 'Albany'

# We can also iterate over the elements of the hash, like we did with array:
capitals.each do |state, capital|
  puts "#{capital} is the capital of #{state}"
end
# Albany is the capital of New York
# Sacramento is the capital of California

# Notice that when we iterate over a hash, each entry in the hash has both a key and a value.
# We add a new key and value to a hash like so:
capitals['Texas'] = 'Austin'
puts capitals # { 'New York' => 'Albany', 'California' => 'Sacramento', 'Texas' => 'Austin' }

# We can delete a key/value pair in a hash like so:
capitals.delete('Texas')
puts capitals # { 'New York' => 'Albany', 'California' => 'Sacramento' }
puts 
# We can also merge two hashes together:
more_capitals = { :Oregon => 'Salem', :Alaska => 'Juneau' }
puts capitals.merge(more_capitals) # => { 'New York' => 'Albany', 'California' => 'Sacramento', 'Oregon' => 'Salem', 'Alaska' => 'Juneau' }

# Notice that hash1.merge(hash2) is the same as hash2.merge(hash1) here. This isn't always the case; if you have two hashes with the same keys, duplicate entries in the merged Hash take precedence over the ones in the calling Hash:
h1 = {:a => 'apple', :b => 'bat'}
h2 = {:b => 'bravo', :c => 'charlie'}
puts h1.merge(h2) # => {:a => 'apple', :b => 'bravo', :c => 'charlie'}
puts h2.merge(h1) # => {:b=>"bat", :c=>"charlie", :a=>"apple"}
# Note also that merge does not modify either of the hashes, it creates a new hash which contains the keys and values of both. There is a bang version (merge!) which will modify the method receiver.

# If we want to get all of the keys in a hash we can use the keys method:
# capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
puts capitals.keys.inspect # => ["New York", "California"]
puts capitals.values.inspect # => ["Albany", "Sacramento"]
# Notice that the return value of this method is an array of the hash's keys.
# We can check if a hash has a specific key by using the Hash#key? method:
# capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
puts 

puts capitals.has_key?('New York') # => true
puts capitals.has_key?('France') # => false
puts capitals.has_value?('Sacramento') # => true
puts capitals.has_value?('Denver') # => false
puts

# my_hash = { :a => "b"}
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}
puts menagerie[:elves] # 1
puts menagerie[:racoons].inspect # nil
puts 

#Becoming More Selective 
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
puts movie_ratings.select{|m, n| n > 3}

#Converting Between Symbols and Strings
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []
strings.each { |m| symbols.push(m.to_sym) }
puts symbols.inspect

#Dare to Compare
require 'benchmark'
string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end
puts "String time: #{string_time} seconds."

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end
puts "Symbol time: #{symbol_time} seconds."
puts 

#Iterarting Over Hashes 
matz = { "First name": "Yukihiro",
  "Last name": "Matsumoto",
  "Age": 47,
  "Nationality": "Japanese",
  "Nickname": "Matz"
}
puts matz.map { |key, value| value }.inspect
puts matz.map { |key, value| [value] }.inspect
puts 

#Many Paths to the Same Summit 
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []
puts strings.each { |m| symbols.push m.intern}.inspect


#Nil a Formal Introduction 
creatures = { "weasels" => 0,
  "puppies" => 6,
  "platypuses" => 3,
  "canaries" => 1,
  "Heffalumps" => 7,
  "Tiggers" => 1
}
puts creatures[:whaaat].inspect # nil
puts

#What's a Symbol? 
puts "string".object_id
puts "string".object_id
puts :symbol.object_id
puts :symbol.object_id
puts


#--------------------------------------------------
puts " ===== DATA STRUCTURES ===== " 
#--------------------------------------------------
#(Re)Introduction to Iteration 
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]
family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}
friends.each { |m| puts m }
puts
family.each { |m, n| puts "#{m}: #{n}" }
puts


#Arrays of Arrays 
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
multi_d_array.each { |m| puts "#{m}" }

#Iterating Over Multidimensional Arrays 
# s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
# s.each do | x |
#   x.each do | y |
#     puts y
#   end
# end
puts

#Why Classes?
class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end
	
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end
ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")
ruby.description
python.description
javascript.description
puts 

class Person
  attr_accessor :name, :age, :race, :height, :nationality # all these has read-write access.
  attr_writer :college # This only has write access and so will not display
  attr_reader :club # This only has read access

  def initialize(name, age, race, height, nationality, college)
    @name = name
    @age = age
    @race = race
    @height = height
    @nationality = nationality
    @college = college
    @club = "Arsenal"
    
  end

  def greeting
    "Hello #{@name}"
  end
end
person1 = Person.new("Denis", 23, "caucasian", 6, "American", "Reed")
puts person1.name # Denis
puts person1.age # 23
puts person1.race # caucasian
puts person1.height # 6
puts person1.nationality # American
puts person1.club # Club can only be read but not written.
puts person1.greeting # Hello Denis
# puts person1.college # This will throw a (NoMethodError) and terminate the program because 'college' only has write_attr but not read_attr.
puts person1.greeting # This will not execute because the program is terminated by the person1.college call.
puts

# Dragon 
class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  # He's full.
    @stuffInIntestine =  0  # He doesn't need to go.

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end
  

  private
  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     -= 1
      @stuffInIntestine += 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end

  end
end
pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
# pet.putToBed # running this would terminate the program. 
puts


puts " ===== Banking ===== " 
#Creating the Account Class
#Opening an Account 
class Account
  attr_reader :name, :balance
  def initialize(name, balance = 100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end
my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)
checking_account = Account.new("bugra", 12000)
puts checking_account
puts 


def median_int(arr)
  sorted = arr.sort
  sorted.length.odd? ? sorted[((arr.length - 1)/2)] : 
  ((sorted[(arr.length)/2 - 1] + sorted[arr.length/2])/2.0)
end
puts median_int([7,1,4,3,2,5,8,6])
my_array1 = *(1..100)
# puts my_array1.inspect
puts median_int(my_array1)
my_array2 = *(1..105)
puts median_int(my_array2)
puts 


def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end
capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"
puts

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# To sort our books in ascending order, in-place
puts books.sort { |firstBook, secondBook| firstBook <=> secondBook }
# Sort your books in descending order, in-place below
puts books.sort! { |firstBook, secondBook| secondBook <=> firstBook }
fruits = ["orange", "apple", "banana", "pear", "grapes"]
puts fruits.sort! {|fruit1, fruit2| fruit2 <=> fruit1 }.inspect

#Introduction to Sorting 
puts [3, 4, 8, 7, 1, 6, 5, 9, 2].sort!.inspect
words = %w(boy girl adult uncle mom)
puts words.inspect
puts words.sort.inspect
puts words.sort.reverse.inspect
puts

puts (-10..-1).map(&:abs).inspect
# we could also do this:
puts 9.downto(2) {|m| print "#{m} "} # note the diff btwn this and below
9.downto(2) {|m| print "#{m} "} # note the diff btwn this and above
puts
puts 1.step(10, 2) { |i| print "#{i} "} # note the diff btwn this and below
1.step(10, 2) { |i| print "#{i} "} # note the diff btwn this and above
puts
puts

#--------------------------------------------------
puts " ===== Object-Oriented Programming II ===== "
#--------------------------------------------------

#Feeling Included 
class Angle
  include Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end
acute = Angle.new(1)
puts acute.cosine
puts

#Sorting With Control Flow  
def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end
books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]
puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"
puts 

class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
  
  def Computer.get_users
    @@users
  end
end
Computer.new("Tom", 01234).create("groceries.txt")
Computer.new("Jerry", 56789).create("todo.rb")
Computer.new("John", 00234).create("test.js")
Computer.new("Paul", 43542).create("play.php")
Computer.new("Peter", 97636).create("score.py")
puts "Users: #{Computer.get_users}"
puts

# Classes
class Tribe
  def initialize(name, region, language, population)
    @name = name
    @region = region
    @language = language
    @population = population
  end
  
  def info
    puts "The #{@name} tribe lives in the #{@region} region of Ghana, and their language, #{@language} is spoken by about #{@population} million people"
  end
end
dagomba = Tribe.new("Dagomba", "Northern", "Dagbani", 2)
ga = Tribe.new("Ga", "Greater Accra", "onu-Ga", 1)
ewe = Tribe.new("Ewe", "Volta", "va-mejo", 1.5)
puts dagomba.info
puts ga.info
puts ewe.info
puts

class Persona
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public
  def about_me
    puts "my name is #{@name} and I am #{@age} years old!"
  end
  
  private
  def bank_account_number
    @account_number = 0123456
    puts "my bank account number is #{@account_number}"
  end
end
swy = Persona.new("Suhai", 25)
puts swy.about_me
# "puts swy.bank_account_number" will throw back an error because 
# it is private.
#puts swy.bank_account_number
puts


#Hashes
puts " ===== HASHES ===== "
# The hash below is not given a default value
names = Hash.new
puts names
puts names[0].inspect
puts names[2].inspect
puts

# The hash below is given a default value of zero
# It returns the default value for an invalid key or value
names2 = Hash.new(0)
puts names2
puts names2[0]
puts names2[2]
puts

# The hash below is given a default value of 'zipcode'
# It returns the 'zipcode' value when an invalid request is made
states = Hash.new("zipcode")
puts states
puts states[0]
puts states[2]
puts

puts " ===== Different ways of creating Hashes ===== "
puts
puts sam = {"age": 17, "race": "Asian", "score": 97, "city": "Austin"}
puts sam
puts brad = {age: 17, race: 'Asian', score: 97, city: "Austin"}
puts brad
hip_hop = {:chains => "different", :cent => "club", :kanye => "party"}
puts hip_hop
alnum1 = Hash["a", 1, "b", 2, "c", 3, "d", 4, "e", 5]
puts alnum1
alnum2 = Hash[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts alnum2
alnum3 = Hash["a", 'A', "b", 'B', "c", 'C', "d", 'D', "e", 'E']
puts alnum3
puts

scores = {"USA" => 1, "Italy" => 2, "Spain" => 3, "Japan" => 4}
scores.default = "nil"
puts scores["Ghana"] # 'nil' is returned
puts scores["USA"]
puts scores[3] # 'nil' is returned because 3 is not a valid key
puts scores.key(3) #This is a modified code for the one immediately above
scores["China"] = 6
scores[:Norway] = 5
puts scores.keys.inspect
puts scores.values.inspect
puts scores.assoc("China").inspect
puts scores.assoc("Norway").inspect
puts scores.assoc(:Norway).inspect
puts

hello = Hash.new {|hash, key| hash[key] = "Yo! #{key}"} 
puts hello["Paul"]
puts hello["Peter"]

h1 = { "a" => 1, "c" => 2 }
h2 = { 7 => 35, "c" => 2, "a" => 1 }
h3 = { "a" => 1, "c" => 2, 7 => 35 }
puts h1 == h2
puts h2 == h3
puts

arr = %w(peter pipper and john pipper and mary adams and andrew are very very)
puts Hash[arr.uniq.map { |i| [i, arr.count(i)] }]
puts arr.inject(Hash.new(0)) {|hash, key| hash[key] += 1; hash }
#
def converter(arrr)
  my_hash = Hash.new(0)
  arrr.each {|x| my_hash[x] += 1}
  my_hash
end
puts converter(arr)
puts

dictionary = { "cat" => "feline animal", "dog" => "canine animal" }
puts dictionary.size
puts dictionary["cat"]
dictionary["cat"] = "fluffy animal"
puts dictionary['cat']
puts 

aq = {"a" => 11, "b" => 12, "c" => 13, "d" => 14, "e" => 15}
aq.each {|aa, bb| puts "#{aa} equals #{bb}" }
puts
puts aq.keys.inspect
puts aq.values.inspect
puts aq.inspect
puts aq.delete("b")
puts aq.inspect
aq.delete_if { |aa,bb| bb < 12 }
puts aq.inspect
puts

people = { "Adam" => { "name" => "Adam of Eden", "age" => 1000, 
"gender" => "male", "favorite songs" => ["Amen Amen","Trap Queen",
"In da club"] },
"Eve" => { "name" => "Eve of Eden", "age" => 999, 
"gender" => "female", "favorite songs" => ["Party in the USA","Hotline Bling",
"Just Dance"] },
"John" => { "name" => "John Bull", "age" => 35, "quote" => "just chillin!" } }
puts people["Adam"]["age"]
puts people["Eve"]["gender"]
puts people["John"].inspect
puts people["Adam"]["favorite songs"].length
puts people["Eve"]["favorite songs"].join(", ")
puts 

age = 10
type = age < 18? "child" : "adult"
puts "You're a " + type

gender = "female"
puts "You're a " + (gender == "male"? "male" : "female")
puts 

fruit = "orange"
case fruit
  when "orange"
    color = "orange"
  when "apple"
    color = "green"
  when "banana"
    color = "yellow"
  else
    color = "unknown"
end
puts color

fruit = "banana"
color = case fruit
  when "orange"
    "orange"
  when "apple"
    "green"
  when "banana"
    "yellow"
  else
    "unknown"
end
puts color
puts

puts " ===== TIMES & DATES ===== "
puts %q"Time is an abstraction of dates and times. Time is stored 
internally as the number of seconds with fraction since the 
Epoch, January 1, 1970 00:00 UTC (Coordinated Universal Time), 
also known as the GMT (Greenwich Mean Time)." 

#
class Integer
  def seconds
    self 
  end
  def minutes
    self * 60
  end
  def hours
    self * 60 * 60
  end
  def days
    self * 60 * 60 * 24
  end 
end
puts

puts Time.at(0)
puts Time.at(Time.at(0)) 
puts Time.now
puts Time.now.inspect
puts Time.new
puts Time.new.inspect
puts Time.now.to_i
puts

puts Time.now.to_f
puts Time.at(-284061600)
puts Time.at(946702800) 
puts Time.now - 8.hours
puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days
puts

puts Time.mktime(2000, 1, 1)      
puts Time.mktime(1906, 8, 3, 10, 11)
puts Time.mktime(2016, 11, 17, 12, 37, 14)
puts Time.new(2016, 11, 17, 12, 37, 14, "+02:00")
puts

puts Time.new(2008,6,21, 13,30,0, "+08:00")
puts Time.gm(2000,"jan",1,20,15,1)
puts Time.utc(2000,"jan",1,20,15,1)
puts Time.local(2000,"feb",1,20,15,1) # should give UTC -0800
puts

puts Time.gm(2007, 05).to_i
puts Time.utc(2007, 05).to_i
puts Time.utc(1991, 8, 29, 05, 23, 54).to_i
puts Time.at(946684800.2).usec 
puts Time.at(946684800, 123456.789).nsec
puts (Time.now.to_i - Time.utc(1991, 12, 01, 15, 23, 54).to_i)
puts

t = Time.at(683443434 + 86400)
t1 = Time.new(2011)
puts t.year, t.month, t.day, t.hour, t.min, t.sec
puts
puts t.zone, t.month, t.yday, t.mday, t.wday, t.hour, t.min, t.sec, t.usec
puts

puts t.utc?
puts t.thursday?
puts t.monday?
puts t.dst? # daylight saving time?
puts t + (60*60*24*365) # what is it the day a year later?
puts (t + (60*60*24*365)).wday
puts t.to_i # How many seconds was that since the Unix Epoch?
puts t1 >= t
puts t1 < t
puts Time.new(2010,10,31).between?(t, t1)
puts Time.new(2010,10,31).between?(t1, t)
puts

#A Few Requirements 
require 'date'
puts Date.today
puts Time.new.hour
puts Time.new.min
puts Time.new.sec
puts Time.now
puts

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (PT)."
  end
end
#
class Application
  attr_accessor :status

  def initialize 
  end

  public
  def print_status
    puts "All systems go!"
  end

  include ThePresent # This makes ThePresent available in here.
end
sam = Application.new
sam.print_status
sam.now
#
class TheHereAnd
  include ThePresent
end
tonny = TheHereAnd.new
tonny::now
puts 

puts 1073741823.class
puts "1073741823.class = Fixum"
puts "1073741824.class = Bignum"
puts

("a".."z").each { |m| print m }
puts
("A".."Z").to_a.each { |m| print m }
puts
("A".."z").to_a.each { |m| print m }
puts
puts "This includes R" if ("A".."Z").include?("R")
puts

#symbols
current_situation = :good
puts "Everything is fine" if current_situation == :good
puts "PANIC!" if current_situation == :bad
puts

person1 = { :name => "Fred", :age => 20, :gender => :male }
person2 = { :name => "Laura", :age => 23, :gender => :female }
puts person1[:name]
puts person2[:gender]
puts

class Shape
end
#
class Square < Shape
  def initialize(side_length)
    @side_length = side_length
  end
  def area
    @side_length * @side_length
  end
  def perimeter
    @side_length * 4
  end 
end

class Triangle < Shape
  def initialize(base_width, height, side1, side2, side3)
    @base_width = base_width
    @height = height
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def area
    @base_width * @height / 2
  end
  def perimeter
    @side1 + @side2 + @side3
  end
end

my_square = Square.new(5)
my_triangle = Triangle.new(6, 6, 7.81, 7.81, 7.81)
puts my_square.area
puts my_square.perimeter
puts my_triangle.area
puts my_triangle.perimeter

#puts 5.methods
puts
puts 10.divmod(3).inspect
puts 10.divmod(3).inspect
puts 17.divmod(3).inspect
puts 76.divmod(7).inspect
puts

puts 9.99.floor
puts 9.99.ceil
puts (3 + 0.5).floor
puts (3 + 0.2).ceil
puts

article = nil
puts article.nil?
puts [].empty?
puts "".empty?
puts
95.upto(100) { |m| print m,", " }
puts
85.downto(80) { |m| print m,", " }
puts
"m".upto("r") { |m| print m," " }
puts
# "h".downto("c") { |m| print m," " } # invalid
puts

my_nums = [1, 2, 3]
puts my_nums.collect { |n| n ** 2 }.inspect
puts

puts ' ===== respond_to? ===== '
puts [1, 2, 3].respond_to?(:push)
puts "stringer".respond_to?(:push)
puts 3.respond_to?(:push)
puts
puts [1, 2, 3].respond_to?(:to_s)
puts "stringer".respond_to?(:to_s)
puts 3.respond_to?(:to_s)
puts
puts [1, 2, 3].respond_to?(:to_a)
puts "stringer".respond_to?(:to_a)
puts 3.respond_to?(:to_a)
puts
puts [1, 2, 3].respond_to?(:to_i)
puts "stringer".respond_to?(:to_i)
puts 3.respond_to?(:to_i)
puts
puts [1, 2, 3].respond_to?(:to_sym)
puts "stringer".respond_to?(:to_sym)
puts 3.respond_to?(:to_sym)
puts
puts [1, 2, 3].respond_to?(:next)
puts "stringer".respond_to?(:next)
puts 3.respond_to?(:next)
puts

puts "Suhaibu " << "Yehuza"
puts

def mult_three(n)
  n % 3 == 0 ? (n % 3).to_s+":"+"True" : (n % 3).to_s+":"+"False"
end
puts mult_three(15)
puts mult_three(11)
puts
# Procs. because "blocks cannot be saved/assigned to a variable,
# procs are used instead. Procs acts to save blocks of code,
# so that they can be called wherever the block of code will 
# be needed". Examples are below:
cube = Proc.new { |m| m ** 3 }
puts [1, 2, 3].collect(&cube).inspect
puts [4, 5, 6].map!(&cube).inspect
puts ["1", "2", "3"].map(&:to_i).inspect
puts

allo = Proc.new { puts "Proc Proc can be fun" }
allo.call

som = ["John", "Paul", "Peter"]
ark = lambda { |m| m.to_sym }
puts som.collect(&ark).inspect
puts

data = [1.2, 3, 5.3, "kofi", 8, "Ama", 77, :hella, 23, "Araba"]
my_lambda1 = lambda { |m| m.is_a? Integer }
my_integers = data.select(&my_lambda1)
puts my_integers.inspect
my_lambda2 = lambda { |m| m.is_a? Float }
my_floats = data.select(&my_lambda2)
puts my_floats.inspect
my_lambda3 = lambda { |m| m.is_a? Numeric }
my_numbers = data.select(&my_lambda3)
puts my_numbers.inspect
my_lambda4 = lambda { |m| !m.is_a? Numeric }
my_non_numbers = data.select(&my_lambda4)
puts my_non_numbers.inspect
puts

age_data = [23, 13, 29, 58, 54, 55, 67, 17, 12, 98, 83, 90, 42, 99]
my_proc1 = Proc.new { |m| m <= 50}
my_proc2 = Proc.new { |m| m >= 50}
puts age_data.select(&my_proc1).inspect
puts age_data.select(&my_proc2).inspect
puts


state_cap = { idaho: "Boise", oregon: "Salem", texas: "Austin", 
california: "Sacramento", washington: "Olympia", colorado: "Denver" }
my_list1 = Proc.new { |m, n| n <= "M" }
puts state_cap.select(&my_list1).inspect
puts

my_list2 = lambda { |m, n| n >= "M" }
puts state_cap.select(&my_list2)
puts

#lambda { puts "Hello!" } == Proc.new { puts "Hello!" } ?
puts [1.3.floor, 3.5.floor, 5.8.floor].inspect
puts [1.3.ceil, 3.5.ceil, 5.8.ceil].inspect
puts

puts '===== Conditional assignment ===== '
my_name = nil
puts my_name.inspect
my_name ||= "Suhai" # assign 'Suhai' to my_name if my_name is unassigned
puts my_name # Suhai.
my_name ||= "Suhaibu" # assign 'Suhaibu' to my_name if my_name is unassigned
puts my_name # Suhai.
your_name = "Stranger" 
your_name ||= "Somebody"
puts your_name # Stranger
puts


# The Ternary Conditional Expression operates like "if .. else"
puts 1 + 2 == 3 ? "correct" : "wrong"
puts "french".size == 7 ? "francais".size : "ewe".capitalize
options = { font_size: 10, font_family: "Arial" }
puts options[:font_size]
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
puts grades
grades = Hash.new(0) 
grades.default = 0
puts grades
puts

fruits = ["apples", "oranges", "bananas", "water mellons", "guavas"]
puts fruits.sort { |m, n| m <=> n }.inspect
puts fruits.sort! { |m, n| n <=> m }.inspect
puts

puts '===== NEEDS TO KNOW WHAT IS GOING ON HERE ===== '
puts (0...36).map{ |m| m.to_s }.inspect
puts (0...36).map{ |m| m.to_s 36}.inspect
puts (0...36).map{ |m| m.to_s 20}.inspect
# puts (0...36).map{ |m| m.to_s 40}.inspect
puts

puts '===== permutations and combinations ===== '
aa = ('a'..'c').to_a
puts aa.permutation.to_a.inspect
puts aa.permutation(3).to_a.inspect
puts ["a","b","c"].product(["d","e"]).inspect
puts ["d","e"].product(["a","b","c"]).inspect
puts
# n C k == n! / (k!(n - k)!)
# n P k == n! / (n - k)!
a = [1, 2, 3]
puts a.permutation.to_a.inspect
puts a.combination(1).to_a.inspect
puts a.permutation(1).to_a.inspect
puts 

puts a.combination(2).to_a.inspect
puts a.permutation(2).to_a.inspect
puts

puts a.combination(3).to_a.inspect
puts a.permutation(3).to_a.inspect
puts 

puts a.combination(0).to_a.inspect
puts a.permutation(0).to_a.inspect
puts

puts a.combination(4).to_a.inspect
puts a.permutation(4).to_a.inspect
puts

b = ('a'..'f').to_a
puts (2..3).flat_map{|size| b.combination(size).map(&:join) }.inspect
puts (3..5).flat_map{|size| b.combination(size).map(&:join) }.inspect
puts (5..6).flat_map{|size| b.combination(size).map(&:join) }.inspect
puts

puts " ===== regEX ===== "
puts (/hay/).match('haystack') # hay
puts (/need/).match('haystack').inspect # nil
puts (/stack/).match('haystack') # stack
puts (/stak/).match('haystack').inspect # nil
puts (/1 \+ 2 = 3\?/).match('Does 1 + 2 = 3?') # 1 + 2 = 3?
puts
puts (/W[aeiou]rd/).match("Word") # Word
puts (/[0-9a-f]/).match("9f") # 9
puts (/[0-9a-f]/).match("23") # 2
puts (/[9f]/).match("9f") # 9
puts
#note this one below
puts (/[^a-eg-z]/).match('f')
#puts (/[a-w &&[^c-g]z]/) == (/[abh-w]/)
puts (/[[:digit:]]/).match("\u06F2")
puts (/[[:graph:]]/).match("\u06F2")
puts (/[[:graph:]][[:graph:]][[:graph:]][[:graph:]]/).match("\\u06F2")
puts (/[[:graph:]]*/).match("\\u06F2")
puts
puts (/[[:digit:]][[:digit:]][[:digit:]][[:digit:]]/).match("\u06F2")
puts (/[[:digit:]][[:digit:]][[:digit:]][[:digit:]]/).match("0665")
puts (/[[:digit:]]+/).match("0665")
puts (/[[:upper:]][[:lower:]]/).match("Hello")
puts (/[[:upper:]][[:lower:]]{4}/).match("Hello")
puts
# 4 times
puts (/[[:xdigit:]][[:xdigit:]]/).match("A6")
puts (/[[:xdigit:]]{2,}/).match("A600b4")
# 2 or more times
puts (/[[:alnum:]]/).match("123")
puts (/[[:alnum:]]{,4}/).match("123brs")
# 4 or less times
puts (/[[:alnum:]]{,8}/).match("123brs")
puts
# 8 or less times
puts (/[[:alnum:]][[:alnum:]][[:alnum:]]/).match("123")
puts (/[[:alpha:]][[:alpha:]][[:alpha:]][[:alpha:]]/).match("hola")
puts (/[[:alnum:]][[:alnum:]][[:alnum:]][[:alnum:]]/).match("123abc")
puts (/[[:blank:]][[:alnum:]][[:alnum:]]/).match(" ola")
puts (/[[:lower:]][[:lower:]][[:lower:]]/).match("coMe on")
puts
puts (/[[:lower:]][[:lower:]][[:lower:]]/).match("comE on")
puts (/[[:upper:]][[:lower:]][[:lower:]][[:lower:]]/).match("Go up")
puts (/[[:upper:]][[:lower:]][[:blank:]][[:lower:]]/).match("Go up")
puts (/[[:punct:]][[:upper:]][[:lower:]]/).match("!Ha")
puts (/[[:space:]][[:lower:]][[:lower:]]/).match(" whaaat?")
puts (/[[:space:]][[:lower:]]{1,9}/).match(" whaaat?")
puts
# at least 1 times and at most 9 times
puts (/[[:print:]][[:print:]][[:print:]]/).match("a boy")
puts (/[[:word:]][[:word:]][[:word:]]/).match("onomaopoeia is a word")
puts (/[[:ascii:]][[:ascii:]]/).match("A1")
# At least one uppercase character ('H'), at least one lowercase
# character ('e'), two 'l' characters, then one 'o'
puts "Hello".match(/[[:upper:]]+[[:lower:]]+l{2}o/)
puts (/<.+>/).match("<a><b>")
puts
puts (/[aeiou]\w{2}/).match("Caenorhabditis elegans")
puts (/[aeiou]\w{7}/).match("Caenorhabditis elegans")
puts (/[aeiouC]\w{15}/).match("Caenorhabditis elegans")
puts (/[aeiouC]\w{13}/).match("Caenorhabditis elegans")
puts (/([aeiou]\w){2}/).match("Caenorhabditis elegans")
puts
# Additional notes
# [abc]	= A single character of: a, b, or c
# [^abc]	= Any single character except: a, b, or c
# [a-z]	= Any single character in the range a-z
# [a-zA-Z]	= Any single character in the range a-z or A-Z
# ^	= Start of line
# $	= End of line
# \A	= Start of string
# \z	= End of string
# .	= Any single character
# \s	= Any whitespace character
# \S	= Any non-whitespace character
# \d	= Any digit
# \D	= Any non-digit
# \w	= Any word character (letter, number, underscore)
# \W	= Any non-word character
# \b	= Any word boundary
# (...)	= Capture everything enclosed
# (a|b)	= a or b
# a?	= Zero or one of a
# a*	= Zero or more of a
# a+	= One or more of a
# a{3}	= Exactly 3 of a
# a{3,}	= 3 or more of a
# a{3,6}	= Between 3 and 6 of a
#a.match(/[^[:digit:]]+/)

kakabo = 2-2
puts kakabo.zero?
puts "A" < "B"
puts "B" < "C"
puts "M" < "N"
puts "Y" < "Z"
puts
puts "a" < "b"
puts "b" < "c"
puts "q" < "r"
puts "y" < "z"
puts
puts "A" < "a"
puts "Z" < "a"
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts 

puts '5 is my favorite number!'.to_i
puts '5 is my favorite number!'.to_f
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts

puts "johnny powell is a good guy".capitalize
puts "JOHNNY POWELL is a good guy".capitalize
puts "Johnny Powell is a good guy".capitalize
puts "johnny powell is a good guy".split.map(&:capitalize).join(" ")
puts


# puts("Input a number!")
# number = gets.to_i
# if (number > 10) && (number < 20)
#   puts("Your number was greater than ten AND less than twenty!")
# else
#   puts("Your number was either less than ten, OR greater than twenty!")
# end

# puts "heyy you! gimme ya language"
# lang = gets.chomp.capitalize
# case lang 
#   when "English"
#     puts "Hello!"
#   when "French"
#     puts "Bonjour!"
#   when "Spannish"
#     puts "Hola!"
#   else
#     puts "get da fcuk outta here bro!"
# end
# puts

#This is where I need to continue from
# puts "Text Please:"
# text = gets.chomp
# words = text.split(" ")
# freq = Hash.new(0)
# words.each { |m| freq[m] += 1 }
# freq = freq.sort_by { |m, n| n }
# freq.reverse!
# freq.each { |m, frq| puts m + " " + frq.to_s }
# puts

puts "MORE MONEY MORE PROBLEMS"
# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
# As a special case, `factorial(0) == 1`.
# Difficulty: easy.
puts "===== 01. factorial ===== "
def factorial(n)
  result = 1
  if n == 0
    result
  else
    result = (1..n).reduce(:*)
  end
  result
end
puts factorial(0)
puts factorial(1)
puts factorial(2)
puts factorial(3)
puts factorial(10)
puts

# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
# Difficulty: easy.
puts "===== 02. sum_nums ===== "
def sum_nums(num)
  return (0..num).reduce(:+)
end
puts sum_nums(1)
puts sum_nums(3)
puts sum_nums(6)
puts sum_nums(10)
puts sum_nums(15)
puts

# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
# Difficulty: easy.
puts " ===== 03. time_conversion ===== "
def time_conversion(num)
  hours, minutes = 0, 0
  if num < 10
    return "#{hours}:0#{num}"
  elsif num < 60 
    return "#{hours}:#{num}"
  else
    while num >= 60 do
      num -= 60
      hours += 1
      minutes = num
    end
    return "#{hours}:0#{minutes}" if minutes < 10
    return "#{hours}:#{minutes}" if minutes >= 10
  end
end
puts time_conversion(5)
puts time_conversion(70)
puts time_conversion(15)
puts time_conversion(150)
puts time_conversion(360)
puts time_conversion(803)
puts

puts " ===== 04. letter_changes ===== "
# Using the Ruby language, have the function LetterChanges(str) take 
# the str parameter being passed and modify it using the following algorithm.
# Replace every letter in the string with the letter following it in the 
# alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel in 
# this new string (a, e, i, o, u) and finally return this modified string.

def letter_changes(str)
    str.downcase.tr("a-yz", "b-za").tr("aeiou", "AEIOU")
    #string1 = str.tr("z", "a")
    #string2 = string1.tr("a-y", "b-z")
    #string3 = string2.tr("aeiou", "AEIOU")
    #string3
end
puts letter_changes("SuhAibu") # "tvIbjcv"
puts letter_changes("heLlo*3") # "Ifmmp*3"
puts letter_changes("fUn tImes!") # "gvO Ujnft!"
puts

puts " ===== 05. capitalize words ===== "
# capitalize words
def capitalize_words(string)
  string.split(" ").map(&:capitalize).join(" ")
end
puts capitalize_words("the boy is good")
puts capitalize_words("our father who art in heaven")
puts capitalize_words("here i am to worship")
puts

puts " ===== 06. alphabetized the letters in the string ===== "
# reorganize the alphabets of the string in aplabetical order
def alphabet_soup(str)
    return str.split("").sort.join("")
end
puts alphabet_soup("suhaibu")
puts alphabet_soup("yehuza")
puts alphabet_soup("akekevo")
puts

# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
# You may use the String `split` method to aid you in your quest.
# Difficulty: easy.
puts " ===== 07. longest_word ===== "
def longest_word(sentence)
  sentence.split(" ").inject {|x,y| x.size > y.size ? x : y}
end
puts longest_word("Some stupid students are smoking mississippi")
puts longest_word("Oh, say can you see by the dawn's early light")
puts longest_word("Come to the place for which our fathers sighed")
puts longest_word("a")
puts longest_word("ye ol go ha ha so") #= 'ye' or 'so' based on method
puts

#lucky_sevens?
#Write a function lucky_sevens?(numbers), which takes in an array of integers 
#and returns true if any three consecutive elements sum to 7.
#Make sure your code correctly checks for edge cases (i.e. the first and last 
#elements of the array).
puts " ===== 08. lucky_sevens? ===== "
def lucky_sevens?(arr)
  if arr[-1] + arr[0] + arr[1] == 7
    return true
  elsif arr[-2] + arr[-1] + arr[0] == 7
    return true
  elsif
    arr.each_cons(3) {|group| return true if group.reduce(:+) == 7}
  end
  false
end
puts lucky_sevens?([2,1,5,1,0]) #== true # => 1 + 5 + 1 == 7
puts lucky_sevens?([0,-2,1,8]) #== true # => -2 + 1 + 8 == 7
puts lucky_sevens?([7,7,7,7]) #== false
puts lucky_sevens?([3,4,3,4]) #== false
puts lucky_sevens?([3,4,9,0]) #== true
puts lucky_sevens?([4,8,3,0]) #== true
puts

puts " ===== 09. is_power_of_two? ===== "
# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# Difficulty: medium.
def is_power_of_two?(num)
    return true if num == 1
    return false if num < 1
  while true
    if num % 2 == 0
      num = num / 2
      return true if num == 1
    else 
      return false
    end
  end
end
puts is_power_of_two?(0)
puts is_power_of_two?(1)
puts is_power_of_two?(8)
puts is_power_of_two?(100)
puts is_power_of_two?(64)
puts is_power_of_two?(8796093022208)
puts

puts " ===== 10. HCF ===== "
# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
# Difficulty: medium.
def highest_common_factor(num1, num2)
  return "Invalid Entry" if (num1 == 0 or num2 == 0)
  l_num = ( num1 <= num2 ? num1 : num2 )
  
  while true do 
    tester1 = num1 % l_num
    tester2 = num2 % l_num
    return l_num if (tester1 == 0 and tester2 == 0)
    l_num -= 1
  end
end
puts highest_common_factor(3, 6)
puts highest_common_factor(6, 10)
puts highest_common_factor(5, 17)
puts highest_common_factor(0, 30)
puts highest_common_factor(16, 24)
puts highest_common_factor(15, 55)
puts

puts " ===== 11. LCM ===== "
#     Also check out this L.C.M. method
def least_common_multiple(num1, num2)
  return "Invalid Entry" if (num1 == 0 or num2 == 0)
  h_num = ( num1 >= num2 ? num1 : num2 )

  while true do 
    tester1 = h_num % num1
    tester2 = h_num % num2
    return h_num if (tester1 == 0 and tester2 == 0)
    h_num += 1
  end
end
puts least_common_multiple(3, 6)
puts least_common_multiple(2, 10)
puts least_common_multiple(5, 7)
puts least_common_multiple(14, 0)
puts least_common_multiple(11, 54)
puts 

puts " ===== 12. oddball_sum ===== "
#oddball_sum
#Write a function oddball_sum(numbers), which takes in an array of integers 
#and returns the sum of all the odd elements.
def oddball_sum(numbers)
  numbers.select { |num| num.odd? }.reduce(:+).to_i
end
puts oddball_sum([1,2,3,4,5]) #== 9 # => 1 + 3 + 5 == 9
puts oddball_sum([0,6,4,4]) #== 0
puts oddball_sum([1,2,1]) #== 2
puts

puts " ===== 13. disemvowel ===== "
#disemvowel
#Write a function disemvowel(string), which takes in a string, and 
#returns that string with all the vowels removed. Treat "y" as a consonant.
def disemvowel(string)
  string.scan(/[^aeiou]/).select {|lett| lett}.join("").inspect 
end
puts disemvowel("foobar") #== "fbr"
puts disemvowel("ruby") #== "rby"
puts disemvowel("aeiou") #== ""
puts

puts " ===== 14. palindrome? ===== "
# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
# Difficulty: easy.
def palindrome?(string)
  string.reverse == string
end  
  #string_arr = string.split("")
  #string_arr.each_with_index.all? {|x, i| string[i] == string[-(1 + i)] }
  #ind = 0
  #while ind < string.length do
  #  if string[ind] != string[string.length - (1 + ind)]
  #    return false
  #  end
  #  ind += 1
  #end
  #return true
#end
puts palindrome?("abcdcba")
puts palindrome?("abcdhaha")
puts palindrome?("halahalah")
puts palindrome?("jalajala")
puts

puts " ===== 15. longest_palindrome ===== "
# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
# Note that the entire string may itself be a palindrome.
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
# Difficulty: hard.
def longest_palindrome(string)
  pal = []
  i = 0
  while i < string.size do
    j = 1
    while (i + j) <= string.size do
      pal << string.slice(i, j) if palindrome?(string.slice(i, j))
      j += 1
    end
    i += 1
  end
  pal.inject {|x, y| x.size > y.size ? x.to_s : y.to_s}
end
puts longest_palindrome("string")
puts longest_palindrome("adda")
puts longest_palindrome("mpcbaddabckl")
puts longest_palindrome("abcbdeffe")
puts

puts " ===== 16. count_vowels ===== "
# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
# Difficulty: easy.
def count_vowels(string)
  my_vowels = []
  string.scan(/[aeiou]/) {|element| my_vowels << element}
  return my_vowels.length
end
puts count_vowels("aeiou")
puts count_vowels("abcd")
puts count_vowels("color")
puts count_vowels("colour")
puts count_vowels("cecilia")
puts

puts " ===== 17. reverse string ===== "
# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
# Don't use String's reverse method; that would be too simple.
# Difficulty: easy.
def reverse(string)
   rev_string = "" 
   string.scan(/\w/) { |w| rev_string = w + rev_string }
   rev_string
end
puts reverse "zartacla"
puts reverse "noilmooz"
puts reverse "idolekek"
puts

puts " ===== 18. nearby_az ===== "
# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** (my code modifies it to "within") 
#an "a". You may assume that the string contains only lowercase letters.
# Difficulty: medium.
def nearby_az(string)
  ind = 0
  while ind < string.length do
    if string[ind] == "a"
      new_string = ""
      if ind == 0
        new_string << string[1..3].to_s
        return true if new_string.include?("z")
      elsif ind == 1
        new_string << string[0].to_s
        new_string << string[2..4].to_s
        return true if new_string.include?("z")
      elsif ind == 2
        new_string << string[0..1].to_s
        new_string << string[3..5].to_s
        return true if new_string.include?("z")
      else
        new_string << string[(ind-3)..(ind+3)].to_s
        return true if new_string.include?("z")
      end
    end
    ind += 1
  end
  return false
end
puts nearby_az("zgdajfhfhcamafdsjkhihi")
puts nearby_az("baz")
puts nearby_az("batracftz")
puts nearby_az("abz")
puts nearby_az("a")
puts nearby_az("z")
puts nearby_az("za")
puts 

puts " ===== 19. third_greatest ===== "
# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
# Difficulty: medium.
def third_greatest(arr)
  arr.max(3).min
end
# 
# def third_greatest(arr)
#   high_num = nil
#   higher_num = nil
#   highest_num = nil
#     arr.each do |num|
#       if highest_num == nil or  num >= highest_num
#         high_num = higher_num
#         higher_num = highest_num
#         highest_num = num
#       elsif higher_num == nil or  num >= higher_num
#         high_num = higher_num
#         higher_num = num
#       elsif high_num == nil or  num >= high_num
#         high_num = num
#       end
#     end
#     return high_num
# end
# 
puts third_greatest([5, 3, 7])
puts third_greatest([5, 3, 7, 4])
puts third_greatest([2, 3, 7, 4])
puts third_greatest([-19, 4, -8, 0, -2])
puts

puts " ===== 20. most_common_letter ===== "
# Write a method that takes in a string. Your method should return the
# most common letter in the string, and a count of how many times it
# appears.
# Difficulty: medium.
def most_common_letter(string)
  #a_string = string.downcase!
  #arr = string.split("")
  #arr.sort.inspect
  #arr.uniq.inspect
  #arr.map { |c| [c, arr.count(c)] }.inspect
  #arr.uniq.map { |c| [c, arr.count(c)] }
  #arr.uniq.map { |c| [c, arr.count(c)] }.max_by(&:last).inspect
  ##arr.uniq.map { |c| [c, arr.count(c)] }.max_by(&:first).inspect
  arr = string.downcase.split("")
  arr.uniq.map { |c| [c, arr.count(c)] }.max_by(&:last).inspect
end
puts most_common_letter("AlalalAaaabama")
puts most_common_letter("qbcq")
puts most_common_letter("abbab")
puts

puts " ===== 21. dasherize_number ===== "
# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
# Difficulty: medium.
# 
# def dasherize_number(nums)
#   num_string = nums.to_s
#   result = ""
#   ind = 0
#   while ind < num_string.size do 
#     curr_val = num_string[ind].to_i
#     if ind > 0
#     prev_val = num_string[ind - 1].to_i
#       if prev_val % 2 == 1 or curr_val % 2 == 1
#         result << "-"
#       end
#     end
#     result << num_string[ind]
#     ind += 1
#   end
#   return result
# end
# 
def dasherize_number(nums)
  num_string, result = nums.to_s.split(""), ""
  
  num_string.each_with_index do |char, ind| 
    if ind == 0 
      result << num_string[0]
    else (num_string[(ind) - 1].to_i.odd? || num_string[ind].to_i.odd?) ?
      result << ("-#{char}") : result << char
    end
  end
  return result
end
puts dasherize_number(3333) # 3-3-3-3
puts dasherize_number(202) # 202
puts dasherize_number(305) # 3-0-5
puts dasherize_number(3887) # 3-88-7
puts dasherize_number(203) # 20-3
puts dasherize_number(1234567) # 1-2-3-4-5-6-7
puts

puts " ===== 22. capitalize_words ===== "
# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
# Difficulty: medium.
def capitalize_words(string)
  string.split.map(&:capitalize).join(" ")
end
puts capitalize_words("john is my son")
puts capitalize_words("this is a sentence")
puts capitalize_words("mike bloomfield")
puts 

puts " ===== 23. scramble_string ===== "
# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
# Difficulty: medium.
def scramble_string(string, indices)
  string_arr = string.split("")
  stringer = []
  string_arr.each_with_index { |l, i| stringer << string_arr[indices[i].to_i] }
  return stringer.join("").capitalize
end
puts scramble_string("abcd", [3, 1, 2, 0]) # dbca
puts scramble_string("uuishba", [3, 1, 4, 6, 2, 5, 0]) # suhaibu
puts scramble_string("eedr", [3, 1, 0, 2]) # reed
puts

puts " ===== 24. is_prime? ===== "
# Write a method that takes in an integer (greater than one) and
# returns true if it is prime; otherwise return false.
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# More generally, if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
#
# You would not be expected to already know about modulo for the
# challenge.
# Difficulty: medium.
def is_prime?(num)
  (2...num).all? {|x| num % x != 0}
  #Prime.prime?(num)
end
# 
# def is_prime?(num)
#   return "Invalid Entry" if num <= 1
#   ind = num - 1
#   while ind > 1 do
#     #num = num % ind
#     return false if num % ind == 0
#     ind -= 1
#   end
#   return true
# end
# 
puts is_prime?(7) # true
puts is_prime?(10) # false
puts is_prime?(3) # true
puts is_prime?(2) # true
puts is_prime?(1) # exception here. false
puts is_prime?(0) # exception here. invalid
puts is_prime?(19) # true
puts is_prime?(93) # false
puts 

puts " ===== 25. nth_prime ===== "
# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.
def nth_prime(number)
  my_count, dummy = 0, 2
  while true
    if is_prime?(dummy)
      my_count += 1
      return dummy if my_count == number
    end
    dummy += 1
  end 
  
  #primes = Prime.first (number)
  #return primes.last.inspect
end
# 
# def nth_prime(number)  
#   return "Invalid Entry" if number < 1
  
#   def is_prime?(num)
#     return "Invalid Entry" if num <= 1
#     ind = num - 1
#     while ind > 1 do
#       return false if num % ind == 0
#       ind -= 1
#     end
#     return true
#   end
  
#   my_count = 0
#   dummy = 2
#   while true
#     if is_prime?(dummy)
#       my_count += 1
#       return dummy if my_count == number
#     end
#     dummy += 1
#   end 
  
# end
#
puts nth_prime(1) # 2
puts nth_prime(2) # 3
puts nth_prime(5) # 11
puts nth_prime(17) # 59
#puts nth_prime(0) # erro
puts nth_prime(1001) # 7927
puts

puts " ===== 26. two_sum ===== "
# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
# Difficulty: medium.
def two_sum(arr)
  result = []
  arr.each_with_index do |elmnt1, ind1|
    arr.each_with_index do |elmnt2, ind2|
      result << "[#{ind1}, #{ind2}]" if (elmnt1 + elmnt2 == 0 and ind1 < ind2)
    end
  end
  return nil if result.empty?
  return result
end
puts two_sum([1, 3, 5, -3])
puts two_sum([1, 3, 5, 0, 0, 7, 4, -4, -7]) 
puts two_sum([1, 3, 5])
puts

puts " ===== 27. caesar_cipher ===== "
# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
# You may look at the ASCII printable characters chart:
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)
def caesar_cipher(offset, string)
  return "Invalid Entry" if offset < 0
  stringer, new_string = string.split(""), ""

  stringer.each_with_index do |lett, ind|
    if string[ind].ord == 32
      new_string << 32.chr
    elsif (stringer[ind].ord + offset).to_i <= 122
    new_string << (stringer[ind].ord + offset).chr
    else
      new_string << (stringer[ind].ord + offset - 26).chr
    end
  end
  return new_string
end
puts caesar_cipher(2, "alpha") # cnrjc
puts caesar_cipher(1, "abcxyz") # bcdyza
puts caesar_cipher(5, "almazyn") # fqrfeds
puts caesar_cipher(3, "abc xyz") # def abc
puts

puts " ===== 28. num_repeats ===== "
# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
# Difficulty: hard.
def num_repeats(string)
  arr = string.split("").sort
  storage = []
  counter = []
  arr.each do |char|
    if not storage.include?(char)
      storage << char
    else
      counter << char
    end
  end
  return counter.uniq.size
end
puts num_repeats("abcde") # 0
puts num_repeats("aaa") # 1
puts num_repeats("abab") # 2
puts num_repeats("mississippi") # 3
puts num_repeats("pacypkcmnoyonmlxlxqtrtsq") # 10
puts

puts " ===== 29. nearest_larger   ===== "
# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
# Difficulty: 2/5
def nearest_larger(arr, idx)
  diff = 1
  while true
    left = idx - diff
    right = idx + diff

    if (left >= 0) && (arr[left] > arr[idx])
      return left
    elsif (right < arr.length) && (arr[right] > arr[idx])
      return right
    elsif (left < 0) && (right >= arr.length)
      return nil
    end

    diff += 1
  end
end
puts


puts " ===== 30. no_repeats ===== "
# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
# Difficulty: 1/5
def no_repeats(year_start, year_end)
  no_repeats = []
  (year_start..year_end).each do |yr|
    no_repeats << yr if no_repeat?(yr)
  end

  no_repeats
end

def no_repeat?(year)
  chars_seen = []
  year.to_s.each_char do |char|
    return false if chars_seen.include?(char)
    chars_seen << char
  end

  return true
end
puts

puts " ===== 31. letter_count ===== "
# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
# Difficulty: 1/5
def letter_count(str)
  counts = Hash.new(0)

  str.each_char do |char|
    counts[char] += 1 unless char == " "
  end
  counts
end
puts

puts " ===== 32. ordered_vowel_words ===== "
# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
# Difficulty: 2/5
def ordered_vowel_words(str)
  words = str.split(" ")

  ordered_vowel_words = words.select do |word|
    ordered_vowel_word?(word)
  end

  ordered_vowel_words.join(" ")
end

def ordered_vowel_word?(word)
  vowels = ["a", "e", "i", "o", "u"]

  letters_arr = word.split("")
  vowels_arr = letters_arr.select { |l| vowels.include?(l) }

  (0...(vowels_arr.length - 1)).all? do |i|
    vowels_arr[i] <= vowels_arr[i + 1]
  end
end
puts

puts " ===== 33. wonky_coins ===== "
# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
# Difficulty: 3/5
def wonky_coins(n)
  return 1 if n == 0
  # call wonky_coins from inside itself. This is called *recursion*.
  return wonky_coins(n / 2) + wonky_coins(n / 3) + wonky_coins(n / 4)
end
puts

puts " ===== 34. morse_encode ===== "
# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.
# Difficulty: 2/5
MORSE_CODE = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--.."
}
def morse_encode(str)
  words = str.split(" ")
  encoded_words = words.map { |word| morse_encode_word(word) }
  encoded_words.join("  ")
end

def morse_encode_word(word)
  letters = word.split("")
  codes = letters.map { |l| MORSE_CODE[l] }
  codes.join(" ")
end
puts

puts " ===== 35. word_unscrambler ===== "
# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
# Difficulty: 3/5
def word_unscrambler(str, words)
  str_letters = str.split("").sort

  anagrams = []
  words.each do |word|
    word_letters = word.split("").sort
    anagrams << word if str_letters == word_letters
  end

  anagrams
end
# This could also be written as a two-liner:
#
# def word_unscrambler(str, words)
#   str_letters = str.split("").sort
#   words.select { |word| str_letters == word.split("").sort }
# end
puts

puts " ===== 36. rec_intersection ===== "
# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.
# Difficulty: 4/5
def rec_intersection(rect1, rect2)
  x_min = [rect1[0][0], rect2[0][0]].max
  x_max = [rect1[1][0], rect2[1][0]].min

  y_min = [rect1[0][1], rect2[0][1]].max
  y_max = [rect1[1][1], rect2[1][1]].min

  return nil if ((x_max < x_min) || (y_max < y_min))
  return [[x_min, y_min], [x_max, y_max]]
end
puts

puts " ===== 37. bubble_sort ===== "
#Implement Bubble sort in a method #bubble_sort that takes an Array 
#and modifies it so that it is in sorted order.
# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
# Difficulty: 3/5
def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true
    (arr.count - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
  end

  arr
end
my_array1 = [1,2,5,7,3,6]
my_array2 = ["alpha", "beta", "kappa", "delta","brown bag", "phenome","a"]
my_array3 = [1,2,4,5,4,7,3,6,4,5]
bubble_sort (my_array1)
bubble_sort (my_array2)
bubble_sort (my_array3)
puts


puts " ===== 38. puppy_golden_age ===== "
#Each year, the Census Bureau records the change in the population of puppies.
#In year zero, if 10 puppies are born and 5 die (sad!), there are 5 more
#puppies. In year one, if 10 puppies are born and 13 die, there are 3 fewer
#puppies. An array of changes in puppy populations would look like [5, -3, ...].

#I give you an array of annual changes in the puppy population. I want to
#find the Puppy Golden Age, the years in which the cumulative change in the
#puppy population was greatest. For instance, if the array is
#[100, -101, 200, -3, 1000], the Puppy Golden Age existed between
#years 2 and 4 (representing [200, -3, 1000]), since that's the time period
#during which the most puppies were born.
#Write a method, puppy_golden_age, which should return the start and end
#indices of the Puppy Golden Age:
def puppy_golden_age(arr)
  max = nil
  indices = []

  arr.each_with_index do |num1,index1|
    arr.each_with_index do |num2,index2|
      if index2 > index1
       new_max = arr.slice(index1, (index2 + 1 - index1)).reduce(:+)
       if max == nil || new_max > max
         max = new_max
         indices = [index1, index2]
       end
      end
    end
  end

  return indices
end
puts puppy_golden_age([100, -101, 200, -3, 1000]) == [2, 4]
puts puppy_golden_age([5, 3, -5, 1, 19, 2, -4]) == [0, 5]
puts puppy_golden_age([1, 2, 3, 4, 5, 6, 7]) == [0, 6]
puts


puts " ===== 39. combine_arrays ===== "
#Write a method that takes two sorted arrays and produces the sorted array that
#combines both.
#Restrictions:
#Do not call sort anywhere.
#Do not in any way modify the two arrays given to you.
#Do not circumvent (2) by cloning or duplicating the two arrays, only to modify the copies.
#Hint: you will probably need indices into the two arrays.
def combine_arrays(arr1,arr2)
  (arr1 + arr2).min(arr1.count + arr2.count).inspect
end
puts combine_arrays([1, 3, 5], [2, 4, 6]) # [1, 2, 3, 4, 5, 6]
puts combine_arrays(["a", "c", "e"], ["b", "d", "f"]) # ["a","b","c","d","e","f"]
puts
puts " ===== 40. subsets ===== "
#Attempt this after you have the other two problems working.
#Write a method that, given an array of unique items, finds all the subsets
def subsets(arr)
  my_arr = []
  0.upto(arr.length).each { |i| my_arr = my_arr + arr.combination(i).to_a }
  my_arr
end
puts subsets(["a", "b", "c"]) == [[], ["a"], ["b"], ["c"], ["a", "b"],
["a", "c"], ["b", "c"], ["a", "b", "c"]]
puts subsets([1,2,3]) == [[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]
puts

puts " ===== 41. Swingers Game ===== "
#Implement a Swingers game. The method swingers should take an array of 
#couple arrays and return the same type of data structure, with the 
#couples mixed up. Assume that the first item in the couple array is a 
#man, and the second item is a woman. Don't pair a person with someone of 
#their own gender (sorry to ruin your fun). An example run of the program:
#swingers([["Clyde", "Bonnie"],["Paris", "Helen"],["Romeo", "Juliet"]])
#takai = [["Clyde", "Bonnie"],["Paris", "Helen"],["Romeo", "Juliet"]]

#def swingers(pairs)
  #while true
  #new_pairs = pairs.map(&:first).zip(pairs.map(&:last).shuffle)
  #return new_pairs.inspect unless new_pairs.any? { |pair| pairs.include? pair }
  #false
  #end
#end
#puts swingers(takai)

def swingers(arr)
  men, women, fresh_arr = [], [], []
  arr.each {|x,y| men << x}
  arr.each {|x,y| women << y}
    new_arr = men.product(women)
    new_arr.each { |j| fresh_arr << j unless arr.include? j }
    fresh_arr[0..arr.count-1].shuffle.inspect 
end
takai = [["Clyde", "Bonnie"],["Paris", "Helen"],["Romeo", "Juliet"]]
puts swingers(takai)
puts
#Bonus problem: make a version of the swingers game that guarantees that
#all the couples end up with a different partner!


puts " ===== 42. strange_num ===== "
#Loop through all the numbers, stopping when you encounter a 
#number that is (a) >250 and (b) divisible by 7. Print this 
#number down!
def strange(num)
    result = []
    i = 0
    until i > num do
        result << i if (i > 250 and i % 7 == 0)  
        i += 1
    end
    result.inspect
end
puts strange 300
puts


puts " ===== 43. factors_of ===== "
#Print out all the factors for each of the numbers 1 through 100.
def factors_of(num)
    until num == 1 do
        vals = (1..num).select {|x| num % x == 0}
        puts "The factors of #{num} are [#{vals.join(", ")}]"
        num -= 1
    end
end
factors_of (10)

# def find_all_factors_between(n1, n2)
#   factors = -> (n) do 
#       (1..n).select {|i| n % i == 0}
#   end
#   (n1..n2).each do
#       |n| puts "Factors of #{n} are [#{factors.(n).join(', ')}]" 
#   end
# end
# find_all_factors_between(1,10)
puts


puts " ===== 44. subwords ===== "
#Write a method substrings that will take a String and return an array 
#containing each of its substrings. Example output: substrings("cat") => 
#["c", "ca", "cat", "a", "at", "t"].
#substrings
def substrings(string)
  result = []
  (0..string.length-1).each do |i|
    (i..string.length-1).each do |j|
      result << string[i..j]
    end
  end 
  result
end
puts substrings("catamaran")
puts
#subwords
dictionary = ["cat","a","catamaran","am","ran","come","go","sun"]
def subwords(word, reference)
  result = []
  words = substrings(word)
  words.each do |item|
    if (reference.include? item) && (!result.include? item)
      result << item
    end
  end
  result.sort.inspect
end
puts subwords("catamaran",dictionary)
puts


puts " ===== 45. rock, paper, Scissors ===== "
#Implement a Rock, Paper, Scissors game. The method rps should take a 
#string (either "Rock", "Paper" or "Scissors") as a parameter and return 
#the computer's choice, and the outcome of the match. Example:
#rps("Rock") # => "Paper, Lose"
#rps("Scissors") # => "Scissors, Draw"
#rps("Scissors") # => "Paper, Win"
def rps(string)
string = string.capitalize!
comp_ans = (rand(3) + 1)
prompter = true
  while prompter
    if ((comp_ans == 1 and string == "Rock") or 
      (comp_ans == 2 and string == "Scissors") or
      (comp_ans == 3 and string == "Paper"))
      puts "#{string}: Tied, Try again"
    elsif comp_ans == 1
      puts "Rock, You Lose!" if string == "Scissors"
      puts "Rock, You Win!!!" if string == "Paper"
    elsif comp_ans == 2
      puts "Scissors, You Lose!" if string == "Paper"
      puts "Scissors, You Win!!!" if string == "Rock"
    elsif comp_ans == 3
      puts "Paper, You Lose!" if string == "Rock"
      puts "Paper, You Win!!!" if string == "Scissors"
    else
      puts "Invalid Entry, Please Enter Rock, Paper, or Scissors"
    end
  prompter = false  
  end
end
# rps ("rock")
puts

puts " ===== 46. Sorting ===== "
class Array
  # QUICKSORT
  def quick_sort
    return self if self.length <= 1

    pivot_index = rand(self.length)
    pivot_value = self[pivot_index]
    self.delete_at(pivot_index)

    lesser = []
    greater = []

    self.each do |x|
      if x <= pivot_value
        lesser << x
      else
        greater << x
      end
    end

    return lesser.quick_sort + [pivot_value] + greater.quick_sort
  end

  
  # BUBBLE_SORT
  def bubble_sort
    return self if self.length <= 1
    loop do

      swapped = false
      (self.count - 1).times do |i|
        if self[i] >  self[i + 1]
          self[i], self[i + 1] = self[i + 1], self[i]
          swapped = true
        end
      end

      break if not swapped
    end

    self
  end


  # MERGE_SORT
  def merge_sort
    return self if self.length <= 1
    middle = self.length / 2
    merge(self[0...middle].merge_sort, self[middle..-1].merge_sort)
  end
  #--------------------------------------------------------------------
  def merge(left, right)
    result = []
    until left.length == 0 || right.length == 0 do
      result << (left.first <= right.first ? left.shift : right.shift)
    end
    result + left + right
  end


  # BINARY SEARCH
  # takes at most log-base-2 (n) number of searches to find the element. i.e, to what number must 2 be raised to in order to obtain 'n'. For example, log-base-2 (8) == 3, log-base-2 (1) == 0, log-base-2 (2) == 1, log-base-2 (64) == 6, log-base-2 (100) == 6.643856.
  def binary_search(target)
    arr = self.sort
    return 'NOT FOUND' if arr.empty? || target > arr.last

    low, hi = [0, self.count - 1]
    mid = hi / 2
    return arr[mid] if arr[mid].eql?(target)

    if arr[mid] > target
      arr[low..mid].binary_search(target)
    else 
      arr[(mid+1)..hi].binary_search(target)
    end

  end

  #INSERTION_SORT 
  def insertion_sort
    result = [self.first]
    self.delete_at(0)
  
    self.each do |i|
      last_ind = 0
      while last_ind < result.count
        if i <= result[last_ind]
          result.insert(last_ind, i)
          break
        elsif last_ind == result.count - 1
          result.insert(last_ind + 1, i)
          break
        end
        last_ind+= 1
      end
    end
  
    result
  end

  # SELECTION_SORT 
  def selection_sort
    # Selection sort can be very slow on large lists
    (self.count - 1).times do |i|
	    (i + 1).upto(self.count - 1) do |j| 
        self[i], self[j] = self[j], self[i] if self[i] > self[j] 
      end
    end

    self
  end

  # SHELL_SORT  
end


#TOWERS OF HANOI
#T(#discs, #rods)  #rods is usually 3
#T(3, 3)  => 3 discs and 3 rods
#T(4, 3)  => 4 discs and 3 rods

#puts 1 + 2
#puts [1,2,3] == [1,2,3]
#puts [1,2,3] == [3,2,1]
#puts "What's your pick?"
#choice = gets.chomp
#abort("Error message goes here") if choice != "ab"

#Write a Towers of Hanoi game.
#Keep three arrays, which represents the piles of discs.
#Pick a representation of the discs to store in the arrays;
#maybe just a number representing their size.
#In a loop, prompt the user (using gets) and ask what pile to
#select a disc from, and where to put it. After each move,
#check to see if they have succeeded in moving all the discs,
#to the final pile. If so, they win!"


# A Few Things to Try
# Write a program which tells you:

# 1. how many hours are in a year?
# 2. how many minutes are in a decade?
# 3. how many seconds old are you?
# 4. how many chocolates do you hope to eat in your life? 
# 5. Warning: This part of the program could take a while to compute!
# 6. Here's a tougher question:
# If I am 1246 million seconds old, how old am I?

# 1. Write a program which asks for a person's first name, then middle, then 
# last. Finally, it should greet the person using their full name.

# 2. Write a program which asks for a person's favorite number. Have your 
# program add one to the number, then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)

# 1. "99 bottles of beer on the wall..." Write a program which prints out the 
# lyrics to that beloved classic, that field-trip favorite: "99 Bottles of Beer
# on the Wall."

# 2. Write a Deaf Grandma program. Whatever you say to grandma (whatever you 
# type in), she should respond with  HUH?!  SPEAK UP, SONNY!, unless you shout 
# it (type in all capitals). If you shout, she can hear you (or at least she 
# thinks so) and yells back, NO, NOT SINCE 1938! To make your program really 
# believable, have grandma shout a different year each time; maybe any year at 
# random between 1930 and 1950. (This part is optional, and would be much 
# easier if you read the section on Ruby's random number generator at the end 
# of the methods chapter.) You can't stop talking to grandma until you shout BYE.

# 3. Hint: Don't forget about  chomp!  'BYE'with an Enter is not the same as 
# 'BYE' without one!

# 4. Hint 2: Try to think about what parts of your program should happen over 
# and over again. All of those should be in your while loop.

# 5. Extend your Deaf Grandma program: What if grandma doesn't want you to leave? 
# When you shout BYE, she could pretend not to hear you. Change your previous
# program so that you have to shout BYE three times in a row. Make sure to test 
# your program: if you shout BYE three times, but not in a row, you should still
# be talking to grandma.

# 6. Leap Years. Write a program which will ask for a starting year and an 
# ending year, and then puts all of the leap years between them (and including 
# them, if they are also leap years). Leap years are years divisible by four 
# (like 1984 and 2004). However, years divisible by 100 are not leap years
# (such as 1800 and 1900) unless they are divisible by 400 (like 1600 and 2000,
# which were in fact leap years). (Yes, it's all pretty confusing, but not as
# confusing as having July in the middle of the winter, which is what would 
# eventually happen.)

# 1. Expand upon englishNumber. First, put in thousands. So it should return 
# 'one thousand' instead of 'ten hundred' and 'ten thousand' instead of 'one 
# hundred hundred'.

# 2. Expand upon englishNumber some more. Now put in millions, so you get 
# 'one million' instead of 'one thousand thousand'. Then try adding billions 
# and trillions. How high can you go?

# 3. How about weddingNumber? It should work almost the same as englishNumber, 
# except that it should insert the word "and" all over the place, returning 
# things like 'nineteen hundred and seventy and two', or however wedding 
# invitations are supposed to look. I'd give you more examples, but I don't 
# fully understand it myself. You might need to contact a wedding coordinator 
# to help you.

# 4. "Ninety-nine bottles of beer..." Using englishNumber and your old program, 
# write out the lyrics to this song the right way this time. Punish your 
# computer: have it start at 9999. (Don't pick a number too large, though, 
# because writing all of that to the screen takes your computer quite a while. 
# A hundred thousand bottles of beer takes some time; and if you pick a million,
# you'll be punishing yourself as well!

# 1. Make an OrangeTree class. It should have a  height method which returns its 
# height, and a  oneYearPasses method, which, when called, ages the tree one year.
# Each year the tree grows taller (however much you think an orange tree should 
# grow in a year), and after some number of years (again, your call) the tree 
# should die. For the first few years, it should not produce fruit, but after a 
# while it should, and I guess that older trees produce more each year than younger
# trees... whatever you think makes most sense. And, of course, you should be able
# to countTheOranges (which returns the number of oranges on the tree), and 
# pickAnOrange (which reduces the @orangeCount by one and returns a string telling
# you how delicious the orange was, or else it just tells you that there are no 
# more oranges to pick this year). Make sure that any oranges you don't pick one 
# year fall off before the next year.

# 2. Write a program so that you can interact with your baby dragon. You should 
# be able to enter commands like  feed and walk, and have those methods be 
# called on your dragon. Of course, since what you are inputting are just strings,
# you will have to have some sort of method dispatch, where your program checks 
# which string was entered, and then calls the appropriate method.

# 1. Grandfather Clock. Write a method which takes a block and calls it once for 
# each hour that has passed today. That way, if I were to pass in the block do 
# puts 'DONG!' end, it would chime (sort of) like a grandfather clock. Test your 
# method out with a few different blocks (including the one I just gave you). 
# Hint: You can use  Time.now.hour to get the current hour. However, this returns 
# a number between 0 and 23, so you will have to alter those numbers in order to 
# get ordinary clock-face numbers (1 to 12).

# 2. Program Logger. Write a method called log, which takes a string description
# of a block and, of course, a block. Similar to  doSelfImportantly, it should 
# puts a string telling that it has started the block, and another string at the
# end telling you that it has finished the block, and also telling you what the
# block returned. Test your method by sending it a code block. Inside the block,
# put another call to log, passing another block to it. (This is called nesting.) 
# In other words, your output should look something like this:

# "Beginning "outer block"...
# Beginning "some little block"...
# ..."some little block" finished, returning:  5
# Beginning "yet another block"...
# ..."yet another block" finished, returning:  I like Thai food!
# ..."outer block" finished, returning:  false"

# 3. Better Logger. The output from that last logger was kind of hard to read, 
# and it would just get worse the more you used it. It would be so much easier 
# to read if it indented the lines in the inner blocks. To do this, you'll need 
# to keep track of how deeply nested you are every time the logger wants to
# write something. To do this, use a global variable, a variable you can see 
# from anywhere in your code. To make a global variable, just precede your 
# variable name with $, like these:  $global, $nestingDepth, and $bigTopPeeWee.
# In the end, your logger should output code like this:

# "Beginning "outer block"...
#   Beginning "some little block"...
#     Beginning "teeny-tiny block"...
#     ..."teeny-tiny block" finished, returning:  lots of love
#   ..."some little block" finished, returning:  42
#   Beginning "yet another block"...
#   ..."yet another block" finished, returning:  I love Indian food!
# ..."outer block" finished, returning:  true"
