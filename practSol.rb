#--------------------------------------------------
# Banking on Ruby
#--------------------------------------------------
#Creating the Account Class
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance

  end
end

#Display the Balance 
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  public
  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: $#{@balance}"
  
      private
      def pin
        @pin = 1234
      end
      def pin_error
        "Access denied: incorrect PIN."
      end  
    
    else
      pin_error
    end   
    
  end
end


#Making a Withdrawal 
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
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


#Opening an Account 
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
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


#Private Affairs 
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end


  private
    
  def pin
    @pin = 1234
  end
    
  def pin_error
    "Access denied: incorrect PIN."
  end
end



#Well done! 
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
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


my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)
checking_account = Account.new("bugra", 12_000)

#What You'll Be Building
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
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


#--------------------------------------------------
# Blocks, Procs, and lambdas
#--------------------------------------------------
#Been Around the Block a Few Times 
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
process = lambda {|x| x.is_a? Integer}
ints = odds_n_ends.select(&process)


#Collect 'Em All 
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect { |num| num * 2 }
puts doubled_fibs


#Create Your Own! 
def greeter
  yield
end

phrase = Proc.new {puts "Hello there!"}
greeter(&phrase)



#Creating a Lambda 
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
first_half = lambda {|a, b| b < "M" }



#Creating a Proc 
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new {|a| a < 100}


#Keeping Your Code DRY 
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)


#Lambda Syntax 
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize = lambda { |x| x.to_sym }
symbols = strings.collect(&symbolize)


#Lambdas vs. Procs 
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end
puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end
puts batman_ironman_lambda


#Learning to Yield 
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end
block_test { puts ">>> We're in the block!" }


#Now You Try! 
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda {|x| x.is_a? Symbol }
symbols = my_array.select(&symbol_filter)


#Passing Your Lambda to a Method 
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda {|a, b| b < "M" }
a_to_m = crew.select(&first_half)
puts a_to_m


#Passing Your Proc to a Method 
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new {|a| a < 100}
youngsters = ages.select(&under_100)
puts youngsters


#Proc Syntax
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new {|a| a.floor}
ints = floats.collect(&round_down)


#Quick Review 

#Symbols, Meet Procs 
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts numbers_array.map(&:to_s)


#The Ruby Lambda 
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })


#Try It Yourself!
def double(b)
  yield b
end

double(2) {|a| a * 2 }


#Why Procs? 
over_4_feet = Proc.new do |height| height >= 4
end  

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

puts group_1.select(&over_4_feet)
puts = group_2.select(&over_4_feet)
puts = group_3.select(&over_4_feet)


#Yielding With Parameters
def yield_name(name)
  puts "In the method! Let's yield."
  yield name
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |name| puts "My name is #{name}." }
yield_name("Bugra") { |name| puts "My name is #{name}." }
# Now call the method with your name!


#You Know This! 
5.times { puts "I'm a block!" }



#--------------------------------------------------
# Control Flow in Ruby
#--------------------------------------------------
#And
boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

boolean_2 = true && 100 >= 100
boolean_2 = true

boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = true


#Billions of Booleans
# test_1 should be true
test_1 = ( 1 == 1 ) && ( 2 == 2 )

# test_2 = should be true
test_2 = ( 1 == 2 ) || ( 2 == 2 )

# test_3 = should be false
test_3 = ( 1 == 2 ) || ( 2 > 2 )


#Combining Booleans Operators
# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true


#Dare to Compare
# test_1 should be false
test_1 = 3 < 1

# test_2 = should be false
test_2 = 2 < 1

# test_3 = should be true
test_3 = 1 > 0


#Else
a = 2
if a < 6
  print "small"
else
  print "big"
end


#Elsif
a = 2
if a < 6
  print "small"
elsif a > 6
  print "big"
else
  print "fuck you"
end


#Equal or Not
puts 2 != 3
puts 2 == 3


#How It Works
print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end


#If
a = 8
if a > 4
  puts "haha"
end


#If, Else, and Elsif
a = 10
b = 11
if a < b
  print "a is less than b!"
elsif b > a
  print "b is less than a!"
else
  print "b is equal to a!"
end


#Less Than or Greater Than
test_1 = 17 > 16
test_2 = 21 < 30
test_3 = 9 <= 9
test_4 = -11 < 4


#Not
# boolean_1 = !true
boolean_1 = false

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false


#Or
# boolean_1 = 2**3 != 3**2 || true
boolean_1 = true

# boolean_2 = false || -10 > -9
boolean_2 = false

# boolean_3 = false || false
boolean_3 = false


#Practice Makes Perfect
# test_1 = 77 != 77
test_1 = false

# test_2 = -4 <= -4
test_2 = true

# test_3 = -44 < -33
test_3 = true

# test_4 = 100 == 1000
test_4 = false


