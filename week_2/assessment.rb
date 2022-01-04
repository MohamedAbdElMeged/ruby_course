def guess_game
    p "####### You have three chances to guess the correct number ###########"
    random_number = rand(1..7)
    tries = 3
    tries.times {|i|
    answer = gets.chomp.to_i
    if answer == random_number
        return "correct!"
    else
        p "not correct , you can guess #{tries-i} times"
    end
    }
    return "You lost!"
end


p "############## WELCOME TO GUESS GAME! ################"
p "WANNA PLAY? (Y/N)"
play_or = gets.chomp.downcase 
while play_or == "y"
    guess_game
    p "WANNA PLAY AGAIN? (Y/N)"
    play_or = gets.chomp.downcase 
end
abort("######## THANK YOU! ########")
