library(dplyr)
library(lubridate)
library(naniar)

vehicles <- read.csv("~/Github/dkustats101spring2023/homeworks/Unit 3 Homework/vehicles.csv")

vehicles <- vehicles %>% 
  mutate(year = year(ymd_hms(posting_date))) %>% 
  mutate(origin = case_when(manufacturer == "buick" ~ "domestic",
                            manufacturer == "cadillac" ~ "domestic",
                            manufacturer == "chevorlet" ~ "domestic",
                            manufacturer == "chrysler" ~ "domestic",
                            manufacturer == "dodge" ~ "domestic",
                            manufacturer == "ford" ~ "domestic",
                            manufacturer == "gmc" ~ "domestic",
                            manufacturer == "harley-davidson" ~ "domestic",
                            manufacturer == "jeep" ~ "domestic",
                            manufacturer == "lincoln" ~ "domestic",
                            manufacturer == "mercury" ~ "domestic",
                            manufacturer == "pontiac" ~ "domestic",
                            manufacturer == "ram" ~ "domestic",
                            manufacturer == "saturn" ~ "domestic",
                            manufacturer == "tesla" ~ "domestic",
                            manufacturer == "" ~ NA,
                            .default = "foreign"))

vehicles.sp <- vehicles %>% 
  filter(region=="western massachusetts")