#Unless
problem = false
print "Good to go!" unless problem


#Unless
hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end



#--------------------------------------------------
# Create a Histogram
#--------------------------------------------------
#Basic Methods 
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook| secondBook <=> firstBook }


#Blocks 
my_array = [1, 2, 3, 4, 5]

my_array.each { |array| puts array * array }


#Blocks Are Like Nameless Methods 
1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }


#Building the Words Array
puts "please text"
text = gets.chomp

words = text.split


#Call It!
def array_of_10
  puts (1..10).to_a
end

array_of_10


#Creating the Frequencies Hash 
puts "please text"
text = gets.chomp

words = text.split
frequencies = Hash.new(0)


#Foundations 
# library sorting code
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# How might we sort! the books in alphabetical order? (Hint, hint)

books.sort!


#Getting Technical 
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook| secondBook <=> firstBook }


#How Blocks Differ from Methods 
# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"


#Introduction to Sorting 
my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].
my_array.sort!


#Iterating Over the Array
puts "please text"
text = gets.chomp

words = text.split
frequencies = Hash.new(0)

words.each {|word| frequencies[word] += 1}


#Iterating Over the Hash
puts "please text"
text = gets.chomp

words = text.split
frequencies = Hash.new(0)

words.each {|word| frequencies[word] += 1}
words = words.sort_by {|aa, bb| bb}
frequencies = frequencies.sort_by { |k, v| v }
frequencies.reverse!
frequencies.each do |word, frequency|
  puts word + " " + frequency.to_s
end


#Let's Learn Return
def add(n , nn)
return n + nn
end


#Methods With Arguments
def welcome(name)
  return name
end


#Parameters and Arguments 
def cubertino(n)
  puts n ** 3
end

cubertino(8)


#Practice Makes Perfect 
def greeter(name)
  return "greetings" + "#{name}"
end

def by_three?(number)
  if number % 3 == 0 
    return true
  else 
    return false
  end
end


#Sorting
fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! {|fruit1, fruit2| fruit2 <=> fruit1 }


#Sorting the Hash 
puts "please text"
text = gets.chomp

words = text.split
frequencies = Hash.new(0)

words.each {|word| frequencies[word] += 1}


#Splat! 
def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up", "Justin", "Ben", "Kevin Sorbo")


#The Combined Comparison Operator 
book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"
puts book_1 <=> book_2


#Using Code Blocks 
# The block, {|i| puts i}, is passed the current
# array item each time it is evaluated. This block
# prints the item. 
[1, 2, 3, 4, 5].each { |i| puts i }

# This block prints the number 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts i * 5 }


#What You'll Be Building 
puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|aa, bb| bb }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }


#You Did It! 
puts "please text"
text = gets.chomp

words = text.split
frequencies = Hash.new(0)

words.each {|word| frequencies[word] += 1}
words = words.sort_by {|aa, bb| bb}
frequencies = frequencies.sort_by { |k, v| v }
frequencies.reverse!
frequencies.each do |word, frequency|
  puts word + " " + frequency.to_s
end


#You Know the Drill 
puts "please text"
text = gets.chomp




#--------------------------------------------------
# Data Structures
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

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }


#Access by Index 
demo_array = [100, 200, 300, 400, 500]

print demo_array[2]


#Accessing Hash Values 
pets = Hash.new
pets = { "tt" => "cat" }

puts pets["tt"]


#Adding to a Hash 
pets = Hash.new
pets["dog"]= "pets"


#Arrays of Arrays 
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }


#Arrays of Non-Numbers
string_array = ["ggg", "rrr", "rrr"]
puts string_array

#Creating Arrays 
my_array = [1]


#Hashes 
my_hash = { :a => "b"}


#Introduction to Hashas 
my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]


#Iterating Over Arrays 
languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
languages.each { |element| puts element}  


#Iterating Over Hashes 
secret_identities = { "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
} 
secret_identities.each { |aa, bb| puts "#{aa}: #{bb}"}


#Iterating Over Multidimensional Arrays 
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do | x |
  x.each do | y |
    puts y
  end
end


#Iterating Over a Hash
lunch_order = { "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}
lunch_order.each { |aa, bb| puts "#{bb}"}
puts "#{b}"


#Multidimensional Arrays 
my_array = [[1], [2]]


#Using Hash.new 
pets = Hash.new




#--------------------------------------------------
# Hashes and Symbols
#--------------------------------------------------
#A Key of a Different Color 
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}
puts menagerie.foxes

#All Aboard the Hash Rocket! 
movies = { :titanic => "ship"}


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
good_movies = movie_ratings.select{|k,v| v > 3}
puts good_movies


#Converting Between Symbols and Strings
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each { |string| symbols.push(string.to_sym) }

puts symbols 


#Dare to Compare
require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."


