# ATMs_Transaction
## Description : Data Analysis Project Using R Programming Language
## Dataset
The dataset contains all the withdrawal transactions made in Spar Nord ATMs in 2017, information about the location of the ATM, manufacturer, currency, card type, weather conditions, etc. Please revert to the data dictionary for a complete overview of the variables.  
[Data Link](https://drive.google.com/file/d/1eicbQDoIi8BZJvU1Qp5ZlUzfbNuZeWY0/view)
## Questions
### 1.
ATMs availability: Down times affect ATMs availability hence negatively impact customer experience. In the light of the given data elements, can you support the ATM business with insights on the machine’s availability during 2017? For instance, were there specific ATMs that needed replacement/maintenance? If any, are they still active or already replaced?
### 2.
Down times are not only caused by fault in machines. Cash replenishment and regular maintenance activities also cause the ATMs to be out of service for a while. In the light of given data elements, can you propose a high-level schedule for Cash replenishment or regular maintenance activities?
### 3.Bonus: 
In order to better cater for spar nord customer, we need to understand where to locate our ATMs to ensure maximum coverage.
## [R Script](https://github.com/Omar-Saad-ELGharbawy/ATMs_Transaction/blob/main/script.R)
## My Report
### In Question 1 
I  have calculated the availability and down time percentage by a function from rows that have NA message codes and the availability is very good and I tried to see if the manufacturer affects on down time but it doesn’t have large effect since machines from NCR makes large withdraw processes and it also have large downtimes so it is proportional.
### In Question 2 
I have insight to do Cash replenishment or regular maintenance activities at hours from 1 to 4 because it has the least withdraw processes.
### In Question 3 
I located the top 10 locations used by customers so we need to locate our ATMs there to ensure maximum coverage.
