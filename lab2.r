#Lab2
#Submitted by Linet M Shaji(P191314)

#Factors

# Create a vector as input.
data <- c("Data","Science","Machine","learning","Deep","Learning","Artifical","Intelligence")
print(data)
print(is.factor(data))
# Apply the factor function.
factor_data <- factor(data)
print(factor_data)
#To check whether data type is factor or not
print(is.factor(factor_data))
#To access elements,It will print 3rd element
print(factor_data[3])
#To access elements,It will print elements except 3rd element
print(factor_data[-3])
#To add new level
levels(factor_data) <- c(levels(factor_data), "Analystics")
print(factor_data)

#list
list_data <- list("Data","Science","Machine","learning","Deep","Learning","Artifical","Intelligence")
print(list_data)
#To access first element
print(list_data[1])
#To modify 2nd element
list_data[2] <- "Analystics"
print(list_data)
#To remove 4th Element
list_data[4] <- NULL
print(list_data)
#To create list with mixed data types
mixed_list <-list(a=1,b="two",c=FALSE)
#To data types of list elements
print(str(mixed_list))
list_one <-list(5,6,7,8)
print(list_one)
list_two <- list(1,2,3,4)
print(list_two)
#To merge two list
merged.list <- c(list_one,list_two)
print(merged.list)
#To covert list to vector
vector_data <- unlist(merged.list)
print(vector_data)

#Data Frame

# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:6), 
  emp_name = c("Aleena","Beula","Jesse","Kamil","Linet","Mounika"),
  salary = c(623.3,515.2,611.0,729.0,843.25,1200), 
  start_date = as.Date(c("2020-01-01", "2020-09-23", "2020-11-15", "2020-05-11","2020-03-27","2020-04-12")),stringsAsFactors = FALSE)
# Print the data frame.			
print(emp.data)
print(str(emp.data))
#To print Summary
print(summary(emp.data)) 
#TO extract columns emp_name and salary only
result <- data.frame(emp.data$emp_name,emp.data$salary)
print(result)
# Extract first two rows.
result <- emp.data[1:2,]
print(result)
# Extract first two columns.
result <- emp.data[1:2]
print(result)
# Add the dep coulmn.
emp.data$dept <- c("IT","Operations","IT","HR","Finance","Accounting")
print(emp.data)
# Create the second data frame
emp.newdata <- 	data.frame(
  emp_id = c (7:8), 
  emp_name = c("Dayanand","Vessesh"),
  salary = c(722.5,632.8), 
  start_date = as.Date(c("2020-07-30","2020-06-17")),
  dept = c("Operations","Fianance"),
  stringsAsFactors = FALSE)
# Bind the two data frames.
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)