#Iterarting Over Hashes 
matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each do |key, value|
  puts value, matz[value]
end


#Many Paths to the Same Summit 
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]


symbols = []
strings.each { |x| symbols.push x.intern}


#More Methods, More Solutions 
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
movie_ratings.each_key {|aa, bb| puts aa, " "} 


#Nil a Formal Introduction 
creatures = { "weasels" => 0,
  "puppies" => 6,
  "platypuses" => 3,
  "canaries" => 1,
  "Heffalumps" => 7,
  "Tiggers" => 1
}
creatures{"fdff"}


#Setting Your Own Default 
no_nil_hash = Hash.new("dafsfs")
puts no_nil_hash


#Symbol Syntax 
# my_first_symbol = :example


#The Hash Rocket Has Landed 
movies = { titanic: "ship"}


#The Story So Far 
my_hash = { "name" => 1 }


#What are Symbols Used For? 
symbol_hash = { :name => "example",
:age => 27,
:hair => "brown" }
puts symbol_hash


#What's a Symbol? 
puts "string".object_id
puts "string".object_id

print :symbol.object_id
p :symbol.object_id




#--------------------------------------------------
# Intro to Ruby
#--------------------------------------------------
# 'puts' and 'print' 
puts "What's up?"
print "Oxnard Montalvo"

#upcase & downcase
puts "example".upcase
puts "example".downcase

#Comments
#Single-Line Comments
#Multi-Line Comments
=begin
I'm a comment!
I don't need any # symbols.
=end



#Strings and String Methods 
"example".downcase.reverse.upcase

#The 'lenght' Method 
"example".length

#The 'reverse' Method
"example".reverse





#--------------------------------------------------
# Loops & Iterators
#--------------------------------------------------
#Building Your Own 
for num in 1..20
  puts num
end


#Danger- Infinite Loops 
i = 0
while i < 5
  puts i
  i += 1 
end


#Inclusive and Exclusive Rangers 
for num in 1..15
  puts num
end


#Iterating with .times 
30.times { print "Ruby!"}


#Loop the Loop with Loop 
counter = 0
loop do
  print "Ruby!"
  counter += 1
  break if counter >= 30
end


#Looping with 'For' 
for k in 1..50 do 
  print k
end


#Looping with 'Until'
i = 1

until i > 50 do
  print i
  i +=1;
end


#Looping with 'While' 
a = 0
while a < 50
 a += 1
 print "#{a}"
end


#More Assignment Operators 
counter = 1
while counter < 11
  puts counter
  counter += 1
end


#Next! 
i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end


#Saving Multiple Values 
my_array = [1,2,3,4,5]


#The 'For' Loop 
for num in 1 < 10
  puts num
end


#The 'Until' Loop 
counter = 1
until counter > 10
  puts counter
  counter += 1  
end


#The 'While' Loop 
counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end


#The .each Iterator 
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end


#The .times Iterator 
10.times { print "dfdf" }


#Try It Out! 
odds = [1,3,5,7,9]
odds.each do |x|
  x *= 2
  print x
end





#--------------------------------------------------
# Methods, Blocks, & Sorting
#--------------------------------------------------
#Create Your Own
def greeting
  puts "greeting"
end


#Why Methods
def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end
prime(2)
prime(9)
prime(11)
prime(51)
prime(97)




#--------------------------------------------------
# Object-Oriented Programming I
#--------------------------------------------------
#Class Basics 
class Message
  def initialize(from, to)
    @from = from
    @to = to
  end
end

#Class Syntax 
class Person
end

#Classes Are Serious Business 
def create_record(attributes, raise_error = false)
  record = build_record(attributes)
  yield(record) if block_given?
  saved = record.save
  set_new_record(record)
  raise RecordInvalid.new(record) if !saved && raise_error
  record
end

#Classing It Up 
class Person
  def initialize     
  end
end

#For Instance 
def initialize(age, profession)
  @age = age
  @profession = profession
end

#Forge an Object in the Fires of Mount Ruby 
class Message
  @@messages_sent = 0
  def initialize(from, to)
    @@messages_sent += 1 
    @from = from
    @to = to       
  end
end
my_message = Message.new("b", "d")


#Getting Classier 
class Message
  @@messages_sent = 0
  def initialize(from, to)
    @@messages_sent += 1 
    @from = from
    @to = to
  end
end

#Inheritance Syntax 
class Application
  def initialize(name)
    @name = name
  end
end

class MyApp < Application
end


#Inheriting a Fortune 
class Message
  @@messages_sent = 0
  def initialize(from, to)
    @@messages_sent += 1 
    @from = from
    @to = to       
  end
end
my_message = Message.new("b", "d")

class Email < Message
  def initialize(subject)
    @subject = subject
  end
end


#Instantiating Your First Object
class Person
  def initialize(name)
    @name = name
  end
