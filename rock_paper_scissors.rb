#require 'pry'

WEAPONS = {r: "rock", p: "paper", s: "scissors"}

def best_weapon(weapon_one, weapon_two)
  win_lose_tie = ""

  if weapon_one == "rock"
    if weapon_two == "paper"
      win_lose_tie = "win"
    elsif  weapon_two == "scissors"
      win_lose_tie = "lose"
    else
      win_lose_tie = "tie"
    end
  end

  if weapon_one == "paper"
    if weapon_two == "rock"
      win_lose_tie = "lose"
    elsif  weapon_two == "scissors"
      win_lose_tie = "win"
    else
      win_lose_tie = "tie"
    end
  end

  if weapon_one == "scissors"
    if weapon_two == "rock"
      win_lose_tie = "win"
    elsif  weapon_two == "paper"
      win_lose_tie = "lose"
    else
      win_lose_tie = "tie"
    end
  end
  return win_lose_tie
end

puts "Rock, Paper, Scissors!"

loop do

  begin
    puts "Choose your weapon! (r)ock, (p)aper or (s)cissors"
    human_input = gets.chomp.downcase.to_sym
  end until WEAPONS.keys.include?(human_input)
  human_input = WEAPONS[human_input]
  machine_input  = WEAPONS.keys.shuffle.first
  machine_input = WEAPONS[machine_input]
  result = best_weapon(machine_input, human_input)
  puts "The computer picked #{machine_input}"
  puts "You picked #{human_input}"
  if result == "win"
    puts "You win!"
  elsif result == "lose"
    puts "Ah shucks, you lost!"
  else
    puts "It's a tie, try again!"
  end


end
