library(tidyverse)
getwd()
setwd("C:/Users/Lenovo/Documents/57357R/ATMs_Transaction")
dir()

atm1=read.csv("Data/atm_data_part1.csv")
atm2=read.csv("Data/atm_data_part2.csv")
atm=rbind(atm1,atm2)

nrow(atm)==nrow(atm1)+nrow(atm2)
str(atm)
summary(atm)
#Question 1 

get_Availability_and_DownTime = function(x){
  success=sum(is.na(atm$message_code))
  total=nrow(atm)
  paste("Availability is:",round(success/total*100,3),"and DownTime is:",round((total-success)/total*100,3))
}
get_Availability_and_DownTime(atm)

atms_needs_replace=atm %>% filter(!is.na(atm$message_code)) %>% group_by(atm_id) %>%slice(1)%>% summarise(needs_replacment=atm_status=="Inactive")

paste("Atms:",atms_needs_replace[atms_needs_replace$needs_replacment==TRUE,"atm_id"],"Need replacment because they are inactive, While Atms:",atms_needs_replace[atms_needs_replace$needs_replacment==FALSE,"atm_id"],"doesn't need replacment because they are active")

manufacturer_no_work=atm %>% filter(!is.na(atm$message_code)) %>% select(atm_id,atm_manufacturer)
unique(atm$atm_manufacturer)
unique(manufacturer_no_work$atm_manufacturer)
atm %>% group_by(atm_manufacturer) %>% summarise(cnt_ALL = n())
manufacturer_no_work%>% group_by(atm_manufacturer) %>% summarise(cnt_NotWorking = n())
print("So the manufacturer doesn't affect on the work of atms")
#Question 2

schedule= atm %>% select(year:atm_id)
summary(schedule)
hist(schedule$hour)
hour= atm %>% group_by(hour) %>% summarise(cnt=n()) %>% arrange(cnt) 
least_hours=c(hour[1:4,"hour"])
paste("Better to do Cash replenishment or regular maintenance activities at hours ",least_hours," because the withdrawal transactions processes is less at these hours")

#Question 3

locations=atm %>% group_by(atm_location) %>% summarise(cnt=n()) %>% arrange(-cnt) %>% head(10)

cat("Top 10 locations used by our customers is: ",locations$atm_location)

