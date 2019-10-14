require "./player.rb"
require "./question.rb"
require "./round.rb"

running = true
index = 1

Player1 = Player.new
Player2 = Player.new

while (running == true)
  if (Player1.score > 0 && Player2.score > 0)
    if (index == 1)
      puts "New Round"
      round = Round.new("Player 1", Player1.score, Player2.score)
      question = Question.new
      puts "Player 1: #{question.question}"
      answer = gets.chomp.to_i
      if (answer == question.answer)
        puts "Player 1: Yes! You are correct."
      else
        puts "Player 1: No! You are incorrect"
        Player1.score = Player1.score - 1
      end
      puts "P1: #{Player1.score}/3 vs P2: #{Player2.score}/3"
      index += 1
    elsif (index == 2)
      puts "New Round"
      round = Round.new("Player 2", Player1.score, Player2.score)
      question = Question.new
      puts "Player 2: #{question.question}"
      answer = gets.chomp.to_i
      if (answer == question.answer)
        puts "Player 2: Yes! You are correct."
      else
        puts "Player 2: No! You are incorrect"
        Player2.score = Player2.score - 1
      end
      puts "P1: #{Player1.score}/3 vs P2: #{Player2.score}/3"
      index -= 1
    end
  else
    if (Player1.score == 0)
      puts "Player 2 wins with a score of #{Player2.score}/3"
    elsif(Player2.score == 0)
      puts "Player 1 wins with a score of #{Player1.score}/3"
    end
    puts "Game Over"
    puts "Good bye!"
    running = false
  end
end