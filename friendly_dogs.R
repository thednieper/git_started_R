
# install.packages("tidytuesdayR")
# install.packages("dplyr")


library(dplyr)
library(janitor)

tuesdata <-tidytuesdayR::tt_load("2022-02-01")

saveRDS(tuesdata$breed_traits,"breed_traits.rds")

breed_traits <- clean_names(readRDS("breed_traits.rds"))

select(breed_traits, breed)

select(breed_traits, coat_length)

select(breed_traits, affectionate_with_family)

select(breed_traits, 1,3,4)

select(breed_traits, 1, 6:10)

# Homework about friendly_dogs

filter(breed_traits, affectionate_with_family>=4 & good_with_young_children>=4 & good_with_other_dogs>=4)

select(breed_traits, breed)
