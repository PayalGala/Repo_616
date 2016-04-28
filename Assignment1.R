setwd("C:/R/HS616/Assignments")

### Answer 1
nums <- 4:-3
print(nums)
colors <- c("red","blue","green","yellow")
print(colors)
assertions <- c(TRUE,FALSE)
print(assertions)
print(length(nums))
print(length(colors))
print(length(assertions))

### Answer 2
combined.data <- c(nums,colors,assertions)
print(combined.data)
# Vectors can store values of a single type and hence, when we combined vectors nums, colors 
# and assertions, the newly created vector have the data type character. The data type of 
# vectors nums and assertions are converted to character. Thus, we see that to store the 
# character values from assertions, values from other vectors are also converted to characters

### Answer 3
my.data <- data.frame(nums,colors,assertions)
print(my.data)
print(class(my.data))
print(class(my.data$nums))
print(class(my.data$colors))
print(class(my.data$assertions))
# When R combined the data in a dataframe, the data type is preserved for vector nums and
# logical. However, colors is changed to factors. Also, as the length of colors and 
# assertions was less than nums, the values are repeated. Thus, dataframes require same
# length values else the values would be repeated.
print(nrow(my.data))
print(ncol(my.data))
print(row.names(my.data))
print(colnames(my.data))

### Answer 4
colors.v <- my.data$colors
print(colors.v)
print(class(colors.v))
my.data2 <- data.frame(nums,colors,assertions,stringsAsFactors = F)
print(my.data2)
colors2.v <- my.data2$colors
print(colors2.v)
print(class(colors2.v))
# When dataframe is created using the argument stringsAsFactors = F, 
# the data type of the colors does not 
# change to factor  and it remains as character.

### Answer 5
colors.df <- my.data["colors"]
print(class(colors.df))
new.colors.df <- subset(my.data,my.data$colors!="green")
print(new.colors.df)
threes <- subset(my.data,my.data$nums%%3==0)
print(threes)
colors.nums <- my.data[c("colors","nums")]
print(colors.nums)

### Answer 6
new.nums <- as.character(nums)
new.colors <- as.factor(colors)
new.assertions <- as.numeric(assertions)
print(nums)
print(new.nums)
print(colors)
print(new.colors)
print(assertions)
print(new.assertions)
print(class(nums))
# as.character(), as.factor() and as.numeric() are not mutators. Here, as these functions 
# are used to create new vectors stored in another variables, the original vectors 
# and their data-types if printed 
# remains the same. The newly formed vectors new.nums, new.colors and new.assertions 
# have the data types characters,factors and numeric respctively as they were created 
# using type cast. The old vectors are unchanged.

### Answer 7
nums <- as.character(nums)
colors <- as.factor(colors)
assertions <- as.numeric(assertions)

print(my.data)
# As we are converting the data type of the vectors, the dataframe my.data doesn't change.
print(is.factor(nums))
print(is.numeric(nums))
print(is.character(nums))
print(is.factor(new.assertions))
print(is.factor(assertions))
print(is.character(colors))
# is.factor() checks whether the values are factor or not and returns true if the values 
# are factors and false if the values are not factors.
# as.factor() converts the values to factors. When printing as.factor(),
# values as well as levels are displayed.

### Answer 8
print(my.data[1])
print(my.data["nums"])
print(my.data$nums)
print(my.data[1,"nums"])
my.data[1,"nums"] < my.data[2,"nums"]
print(my.data[1,"nums"] < my.data[2,"nums"])
my.data[8,"nums"] < my.data[2,"nums"]
print(my.data[8,"nums"] < my.data[2,"nums"])
# Value in nums column of row 1 is not less than value of row 2. 
# Value in nums column of row 8 is less than value of row 2.

### Answer 9
my.data$nums <- as.factor(my.data$nums)
factor(my.data$nums,levels=c(-3,-2,-1,0,1,2,3,4))
as.numeric(assertions)

### Answer 10
print(my.data[1])
print(my.data["nums"])
print(my.data$nums)
print(my.data[1,"nums"])
my.data[1,"nums"] < my.data[2,"nums"]
print(my.data[1,"nums"] < my.data[2,"nums"])
my.data[8,"nums"] < my.data[2,"nums"]
print(my.data[8,"nums"] < my.data[2,"nums"])
my.data$nums <- as.ordered(my.data$nums)
print(my.data[1,"nums"] < my.data[2,"nums"])
print(my.data[8,"nums"] < my.data[2,"nums"])
# In ordinary factors,the order of the levels does not matter and one level is not 
# different from the other, however, in ordered factor order is maintained as per 
# the given levels. Here, it's seen that the value of row 8 in nums after executing 
# as.ordered(), is printed to be lesser than the value of row 2 and the value of row 1
# is not less than value of row 2. Before executing as.ordered(), 
# NA was printed as the output of this comparision statement and after
# making it ordered factor, the output is TRUE or FALSE. This shows that logical 
# comparision was not applicable to ordinary factors. Ordered factors do recognize levels
# as per the assigned levels.

### Answer 11
print(names(my.data))
names(my.data) <- c("Numeric","three_Colors","Logical")
print(names(my.data))
print(my.data)

### Answer 12
list1 <- list("hello", 12, NA, FALSE)
print(list1)
names(list1) <- c("char","numeric","NA","logical")
print(any(is.na(names(list1))))
names(list1) <- c("char","numeric",NA,"logical")
print(any(is.na(names(list1))))
print(all(is.na(names(list1))))
print(list1[[2]])

### Answer 13
my.array <- array(1:6,dim = c(2,3))
print(my.array)
my.array[2,3] <- NA
my.array[1,2] <- NA
print(my.array)
my.array[is.na(my.array)] <- 0
print(my.array)
any(my.array==0)
all(my.array==0)
