print("Enter Text")
local userInput = io.read()
local upperCaseInput = string.upper(userInput)
print("Text in all caps: " .. upperCaseInput)

-- #2: ask for 2 numbers, then add them together and print the result

print("Enter your first number: ")
firstNum = tonumber(io.read())

while firstNum == nil do
    print("Please enter a NUMBER")
    firstNum = tonumber(io.read())
end

print("Enter your second number: ")
secondNum = tonumber(io.read())

while secondNum == nil do
    print("Please enter a NUMBER")
    secondNum = tonumber(io.read())
end

total = firstNum + secondNum
print("Numbers " .. firstNum .. " + ".. secondNum .. " = " .. total)

-- #3: get an unknown amount of numbers from the user, add them together, then print the result
continueVar = "y"
total = 0
newNumber = 0

print ("Enter a number")
while continueVar == "y" do
    newNumber = tonumber(io.read())

    while newNumber == nil do
        print("Please only enter numbers")
        newNumber = tonumber(io.read())
    end

    total = total + newNumber
    print("Do you want to enter another number? (y/n)")
    continueVar = io.read()
end

print("Total: " .. total)

-- #4: Let user define max number, then print a random number between 0 and user defined number
-- Have user play again or quit

continueVar = "y"
math.randomseed(os.time())
math.random() math.random() math.random()

while continueVar == "y" do
    print("Enter a max value")
    maxValue = tonumber(io.read())

    while maxValue == nil do
        print("Enter a NUMBER")
        maxValue = tonumber(io.read())
    end

    randomValue = math.random(0, maxValue)
    print("Randomized Number: " .. randomValue)
    print("Enter y to play again")
    continueVar = io.read()
end

-- #5: Get a random number 10 times, with each one print if it is even
-- or odd, then print how many evens and odds there were

math.randomseed(os.time())
math.random() math.random() math.random()

evenNum = 0
oddNum = 0



for x = 1, 10 do
    randomNum = math.random(1, 100)
    print(randomNum)
    if randomNum % 2 == 0 then
        print("Even Number")
        evenNum = evenNum + 1
    else
        print("Odd Number")
        oddNum = oddNum + 1
    end
end

print("Even Numbers: " .. evenNum)
print("Odd Numbers: " .. oddNum)