end
matz = Person.new("Yukihiro")

#Naming Your Variables 
class MyClass
  $my_variable = "Hello!"
end   
puts $my_variable


#Override! 
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
  def fight
    return "Breathes fire!"
  end
end



#Scope it Out 
class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}
  
  def initialize(username, password)
    @username = username
    @password = password
  end
  
  def current_user
    @username
  end
  
  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.


#There Can Be Only One! 
class Creature
  def initialize(name)
    @name = name
  end
end

class Person
  def initialize(name)
    @name = name
  end
end
class Dragon < Creature; end
class Dragon < Person; end


#Twice the @, Twice as Classy 

#Up, Up, and Away!
class Message
  @@messages_sent = 0
  def initialize(from, to)
    @@messages_sent += 1 
    @from = from
    @to = to       
  end
end
my_message = Message.new("b", "d")

class Email < Message
  def initialize(from, to)
    super
  end
end



#Watch Your Step 
class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error


#What's in a @name?
class Person
  def initialize(name)
    @name = name
  end
end
new_student = Person.new("bugra")
p new_student


#When Good isn't Good Enough 
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
  def fight
    puts "Instead of breathing fire..."
    super
  end
end


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

puts ruby.description
puts python.description
puts javascript.description





#--------------------------------------------------
# Object-Oriented Programming II
#--------------------------------------------------
#A Few Requirements 
require 'date'
puts Date.today

#A Matter of Public Knowledge 
class Application
  attr_accessor :status

  def initialize 
  end

  public
  def print_status
    puts "All systems go!"
  end
end


#Extend Your Knowledge 
# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  inclued ThePresent
end

TheHereAnd.now


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
acute.cosine


#Going Public 
class Dog
  public
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public
  def bark
    puts "Woof!"
  end
end


#Imitating Multiple Inheritance 
module MartialArts
  def swordsman
    puts "I'm a swordsman"
  end
end




class Ninja
  include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
  include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end


#Mixing for the Win 
module Languages
  FAVE = "Ruby"  # This is what you typed before, right? :D
end

class Master
  include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end
total = Master.new
total.victory


#Module Magic 
module Languages
  FAVE = "ruby"
end


#Module Syntax 
module MyLibrary
  FAVE_BOOK = "sofi"
end


#Need-to-Know Basis
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public    # This method can be called from outside the class.
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   # This method can't!
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end
eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number


#Private! Keep Out! 
class Dog
  public
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def bark
    puts "Woof!"
  end
    
  private
  def id
    @id_number = 12345
  end    
end


#Quick Review Building a Class 
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end
end


#Resolve to Keep Learning 
module Math
  def self
    PI
  end
end


#The Marriage of Modules and Classes 
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")
peter.jump
jiminy.jump


#What's a Module? 
module Circle
  PI = 3.141592653589793
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end


#attr_accessor 
class Person
  attr_reader :name
  attr_accessor :job
  
  def initialize(name, job)
    @name = name
    @job = job
  end
end


#attr_reader, attr_writer 
class Person
  def initialize(name, job)
   attr_reader :name
   attr_writer :job
  end
  
  def name
    @name
  end
  
  def job=(new_job)
    @job = new_job
  end
end






#--------------------------------------------------
#  Ordering Your Library
#--------------------------------------------------
#Default Parameters 
def alphabetize(arr, rev=false)
end

#Defining Our Method 
def alphabetize
end

#Sorting
def alphabetize(arr, rev=false)
end

#Sorting With Control Flow 
def alphabetize(arr, rev=false)
  if rev == true
    alphabetize.sort {|book1, book2| book2 <=> book1}
  else
    alphabetize.sort! {|book1, book2| book1 <=> book2}
    return a
  end
end

#What You'll Be Building 
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


# #You Did It! (For Real This Time)
# def alphabetize(arr, rev=false)
#   if 
#     alphabetize.sort.reverse {|book1, book2| book2 <=> book1}
#   else
#     alphabetize.sort! {|book1, book2| book1 <=> book2}
#     return arr
#   end
# end





#--------------------------------------------------
# Putting the Form in Formatter
#--------------------------------------------------
#Formatting with String Methods 
first_name = gets.chomp
last_name = gets.chomp
city = gets.chomp
state = gets.chomp

first_name.capitalize!
last_nane.capitalize!
city.capitalize!
state.upcase!


#Getting Input 
first_name = "Bb"
gets.chomp = first_name


#Great Work! 
first_name = gets.chomp
last_name = gets.chomp
city = gets.chomp
state = gets.chomp

first_name.capitalize!
last_nane.capitalize!
city.capitalize!
state.upcase!


#Printing the Output 
print "first_name?"
gets.chomp = first_name

print "last_name?"
gets.chomp = last_name

print "city"
gets.chomp = city

print "state"
gets.chomp = state

