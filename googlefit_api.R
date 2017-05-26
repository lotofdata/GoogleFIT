library(RGoogleFit)
library(tidyverse)
source("API.R")


startTime <- as.POSIXct("2017-05-24 00:00:00")
endTime <- as.POSIXct(Sys.Date())



dataset <- GetFitDataset(token, datasource, startTime, endTime)
df$point

df <- GetFitDatasources(token)

df$dataStreamId

datasource <- "raw:com.google.step_count.cumulative:LGE:Nexus 5X:cce4a086:BMI160 Step counter"

df2 <- GetFitDatasource(token, datasource)
df2$dataType$name
