@players = [
	{
		id: 1,
		life: 3,
		score: 0
	},
	{
		id: 2,
		life: 3,
		score: 0
	}
]



def generate_question(players)
	turn = 0
  counter = 0 
	while players[turn][:life] != 0 #|| players[1][:life] != 0 
	 num1 = rand(1..20)
	 num2 = rand(1..20)
	 turn = counter % 2
    #if turn == 0 
    # puts "turn 0"
    #else puts "turn 1"
    #end
		 
	 print "Player #{players[turn][:id]}: what is #{num1} + #{num2}? "
	 answer = num1 + num2
	 response = gets.chomp.to_i
    counter += 1
	
	 if response == answer 
	   players[turn][:score] += 1
      #puts  "The score is #{players[turn][:score]}"
    elsif response != answer
      players[turn][:life] -= 1
      puts "That was the wrong answer. The score is: \n Player 1: #{players[0][:score]} \n Player 2: #{players[1][:score]}"
	 end
  #if players[turn][:life]
  end
  if players[0][:life] == 1
    puts "Player # 1 won with a score of #{players[0][:score]}"
    puts "Player # 2 lost with a score was #{players[1][:score]}"
  else
    puts "Player # 2 won with a score of #{players[1][:score]}"
    puts "Player # 1 lost with a score of #{players[1][:score]}" 
end
  
end


generate_question(@players)