puts "#{first_name}", "#{last_name}", "#{city}.upcase", "#{state}.upcase"


#Prompting the User 
print "What's your name?"
gets.chomp


#Repeat for More Input 
print "first_name?"
gets.chomp = first_name

print "last_name?"
gets.chomp = last_name

print "city"
gets.chomp = city

print "state"
gets.chomp = state

puts "#{first_name}", "#{last_name}", "#{city}.upcase", "#{state}.upcase"


#What You'll Be Building 
print "example"
first_name = gets.chomp
first_name.capitalize!

print "example2"
last_name = gets.chomp
last_name.capitalize!

print "example3"
city = gets.chomp
city.capitalize!

print "example4"
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"






#--------------------------------------------------
# Redacted!
#--------------------------------------------------
#Control Flow Know-How 
puts "try"
puts "trytry"
text = gets.chomp
redact = gets.chomp
words = text.split(" ")

words.each do |word|
    if word != "REDACTED"
    print "#{word}" + " "
    else
    print "REDACTED"
    end
end


#Getting the User's Input 
puts "try"
puts "trytry"
text = gets.chomp
redact = gets.chomp


#The .split Method
puts "try"
puts "trytry"
text = gets.chomp
redact = gets.chomp
words = text.split(" ")


#What You'll Be Building 
puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end



#--------------------------------------------------
# The Refractor Factory
#--------------------------------------------------
#Final Push 
# prime_array ||= []
# n = Integer if n <= 0
# n != integer unless n != 0 
    
    $VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
     "n must be an integer."
  end

  if n <= 0
   "n must be greater than 0."
  end
  
  prime_array = [] if prime_array.nil?
  
  prime = Prime.new
  n.times {prime_array<<(prime.next)}
 
  return prime_array
end

first_n_primes(10)



#Less is More 
# prime_array ||= []
# n = Integer if n <= 0
# n != integer unless n != 0 
    
    
    $VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
     "n must be an integer."
  end

  if n <= 0
   "n must be greater than 0."
  end
  
  prime_array = [] if prime_array.nil?
  
  prime = Prime.new
  until prime_array.length > n
    prime_array.push(prime.next)
  end
  return prime_array
end

first_n_primes(10)
Contact GitHub API Training Shop Blog About



#Nice Work! 
require 'prime'

def first_n_primes(n)
  # Check for correct input!
  "n must be an integer" unless n.is_a? Integer
  "n must be greater than 0" if n <= 0

  # The Ruby 1.9 Prime class makes the array automatically!
  prime = Prime.instance
  prime.first n
end

first_n_primes(10)


#Omit Needless Words 
prime_array ||= []
n = Integer if n <= 0
n != integer unless n != 0 


#The Rubyist's Loop 
# prime_array ||= []
# n = Integer if n <= 0
# n != integer unless n != 0 
    
    
    $VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
     "n must be an integer."
  end

  if n <= 0
   "n must be greater than 0."
  end
  
  prime_array = [] if prime_array.nil?
  
  n.times {prime_array.push(prime.next)}
  
  return prime_array
end
puts first_n_primes(10)


#To Be or Not to Be 
prime_array ||= []









#--------------------------------------------------
# The Zen of Ruby
#--------------------------------------------------
#'For' Shame! 
3.times { puts "I'm a refactoring master!"}

#A Simpler 'If' 
puts "smart boy" if gets.chomp = a.to_s

#Being Pushy 
alphabet = ["a", "b", "c"]
alphabet << ("d") # Update me!

caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!

#Call and Response
age = 26

age.respond_to?(:next)


#Contidional Assignment 
favorite_animal ||= "cat"

#Contidional Assignment 
favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book


#Implicit Return 
def square(num)
   num * num 
end


puts square(3)


#Implicit Return
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end


#In Case of Many Options 
puts "What's your favorite language?"
language = gets.chomp


case language
when "Ruby"
  puts "Ruby is great for web apps!"
when "Python"
  puts "Python is great for science."
when "JavaScript"
  puts "JavaScript makes websites awesome."
when  "HTML"
  puts "HTML is what websites are made of!"
when  "CSS"
  puts "CSS makes websites pretty."
else
  puts "I don't know that language!"
end


#Now You Try! 

puts favorite_language ||= "Ruby"


#One-Liners
puts "One is less than two!" if 1 < 2


#Ruby is a Delight 
ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly


#Short-Circuit Evaluation 
def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b


#String Interpolation 
favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love " "#{thing}" "!"
end


#The One-Line Unless 
puts " Type your Ruby code below!" unless a = b


#The Right Tool for the Job 
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array[1..10].each {|aa| puts aa if a % 2 == 0}


#The Ternary Operator 
1 < 2 ? "One is less than two!" : "One is not less than two."

puts 1 < 2 ? "One is less than two!" : "One is not less than two."


