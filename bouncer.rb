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

def check_age_uk(age)
  array = ["do nothing", "vote", "smoke", "drink", "rent a car"]

  if age < 18
    if age == 16 || age == 17
      print "Are your parents home (Y)es or (N)o > "
      ans = gets.chomp.upcase

      if ans.to_s == "Y"
        puts "You can drink with your mom, dork."
      else
        puts "You can #{array[0]}!"
      end #end of yes no if statement

    end #end of 16 or 17 if statement
  elsif age >= 18 && age <= 25
    puts "You can #{array[1]}, #{array[2]} and #{array[3]}!"
  elsif age >= 25
    puts "You can #{array[1]}, #{array[2]}, #{array[3]} and #{array[4]}!"
  else
    exit
  end
end

loop do
  print "What country are you from? Enter US or UK > "
  country = gets.chomp.upcase

  print "How old are you? Enter a number or (Q)uit > "
  age = gets.chomp.upcase

  if age == "Q"
    exit
  elsif country == "US"
    check_age(age.to_i)
  elsif country == "UK"
    check_age_uk(age.to_i)
  else
    puts "You are typing nonsense!"
  end #end of if statement
end #end of do loop
