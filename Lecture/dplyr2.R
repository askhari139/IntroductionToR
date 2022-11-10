# dplyr

# select
# filter
# mutate
# arrange

# group_by
# summarise

# filter the movies dataframe with actor_1_facebook_likes > 10000,
#create a new column called "successful" which has entries as "yes" if
#gross is greater than the budget, then select the columms having movie name,
#actor1 facebook likes and successful, arrange the dataframe by descending order
#of actor1 facebook likes

dfRes <- df %>%
    filter(actor_1_facebook_likes > 10000) %>%
    mutate(successful = ifelse(budget < gross, "Yes", "No")) %>%
    select(movie_title, actor_1_facebook_likes, successful) %>%
    arrange(desc(actor_1_facebook_likes))

df1 <- filter(df, actor_1_facebook_likes > 10000)
df2 <- mutate(df1, successful = ifelse(budget < gross, "Yes", "No"))
df3 <- select(df2, movie_title, actor_1_facebook_likes, successful)
dfRes <- arrange(df3, desc(actor_1_facebook_likes))


# How many successful movies were there?
dfRes1 <- dfRes %>% 
    group_by(successful) %>%
    summarise(Count_succeful = n(),
              likes_mean = mean(actor_1_facebook_likes),
              likes_doubled = 2*actor_1_facebook_likes)
View(dfRes1)

dfDirectors <- df %>%
    group_by(director_name) %>%
    summarise(Count_movies = n()) %>%
    arrange(desc(Count_movies))
View(dfDirectors)