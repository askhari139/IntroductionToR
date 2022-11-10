library(tidyverse)
# library(stringr)

# Chapter 14 of r4ds
# Predefined character vectors: month.name, fruit
# stringr functions : str_detect, str_view, str_count, str_extract, str_split, str_replace
# regular expressions
# Smallest substring in a set of strings
# Search engine

x <- "jnkfnew, "
y <- "jnk"
z <- "njk"
month.name
fruit
fruit %>% str_detect("fruit") %>% sum


df <- read_csv("../DataSets/IMDB_movies/movie_metadata.csv")
str_count(df$genres, "Adventure") %>% sum
#str_view(df$genres, "Adventure") %>% print
view(df)
str_count(df$genres, "\\|")
df %>% 
    mutate(Genre_count = str_count(genres, "\\|")) %>%
    arrange(desc(Genre_count)) %>%
    select(movie_title) %>%
    unlist %>% unname %>%
    head(n = 4)


### Replace "The" with "the" in all movie names

df2 <- df %>%
    mutate(movie_title = str_replace_all(movie_title, "The", "the"))
### Replace Uppercase letters with lowercase letters in all movie names
df3 <- df %>% mutate(movie_title = str_replace(movie_title, "\\d.*", "WHATEVER"))
x <- "Hello\nWorld"
print(x)
writeLines(x)
# replace all spaces in the column director name with "\n" and View the dataframe
df %>%
    mutate(director_name = str_replace_all(director_name, " ", "\n")) %>%
    View


## How many fruits have "berry" or "fruit" in their names?
fruit %>% str_detect(("fruit|berry")) %>% sum

## How many movie names start with a number?
df %>% 
    filter(str_detect(movie_title, "^\\d")) %>%
    nrow

df %>% 
    filter(str_detect(movie_title, "\\s$")) %>%
    nrow
