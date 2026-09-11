# Exercise 6

library(tidyverse)

dir.create("output", showWarnings = FALSE)

# PArt 2

video_view <- read_csv("data/video_view.csv")

aggregation <- video_view %>%
  group_by(creator_id) %>%
  summarise(sum_answer = sum(impressions_n))

write_csv(aggregation, "output/creator_top10_week4.csv")
