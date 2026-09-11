# Exercise 6

library(tidyverse)

dir.create("temp", showWarnings = FALSE)

# Part 1
video_view <- read_csv("data/video_view.csv")

aggregation <- video_view %>%
  group_by(creator_id) %>%
  summarise(sum_answer = sum(impressions_n))

write_csv(aggregation, "temp/creator_week4.csv")