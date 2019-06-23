

wine_ratings <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-05-28/winemag-data-130k-v2.csv")

#Exploring the file
head(wine_ratings)
dim(wine_ratings)


#Initial Analysis


wine_ratings %>% count(country, sort = TRUE) %>% fct_lump(8,"Others") 

ggplot(wine_ratings, aes(country))+geom_bar()
                         