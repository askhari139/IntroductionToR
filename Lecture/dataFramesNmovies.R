setwd("../DataSets/IMDB_movies/")
library(tidyverse)

df <- read_csv("movie_metadata.csv")
nrow(df)
colnames(df)

# How many movies are there in total in the table?
nrow(df)
# How many data variables are there? What are their names?
ncol(df)
colnames(df)
# How many color movies? 
colorSum <- 0
missingVals <- 0
for (i in 1:nrow(df)) {
    # x <- (df$color[i] == "Color")
    if (is.na(df$color[i])){
        missingVals <- missingVals + 1
    }
    else if(df$color[i] == "Color")
    {
        colorSum <- colorSum + 1
    }
}
paste0("colored movies are :", colorSum)
# What is the average number of facebook likes each movie gets? 
# What is the average IMDB score?
mean(df$movie_facebook_likes)
mean(df$imdb_score)

# How many of these movies would you watch, based on the imdb_score?
watch <- 0
for (score in df$imdb_score) {
    if (score >= 7) {
        watch <- watch + 1
    }
}
paste0("I can try to watch ", watch, " movies")

df1 <- df[df$imdb_score>=7 & df$movie_facebook_likes >= 5000,]

watch <- 0
for (i in 1:nrow(df)) {
    if (df$imdb_score[i]>=7 && df$movie_facebook_likes[i] >= 5000) {
        watch <- watch + 1
    }
}

# Which columns have missing values? use the function "any".
# 
v <- colnames(df)
for (i in 1:ncol(df)) {
    colm <- df[,i]
    res <- is.na(colm)
    if (!any(res)) {
        print(colnames(df)[i])
    }
}

# How many unique main characters (actor_1) are there?
actors <- unique(df$actor_1_name)
length(actors)
t <- table(actors)
# How many directors?
length(unique(df$director_name))
# Which director made the most number of movies?
res <- table(df$director_name)
which.max(res)

res2 <- sort(res, decreasing = T)
# Which director made the most number of movies with a rating of 
# more than 7?
# 

# Number of movies that earned (gross) more than their budget

successFulMovies <- 0
for (i in 1:nrow(df)) {
    gross <- df$gross[i]
    budget <- df$budget[i]
    if (gross > budget) {
        successFulMovies <- successFulMovies + 1
    }
}
print(successFulMovies)

sum(df$gross > df$budget, na.rm = T)

# Which director had the maximum number of commercially successful movies?
# How many commercially successful movies have an IMDB rating of more than 7?
