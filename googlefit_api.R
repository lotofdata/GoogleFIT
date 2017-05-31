#options(RGoogleFit.client_id = "xx")
#options(RGoogleFit.client_secret = "xx")
#token <- GetFitOauth2Token()
library(RGoogleFit)
library(tidyverse)
source("API.R")


startTime <- as.POSIXct("2016-05-24 00:00:00")
endTime <- as.POSIXct(Sys.Date())


startTime <- NanosToPOSIXct(1495573200000000000)
endTime <- NanosToPOSIXct(1495843200000000000)


df <- GetFitDatasources(token) 


df$dataStreamId

datasource <- "raw:com.google.step_count.delta:com.xiaomi.hm.health:" #miband 2 steps
datasource <- "derived:com.google.step_count.delta:com.google.android.gms:LGE:Nexus 5X:60301cdb:derive_step_deltas<-raw:com.google.step_count.cumulative:LGE:Nexus 5X:60301cdb:BMI160 Step counter" #nexus 5x steps
datasource <- "derived:com.google.activity.segment:com.urbandroid.sleep:session_activity_segment"
datasource <- "derived:com.google.step_count.delta:com.google.android.gms:estimated_steps"

dataset <- GetFitDataset(token, datasource, startTime, endTime)
test <- dataset$point

test$startTimeNanos <- NanosToPOSIXct(test$startTimeNanos)
test$endTimeNanos <- NanosToPOSIXct(test$endTimeNanos)

df2 <- GetFitDatasource(token, datasource)
df2$dataType$field


