#Basic R operations

#We defined the B matrix
B <- matrix(c(2,1,-4,5,3,2,0,4,0,-7,0,1,0,4,-8), nrow=3, byrow= TRUE)
B

#We defined C matrix; but using B matrix
#we created new_column
new_column <- c(1, 0,-5)

#Inserted the new_column between fourth and fifth column
C <- cbind(B[, 1:4], new_column, B[, 5:ncol(B)])
C

# Define the new row
new_row <- c(2, 6, 0, -5, 8, -6, 20)

# Create a matrix D by inserting the new row between the 1st and 2nd rows of matrix C
#We have displayed the warning message,because our matrix C has six column, 
#however new_row's length 7 number. Because we didnt insert end of the number so 20.
D <- rbind(C[1,], new_row, C[2:nrow(C),])
D

# Delete the third and last columns of matrix D to create matrix E
E <- D[, -c(3, ncol(D))]
E

# Print all elements in the third column of matrix E
print(E[, 3])


