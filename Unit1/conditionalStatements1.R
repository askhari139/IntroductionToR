
x <- 3

if (x > 5) {
    print(x)
}

## Relational Operators
## >, <, >=, <=, ==

if (TRUE) {
    print(x)
}

## given the vector 1:10, print the odd numbers
## 1. Assign 1:10 to x
## Iterate through x using a for loop
## In each loop, if the iterator is odd, print it

for (i in 1:10) {
    if (i %%2 == 1) {
        print(i)
    }
}

for (i in 1:10) {
    d <- i/2
    if (d != floor(d)){
        print(i)
    }
}

for (i in 1:10) {
    d <- i/2
    if (d != as.integer(d)){
        print(i)
    }
}


## write a function which takes two numbers and one character. 
## If the character is "+" then print the sum. Otherwise, 
## print the message "invalid operator".

printSum <- function(num1, num2, char1) {
    if (char1 == "+") {
        num1 + num2
    }
    else if (char1 == "-") {
        num1 - num2
    }
    else if (char1 == "*") {
        num1 * num2
    }
    else if (char1 == "/") {
        num1 / num2
    }
    else {
        print("Invalid Operator")
    }
        
}
printSum(num1 = 3, num2 = 4, char1 = "+")
printSum(num1 = 3, num2 = 4, char1 = "-")
printSum(num1 = "a", num2 = 4, char1 = "a")




### Write a function that takes two numbers and a character
##and performs the arithmetic operation defined by the character


data()
data("Titanic")
data("WorldPhones")
data("mtcars")

View(mtcars)

Titanic <- data.frame(Titanic)

passengerClass <- as.character(Titanic$Class)
gender <- as.character(Titanic$Sex)
age <- as.character(Titanic$Age)
count <- Titanic$Freq
survived <- as.character(Titanic$Survived)

#1. How many passengers were there on the Titanic?
#2. How many of them were male? How many female?
#3. How many of them were adults? How many children?
#4. How many of them survived?

male <- 0
female <- 0
for (i in gender) {
    if (i == "Male") {
        male <- male + 1
    }
        
    else {
        female <- female + 1
    }
        
}
print(male)
print(female)
 # Number of males on the ship is : 16
 # Number of females on the ship is : 16

paste0("Number of males on the ship is: ", male)

