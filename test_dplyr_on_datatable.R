library(data.table)
library(dplyr)
library(microbenchmark)

set.seed(42)
count = 1E6

df_1<-data.frame(k=sample(seq(count),count),one=rnorm(count),two=rnorm(count),three=rnorm(count),four=rnorm(count))
df_2<-data.frame(k=sample(seq(count),count),five=rnorm(count),six=rnorm(count),seven=rnorm(count),eight=rnorm(count))

dt_1<-as.data.table(df_1)
dt_2<-as.data.table(df_2)

dt_native_syntax <- function(){ab<-merge(dt_1,dt_2, by="k")}
dt_dplyr_syntax <- function() {ab<-inner_join(dt_1,dt_2, by="k")}
df_dplyr_syntax <- function() {ab2<-inner_join(df_1,df_2, by="k")}

print(microbenchmark(data_table_native_syntax=dt_native_syntax(),data_table_dplyr_syntax=dt_dplyr_syntax(),
               data_frame_dplyr_syntax=df_dplyr_syntax(), times =20))