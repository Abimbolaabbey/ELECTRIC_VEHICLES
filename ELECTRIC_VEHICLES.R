install.packages()

library(readr)
library(ggplot2)

Electric_Vehicles_2 <- read_csv("C:/Users/maxla/Downloads/Electric_Vehicles_2.csv")

View(Electric_Vehicles_2)

#Correlation between recharge time and range

Correlation<-cor(Electric_Vehicles_2$`Recharge Time (h)`,Electric_Vehicles_2$`Range (km)`)
                 
                 
#Correlation between Battery capacity and range

Correlation_KW<-cor(Electric_Vehicles_2$Battery_capacity_in_KW,Electric_Vehicles_2$`Range (km)`)
                    
                    #Correlation between recharge time and range
                    
                      
                      plot(Electric_Vehicles_2$`Recharge Time (h)`,Electric_Vehicles_2$`Range (km)`,col= "blue",main = "Correlation Between Recharge Time and Range",xlab = "Recharge Time (h)", ylab = "Range (km)")
                      
                      
                      
                      plot(Electric_Vehicles_2$Battery_capacity_in_KW,Electric_Vehicles_2$`Range (km)`,col= "red",main = "Correlation Between Battery capacity and Range",xlab = "Battery Capacity(KW)", ylab = "Range (km)")
                      