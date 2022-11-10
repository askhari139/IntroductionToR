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

sum(Titanic$Freq)

#2. How many of them were male? How many female?
male <- 0
female <- 0
for (g in gender) {
    if (g == "Male")
        male <- male+1
    else
        female <- female + 1
}
print(male)
print(female)

## Is the answer correct???

male <- 0
female <- 0
for (i in 1:length(gender)) {
    g <- gender[i]
    cn <- count[i]
    if (g == "Male")
        male <- male+cn
    else
        female <- female + cn
}
print(male)
print(female)

#3. How many of them were adults? How many children?
#4. How many of them survived?

#5. How many males survived? How many females survived?

maleSurvived <- 0
for (i in 1:length(gender)) {
    g <- gender[i]
    surv <- survived[i]
    cn <- count[i]
    if (g == "Male" && surv == "Yes") {
        maleSurvived <- maleSurvived + cn
    }
        
}

# Which class of people had a better chance of survival?

classCount <- c(0,0,0,0)
classSurvival <- c(0,0,0,0)
for (i in 1:length(gender)) {
    cl <- passengerClass[i]
    cn <- count[i]
    surv <- survived[i]
    if(cl == "1st") {
        classCount[1] <- classCount[1] + cn
        if (surv == "survived")
        {
            classSurvival[1]
        }
    }
}
