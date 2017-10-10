# random number
number = rand(4) + 1 # between 1 and 4

# iterpolation
# puts "I randomly selected this number - #{number}"

# common conversion
v1 = 10.to_s # converts number to a string
v2 = "20".to_i # converts a string to a integer
v3 = "12.36".to_f # converts a string to a float




def guess_the_number(guess, num)
  if guess == num
    puts "that's the number!"
  else
    puts "not the same number"
  end
end

# puts "make a guess at the number, between 1 and 4"
# input = gets.chomp.to_i

# guess_the_number(input, number)

def make_a_guess
  puts "make a guess between 1 and 4"
  rand_num = rand(4) + 1
  while gets.chomp.to_i != rand_num
    puts "try again"
  end
  puts "you guess the number!"
end

make_a_guess