#Up the Down Staircase 
"L".upto("P") { |letter| puts letter.capitalize }


#When and Then The Case Statement 
puts "Hello there!"
greeting = gets.chomp

case greeting
  when "English"
    puts "Hello!"
  when "French" 
    puts "Bonjour!"
  when "German"  
    puts "Guten Tag!"
  when "Finnish" 
    puts "Haloo!"
  else 
    puts "I don't know that language!"
end






#--------------------------------------------------
# Thith Meantime War!
#--------------------------------------------------
#Congratulationth! 
print "say something" 
user_input = gets.chomp

if user_input.gsub!(/s/, "th")
    puts "#{user_input}"
else
    puts "there is no s"
end


#Downcase!
print "say something"
input = gets.chomp

print input.downcase!


#Getting User Input 
print "say something"
input = gets.chomp

print input


#Returning the Final String-Er,"Thrting" 
print "say something" 
user_input = gets.chomp

if user_input.gsub!(/s/, "th")
    puts "#{user_input}"
else
    puts "there is no s"
end


#Setting Up the 'Else' Branch
print "say something" 
user_input = gets.chomp

if user_input.gsub!(/s/, "th")
    puts "#{user_input}"
else
    puts "there is no s"
end


#Setting Up the 'If' Branch, Part 1
print "say something" 
user_input = gets.chomp

if user_input.include? "s"
    puts "#{user_input}"
end


#Setting Up the 'If' Branch, Part2 
print "say something" 
user_input = gets.chomp

if user_input.gsub!(/s/, "th")
    puts "#{user_input}"
end


#What You'll Be Builnd 
print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do!"
end
  
puts "Your string is: #{user_input}"





#--------------------------------------------------
# Virtual Computer
#--------------------------------------------------
#Create Your Class 
class Computer
    def initialize
    end
end


#Fancify Your Initialize Method 
class Computer
    def initialize(username, password)
        @username = usernmae
        @password = password
        @files = {}
    end
end


#Getting More Creative 
class Computer
    @@users = {}
    def initialize(username, password)
        @@users[username] = password
        @username = usernmae
        @password = password
        @files = {}
    end

    def create(filename)
    time = Time.now
    @files[filename] = time

    puts "New file created"
    end
end





#Have a Little Class 
class Computer
    @@users = {}
    def initialize(username, password)
        @@users[username] = password
        @username = usernmae
        @password = password
        @files = {}
    end
end


#Instantiation Nation
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

my_computer = Computer.new("eric", 01234)
your_computer = Computer.new("you", 56789)

my_computer.create("groceries.txt")
your_computer.create("todo.txt")

puts "Users: #{Computer.get_users}"


#What You'll Be Building
class Machine
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
  
  def Machine.get_users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

puts "Users: #{Machine.get_users}"


#Who're the Users? 
class Computer
    @@users = {}
    def initialize(username, password)
        @@users[username] = password
        @username = usernmae
        @password = password
        @files = {}
    end


    def create(filename)
    time = Time.now
    @files[filename] = time

    puts "New file created"
    end

    def Computer.get_users
    @@class_variable
    end

end

#You Did It!

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

my_computer = Computer.new("eric", 01234)
your_computer = Computer.new("you", 56789)

my_computer.create("groceries.txt")
your_computer.create("todo.txt")

puts "Users: #{Computer.get_users}"
#--------------------------------------------------
# The End
#--------------------------------------------------




# Time estimate: 1.5hrs
# 1. Loop through all the numbers, stopping when you encounter a number that is (a) >250 and (b) divisible by 7. Print this number down!

# 2.Print out all the factors for each of the numbers 1 through 100.

# 3.Implement Bubble sort in a method #bubble_sort that takes an Array and modifies it so that it is in sorted order. Bubble sort visualization.
# Bubble sort, sometimes incorrectly referred to as sinking sort, is a simple sorting algorithm that works by repeatedly stepping through the list to be sorted, comparing each pair of adjacent items and swapping them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted. The algorithm gets its name from the way smaller elements "bubble" to the top of the list. Because it only uses comparisons to operate on elements, it is a comparison sort. Although the algorithm is simple, most other algorithms are more efficient for sorting large lists.

# 4. Write a method substrings that will take a String and return an array containing each of its substrings. Example output: substrings("cat") => ["c", "ca", "cat", "a", "at", "t"]

# 5. Implement a Rock, Paper, Scissors game. The method rps should take a string (either "Rock", "Paper" or "Scissors") as a parameter and return the computer's choice, and the outcome of the match. Example:
# rps("Rock") # => "Paper, Lose"
# rps("Scissors") # => "Scissors, Draw"
# rps("Scissors") # => "Paper, Win"

