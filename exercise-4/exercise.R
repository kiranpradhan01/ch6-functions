# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string1, string2) {
  difference <- abs(nchar(string1) - nchar(string2))
  shortest <- min(nchar(string1),nchar(string2))
  difference >= shortest
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("hello","no")
is_twice_as_long("yo","quad")
is_twice_as_long("kiran","pradhan")
is_twice_as_long("kiran","sarah")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1, string2) {
  length1 <- nchar(string1)
  length2 <- nchar(string2)
  difference <- length1 - length2
  if (difference > 0) {
    description <- paste("Your first string is longer by", difference,"characters")
  } else if (difference < 0) {
    description <- paste("Your second string is longer by", -difference,"characters")
  } else {
    description <- "Your strings are the same length!"
  }
  description
}


# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("hello","pradhan")
describe_difference("billzhao", "turtle")
describe_difference("pillow","turtle")
