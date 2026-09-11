# Load the data
library(tidyverse)

video_view <- read_csv("data/video_view.csv")
user_view <- read_csv("data/user_view.csv")
videos <- read_csv("data/videos.csv")
creators <- read_csv("data/creators.csv")
users <- read_csv("data/users.csv")
impressions <- read_csv("data/impressions.csv")
watch_events <- read_csv("data/watch_events.csv")
sessions <- read_csv("data/sessions.csv")

# Exercise 1
video_features <- video_view %>%
  mutate(watch_rate_rank = rank(-watch_rate), 
         high_quality = avg_watch_share >= 0.40) %>%
  distinct(video_id, .keep_all = TRUE) %>%
  arrange(watch_rate_rank)


write_csv(video_features, "../temp/video_features")

# Exercise 2



# Exercise 3



# Exercise 4



# Exercise 5