# 6. Implement a Swingers game. The method swingers should take an array of couple arrays and return the same type of data structure, with the couples mixed up. Assume that the first item in the couple array is a man, and the second item is a woman. Don't pair a person with someone of their own gender (sorry to ruin your fun). An example run of the program:
# swingers([
#   ["Clyde", "Bonnie"],
#   ["Paris", "Helen"],
#   ["Romeo", "Juliet"]
# ])

# 7. Bonus problem: make a version of the swingers game that guarantees that all the couples end up with a different partner!

# 8. lucky_sevens?
# Write a function lucky_sevens?(numbers), which takes in an array of integers and returns true if any three consecutive elements sum to 7.

# lucky_sevens?([2,1,5,1,0]) == true # => 1 + 5 + 1 == 7
# lucky_sevens?([0,-2,1,8]) == true # => -2 + 1 + 8 == 7
# lucky_sevens?([7,7,7,7]) == false
# lucky_sevens?([3,4,3,4]) == false
# Make sure your code correctly checks for edge cases (i.e. the first and last elements of the array).

# 9. oddball_sum
# Write a function oddball_sum(numbers), which takes in an array of integers and returns the sum of all the odd elements.

# oddball_sum([1,2,3,4,5]) == 9 # => 1 + 3 + 5 == 9
# oddball_sum([0,6,4,4]) == 0
# oddball_sum([1,2,1]) == 2


# 10. disemvowel
# Write a function disemvowel(string), which takes in a string, and returns that string with all the vowels removed. Treat "y" as a consonant.
# disemvowel("foobar") == "fbr"
# disemvowel("ruby") == "rby"
# disemvowel("aeiou") == ""



#Exercises
# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
# Don't use String's reverse method; that would be too simple.
# Difficulty: easy.
def reverse(string)
  reversed_string = ""

  i = 0
  while i < string.length
    reversed_string = string[i] + reversed_string
    i += 1
  end

  return reversed_string
end




# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
# As a special case, `factorial(0) == 1`.
# Difficulty: easy.
def factorial(n)
  if n < 0
    return nil
  end

  result = 1
  while n > 0
    result = result * n

    n -= 1
  end

  return result
end


# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
# You may use the String `split` method to aid you in your quest.
# Difficulty: easy.
def longest_word(sentence)
  words = sentence.split(" ")
  longest_word = nil
  word_idx = 0

  while word_idx < words.length
    current_word = words[word_idx]

    if longest_word == nil
      longest_word = current_word
    elsif longest_word.length < current_word.length
      longest_word = current_word
    end

    word_idx += 1
  end

  return longest_word
end



# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
# Difficulty: easy.
def sum_nums(num)
  result = 0

  i = 0
  while i <= num
    result += i
    i += 1
  end

  return result
end



# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
# Difficulty: easy.
def time_conversion(minutes)
  hours = 0

  while minutes >= 60
    hours += 1
    minutes -= 60
  end

  if minutes < 10
    minutes_s = "0" + minutes.to_s
  else
    minutes_s = minutes.to_s
  end

  return hours.to_s + ":" + minutes_s
end



# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
# Difficulty: easy.
def count_vowels(string)
  num_vowels = 0

  i = 0
  while i < string.length
    if (string[i] == "a" || string[i] == "e" || string[i] == "i" || string[i] == "o" || string[i] == "u")
      num_vowels += 1
    end

    i += 1
  end

  return num_vowels
end



# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
# Difficulty: easy.
def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end



# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
# Difficulty: medium.
def nearby_az(string)
  idx1 = 0
  while idx1 < string.length
    if string[idx1] != "a"
      idx1 += 1
      next
    end

    idx2 = idx1 + 1
    while (idx2 < string.length) && (idx2 <= idx1 + 3)
      if string[idx2] == "z"
        return true
      end

      idx2 += 1
    end

    idx1 += 1
  end

  return false
end



# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
# Difficulty: medium.
def two_sum(nums)
  idx1 = 0
  while idx1 < nums.length
    idx2 = idx1 + 1
    while idx2 < nums.length
      if nums[idx1] + nums[idx2] == 0
        return [idx1, idx2]
      end

      idx2 += 1
    end

    idx1 += 1
  end

  return nil
end



# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# Difficulty: medium.

def is_power_of_two?(num)
  if num < 1
    return false
  end

  while true
    if num == 1
      return true
    elsif num % 2 == 0
      num = num / 2
    else
      return false
    end
  end
end


# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
# Difficulty: medium.
def third_greatest(nums)
  first = nil
  second = nil
  third = nil

  idx = 0
  while idx < nums.length
    value = nums[idx]
    if first == nil || value > first
      third = second
      second = first
      first = value
    elsif second == nil || value > second
      third = second
      second = value
    elsif third == nil || value > third
      third = value
    end

    idx += 1
  end

  return third
end


