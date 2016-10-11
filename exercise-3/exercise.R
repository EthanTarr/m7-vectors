# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("red", "blue", "yellow", "green", "orange", "cyan")

# Use the `sample` function to select a single marble
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  return(guess == sample(marbles, 1))
}

# Play the marble game!
MarbleGame("red")

# Bonus: Play the marble game until you win, keeping track of how many tries you take

count <- 1
while(!MarbleGame("red")) {
  count <- count + 1
}
average <- count

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability

for(i in 1:1000) {
  count <- 1
  while(!MarbleGame("red")) {
    count <- count + 1
  }
  average <- (average + count) /2
}