puts "Hi, I am going to pick a number between 1 and 100 and you have to guess it."
puts "I'm picking my number now..."
random_num= rand(1..100)
puts random_num

puts "Now enter your number guess."
puts "When you are done guessing, just press enter."
person_guess = gets.chomp
person_guess_num = person_guess.to_i

while person_guess != ""
    if random_num == person_guess_num
      puts "You gussed correctly."
      puts "Do you want to keep playing? (y/n)"
      response = gets.chomp
        if response == "y"
          puts "Hi again, I am going to pick a number between 1 and 100 and you have to guess it."
          puts "I'm picking my number now..."
          random_num= rand(1..100)
          puts random_num
          puts "Now enter your number guess."
          puts "When you are done guessing, just press enter."
          person_guess = gets.chomp
          person_guess_num = person_guess.to_i
          if random_num > person_guess_num
            puts "Your guess was too low"
            puts "Try to guess again"
            person_guess = gets.chomp
            person_guess_num = person_guess.to_i
          else random_num < person_guess_num
            puts "Your guess was too high"
            puts "Try to guess again"
            person_guess = gets.chomp
            person_guess_num = person_guess.to_i
          end
     else
          puts "ok see you next time."
          person_guess_num = ""
          break
    end
    elsif random_num > person_guess_num
      puts "Your guess was too low"
      puts "Try to guess again"
      person_guess = gets.chomp
      person_guess_num = person_guess.to_i
    else random_num < person_guess_num
      puts "Your guess was too high"
      puts "Try to guess again"
      person_guess = gets.chomp
      person_guess_num = person_guess.to_i
    end
end
