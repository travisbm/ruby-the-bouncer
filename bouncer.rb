def check_age(age)
  array = ["do nothing", "vote", "smoke", "drink", "rent a car"]

  if age < 18
    puts "You can #{array[0]}!"
  elsif age >= 18 && age < 21
    puts "You can #{array[1]} and #{array[2]}!"
  elsif age >= 21 && age < 25
    puts "You can #{array[1]}, #{array[2]} and #{array[3]}!"
  elsif age >= 25
    puts "You can #{array[1]}, #{array[2]}, #{array[3]} and #{array[4]}!"
  else
    exit
  end
end

loop do
  print "How old are you? Enter a number or (Q)uit > "
  age = gets.chomp.upcase

  if age == "Q"
    exit
  else
    check_age(age.to_i)
  end #end of if statement
end #end of do loop
