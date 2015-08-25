print "How old are you? > "
age = gets.chomp.to_i

puts age

def check_age(age)
  array = ["do nothing", "vote", "smoke", "drink", "rent a car"]

  if age < 18
    puts "You can #{array[0]}!"
  else
    exit
  end
end

check_age(age)
