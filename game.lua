-- Guessing Game
-- by Clara Turner
-- Randomize a number between 1 and 100. Allow the user to guess that number
-- a maximum of 7 times. If they do not guess it in 7 attempts,
-- reveal what the number was and give them the option to try again.
-- If user chooses to play again, restart the game with a new number
-- If they choose not to play again, end the program.
-- If the user guesses the number correctly, congratulate them and
-- give them the option to continue or end the game.

-- set the randomized number from 1-100
math.randomseed(os.time())
math.random() math.random() math.random()



-- variable that keeps track of if the user wants to continue or not
userContinue = "Y"
-- variable that keeps track of user guesses
local guessCounter = 0
-- variable that keeps track of whether user is correct or not (T for true; F for false)
local userCorrect = "F"

-- start the loop. while user wants to continue, set the guessCounter to 0
-- and randomize the number
while userContinue == "Y" do
    guessCounter = 0
    randomNum = math.random(1, 100)
    
    
-- allow user to guess 7 times
    while guessCounter <= 6 do
        print("Guess the Random Number: ")
        userNum = tonumber(io.read())
-- if the user enters anything besides a number, ask them to enter a number instead
-- (this should not use up a guess attempt)
        while userNum == nil do
                print("Please enter a NUMBER")
                userNum = tonumber(io.read())
        end
-- add 1 to the guess counter
        guessCounter = guessCounter + 1  
         --print("AMOUNT OF GUESSES: " .. guessCounter) <- this was to help me keep
         -- track of the guesses because i kept getting confused  

-- if user's input is equal to the random number, then congratulate and ask to play again
        if userNum == randomNum then
            print("Correct! The number was " .. randomNum)
            userCorrect = "T"
            print("Would you like to play again? (Y/N)")
            userContinue = io.read()
            break
-- if user's input is not equal to the random number
        else 
            print("Incorrect.")
        end
    end

-- if the user did not guess any correct answers in 7 attempts,
-- userCorrect stays as F and gives the fail text
    if userCorrect == "F" then
        print("You guessed 7 times without guessing the correct number.")
        print("The number was: " .. randomNum)

-- ask user if they want to play again with a new number    
        print("Would you like to play again with a new number? (Y/N)")
        userContinue = io.read()
    end

-- if they say yes, change userGuessed to N so that the while loop starts again,
-- resetting by making the userCorrect F once again
    if userContinue == "Y" then
        print("Restarting Game")  
        userCorrect = "F"  
        

-- if they say no, print thanks and end the program
    elseif userContinue == "N" then
        print("Thanks for playing!")
 

-- if they enter anything besides the 2 letters, ask again
    else
        print("Please enter Y for yes or N for no.")
        continueVar = io.read()
    end
end