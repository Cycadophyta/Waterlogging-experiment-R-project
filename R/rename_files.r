library(stringr)
library(here)
here <- here::here

wd <- getwd()

data_folder <- "data/hourly-rain_east-malling"
file_prefix <- "midas-open_uk-hourly-rain-obs_dv-202107_kent_00744_east-malling_qcv-1_"

setwd(here(data_folder))

files <- list.files()

file.rename(list.files(), str_replace(list.files(), pattern = file_prefix, "hourly-rain_east-malling_"))
str_replace(list.files(), pattern = file_prefix, "hourly-rain_east-malling_")

setwd(wd)