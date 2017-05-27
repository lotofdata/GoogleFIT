library(RGoogleFit)
library(tidyverse)
source("API.R")


startTime <- as.POSIXct("2017-05-24 00:00:00")
endTime <- as.POSIXct(Sys.Date())


startTime <- NanosToPOSIXct(1495573200000000000)
endTime <- NanosToPOSIXct(1495843200000000000)

dataset <- GetFitDataset(token, datasource, startTime, endTime)
test <- dataset$point

df <- GetFitDatasources(token) 


df$type

str(df)

df$dataStreamId

datasource <- "raw:com.google.step_count.cumulative:LGE:Nexus 5X:cce4a086:BMI160 Step counter"

datasource <- "raw:com.google.activity.segment:com.urbandroid.sleep:"

datasource <- "derived:com.google.activity.segment:com.urbandroid.sleep:session_activity_segment"

df2 <- GetFitDatasource(token, datasource)
df2$dataType$field

write.csv(df, "df.csv")

df
