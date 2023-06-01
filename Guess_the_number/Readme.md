Guess the Number
------------------
This game is of two players. The computer will randomly generate a number and player's have to guess this number. The player who guesses the number closer to the computer's number will get 1 point. This game consists of 10 rounds. Player with the highest score will win the game.

Algorithm
------------------
1. Declare the variables <b>COUNT</b>, <b>SCORE1</b>, <b>SCORE2</b> <br>
  COUNT variable stores the number of rounds, SCORE1 stores the score of Player 1 and SCORE2 stores the score of Player 2
 2. CREATE function to calculate absolute value of a number.
 3. Use a while loop to iterate over 10 times <br>
  REPEAT while [ COUNT < 10 ] TRUE { <br>
        i. Generate a RANDOM number <br>
        ii. Read the numbers from players <br>
        iii. Calculate the absolute difference between the COMPUTER's number and the PLAYER's number<br>
        iv. Assigned the score to the player who has guessed the number closest to the COMPUTer's number<br>
        v. Print the Score<br>
  }
  4. Print the winner
