
install.packages("renv",lib = "~/R/library",repos="https://cran.csiro.au/") #need to point to a location you have write access to

#tells R to look for libraries in your new place
.libPaths( c( .libPaths(), "~/R/library") )

#use R as normal 

library(renv)
library(here)

load_file <- here::here("renv.lock")

print(load_file)

renv::restore(lockfile = load_file, library = "~/R/library")

sessionInfo()

