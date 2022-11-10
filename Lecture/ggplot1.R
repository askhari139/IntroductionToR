# base R

x <- sample(1:10, 100, replace = T)

barplot(table(x))
hist(x)
plot(x)
# ggplot2

df <- read_csv("../DataSets/IMDB_movies/movie_metadata.csv")

ggplot(data = df, mapping = aes(x = movie_facebook_likes)) +
    geom_histogram() +
    labs(x = "Number of facebook likes for a movie", 
         y = "Frequency", title = "Histogram of facebook likes")
ggplot(df, aes(x = actor_1_name, y = actor_1_facebook_likes)) +
    geom_point()

ggplot(df, aes(x = imdb_score, y = movie_facebook_likes, 
               color = color)) +
    geom_point()

ggplot(df, aes(x = language)) +
    geom_bar() +
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5))

ggplot(df, aes(x = content_rating, fill = color)) +
    geom_bar()