# Write a method that takes in a string. Your method should return the
# most common letter in the string, and a count of how many times it
# appears.
# Difficulty: medium.
def most_common_letter(string)
  most_common_letter = nil
  most_common_letter_count = nil

  idx1 = 0
  while idx1 < string.length
    letter = string[idx1]
    count = 0

    idx2 = 0
    while idx2 < string.length
      if string[idx2] == letter
        count += 1
      end
      idx2 += 1
    end

    if (most_common_letter_count == nil) || (count > most_common_letter_count)
      most_common_letter = letter
      most_common_letter_count = count
    end

    idx1 += 1
  end

  return [most_common_letter, most_common_letter_count]
end




# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
# Difficulty: medium.
def dasherize_number(num)
  num_s = num.to_s

  result = ""

  idx = 0
  while idx < num_s.length
    digit = num_s[idx].to_i

    if (idx > 0)
      prev_digit = num_s[idx - 1].to_i
      if (prev_digit % 2 == 1) || (digit % 2 == 1)
        result += "-"
      end
    end
    result += num_s[idx]

    idx += 1
  end

  return result
end



# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
# Difficulty: medium.
def capitalize_words(string)
  words = string.split(" ")

  idx = 0
  while idx < words.length
    word = words[idx]

    word[0] = word[0].upcase

    idx += 1
  end

  return words.join(" ")
end



# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
# Difficulty: medium.
def scramble_string(string, positions)
  result = ""

  i = 0
  while i < positions.length
    result = result + string[positions[i]]
    i += 1
  end

  return result
end



# Write a method that takes in an integer (greater than one) and
# returns true if it is prime; otherwise return false.
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# More generally, if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
# You would not be expected to already know about modulo for the
# challenge.
#
# Difficulty: medium.
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end



# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
# Difficulty: medium.
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)
  prime_num = 0

  i = 2
  while true
    if is_prime?(i)
      prime_num += 1
      if prime_num == n
        return i
      end
    end

    i += 1
  end
end



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
#
# Difficulty: hard.
def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

def longest_palindrome(string)
  best_palindrome = nil

  idx1 = 0
  while idx1 < string.length
    length = 1
    while (idx1 + length) <= string.length
      substring = string.slice(idx1, length)

      if palindrome?(substring) && (best_palindrome == nil || substring.length > best_palindrome.length)
        best_palindrome = substring
      end

      length += 1
    end

    idx1 += 1
  end

  return best_palindrome
end



# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
# Difficulty: medium.
def greatest_common_factor(number1, number2)
  # start i at smaller of number1, number2
  i = nil
  if number1 <= number2
    i = number1
  else
    i = number2
  end

  while true
    if (number1 % i == 0) && (number2 % i == 0)
      return i
    end

    i -= 1
  end
end




# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#  http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)
def caesar_cipher(offset, string)
  words = string.split(" ")

  word_idx = 0
  while word_idx < words.length
    word = words[word_idx]

    letter_idx = 0
    while letter_idx < word.length
      char_i = word[letter_idx].ord - "a".ord

      new_char_i = (char_i + offset) % 26
      word[letter_idx] = ("a".ord + new_char_i).chr

      letter_idx += 1
    end

    word_idx += 1
  end

  return words.join(" ")
end



# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
# Difficulty: hard.
def num_repeats(string)
  counts = []

  str_idx = 0
  while str_idx < string.length
    letter = string[str_idx]

    counts_idx = 0
    while counts_idx < counts.length
      if counts[counts_idx][0] == letter
        counts[counts_idx][1] += 1
        break
      end
      counts_idx += 1
    end

    if counts_idx == counts.length
      # didn't find this letter in the counts array; count it for the
      # first time
      counts.push([letter, 1])
    end

    str_idx += 1
  end

  num_repeats = 0
  counts_idx = 0
  while counts_idx < counts.length
    if counts[counts_idx][1] > 1
      num_repeats += 1
    end

    counts_idx += 1
  end

  return num_repeats
end



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


puts " ================================================================= "
puts " ============================== START ============================ "
puts " ================================================================= "
puts ''

puts " ============================== 01 ============================== "
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
puts ''
puts ''


puts " ============================== 02 ============================== "
#Write a method that takes two sorted arrays and produces the sorted array that
#combines both.

#Restrictions:
#Do not call sort anywhere.
#Do not in any way modify the two arrays given to you.
#Do not circumvent (2) by cloning or duplicating the two arrays, only to modify the copies.
#Hint: you will probably need indices into the two arrays.

def combine_arrays(arr1,arr2)
  (arr1 + arr2).min(arr1.count + arr2.count)
end
puts combine_arrays([1, 3, 5], [2, 4, 6]) == [1, 2, 3, 4, 5, 6]
puts combine_arrays(["a", "c", "e"], ["b", "d", "f"]) == ["a","b","c","d","e","f"]
puts ''
puts ''

puts " ============================== 03 ============================== "
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
puts ''
puts ''

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
