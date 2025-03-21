# 1. Create a logical vector of length 12 that alternates between TRUE and FALSE
logical_vec <- rep(c(TRUE, FALSE), times = 6)
print(logical_vec)

# 2. Takes a numeric vector as input and returns a logical vector indicating which elements are negative
check_negative <- function(num_vec) {
  return(num_vec < 0)
}
test_vec <- c(1, -2, 3, -4, 0)
print(check_negative(test_vec))

# 3. Given two numeric vectors of equal length, check if they are element-wise equal and output differing indices
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(1, 2, 0, 4, 6)
equal_check <- vec1 == vec2
diff_indices <- which(!equal_check)
print(diff_indices)  # Outputs indices where vectors differ: 3 5

# 4. Create a 3×4 matrix from a logical vector and compare with a numeric matrix
log_vec <- c(T, F, T, F, T, F, T, F, T, F, T, F)
log_matrix <- matrix(log_vec, nrow = 3, ncol = 4)
print(log_matrix)
num_matrix <- matrix(1:12, nrow = 3, ncol = 4)
comparison <- log_matrix == num_matrix
print(comparison)

# 5. Demonstrate vector recycling with vectors of length 4 and 10, perform addition
short_vec <- c(1, 2, 3, 4)
long_vec <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
result <- short_vec + long_vec
print(result)  # short_vec is recycled to match length 10

# 6. Calculate the sum of all TRUE values in a logical vector
logical_vec <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
true_sum <- sum(logical_vec)
print(true_sum)  # Outputs 3

# 7. Extract elements greater than 10 from a numeric vector using logical subsetting
num_vec <- c(5, 12, 8, 15, 3, 20)
greater_than_10 <- num_vec[num_vec > 10]
print(greater_than_10)  # Outputs 12 15 20

# 8. Count characters and extract "R programming" from "Hello World! Welcome to R programming"
text <- "Hello World! Welcome to R programming"
char_count <- nchar(text)
substring <- substr(text, 25, 37)
print(char_count)  # Outputs 37
print(substring)   # Outputs "R programming"

# 9. Concatenate "Data", "Science", and "R" with hyphens
combined <- paste("Data", "Science", "R", sep = "-")
print(combined)  # Outputs "Data-Science-R"

# 10. Demonstrate difference between cat() and paste() with custom separator
words <- c("Hello", "World", "R")
paste_result <- paste(words, sep = " | ")
cat_result <- cat(words, sep = " | ")
print(paste_result)  # Returns a single string
# cat() outputs directly to console: Hello | World | R

# 11. Replace first "apple" with "orange" using sub(), and all with gsub()
text <- "apple, apple, and apple"
first_replace <- sub("apple", "orange", text)
all_replace <- gsub("apple", "orange", text)
print(first_replace)  # "orange, apple, and apple"
print(all_replace)    # "orange, orange, and orange"

# 12. Convert character vector to factor and display levels
gender_vec <- c("male", "female", "male", "female")
gender_factor <- factor(gender_vec)
print(gender_factor)
print(levels(gender_factor))  # Shows "female" "male"

# 13. Create an ordered factor of months in calendar order
months <- c("Jan", "Mar", "Feb", "Apr", "May", "Dec", "Nov")
month_factor <- factor(months, 
                      levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun",
                               "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
                      ordered = TRUE)
print(month_factor)

# 14. Extract "female" entries from a gender factor
gender <- factor(c("male", "female", "female", "male", "female"))
female_entries <- gender[gender == "female"]
print(female_entries)

# 15. Function to bin numeric vector into "Low", "Medium", "High"
bin_vector <- function(num_vec) {
  breaks <- quantile(num_vec, probs = c(0, 0.33, 0.66, 1))
  binned <- cut(num_vec, 
                breaks = breaks,
                labels = c("Low", "Medium", "High"),
                include.lowest = TRUE)
  return(binned)
}
test_vec <- c(1, 5, 10, 15, 20, 25)
print(bin_vector(test_vec))

# 16. Demonstrate any() and all() with a logical vector
logical_vec <- c(TRUE, FALSE, TRUE, TRUE)
print(any(logical_vec))  # TRUE if at least one TRUE
print(all(logical_vec))  # TRUE if all are TRUE
# Scenario: any() returns TRUE because some elements are TRUE,
# but all() returns FALSE because not every element is TRUE

# 17. Perform element-wise logical AND, OR, and NOT operations
vec1 <- c(TRUE, FALSE, TRUE)
vec2 <- c(FALSE, TRUE, TRUE)
and_result <- vec1 & vec2
or_result <- vec1 | vec2
not_result <- !vec1
print(and_result)  # FALSE FALSE TRUE
print(or_result)   # TRUE  TRUE  TRUE
print(not_result)  # FALSE TRUE  FALSE

# 18. Replace values below mean with NA in a numeric vector
num_vec <- c(1, 5, 10, 15, 20)
mean_val <- mean(num_vec)
new_vec <- ifelse(num_vec < mean_val, NA, num_vec)
print(new_vec)  # NA NA 10 15 20

# 19. Compare two strings alphabetically using relational operators
str1 <- "apple"
str2 <- "Banana"
print(str1 < str2)  # TRUE
print(str1 > str2)  # FALSE
# R compares strings alphabetically using ASCII values
# Uppercase letters come before lowercase (A < a)
# "apple" < "Banana" because 'a' > 'B' in ASCII

# 20. Create and print a string with escape sequences using cat()
special_string <- "Hello\n\tWorld\\R"
cat(special_string)
# Outputs:
# Hello
#     World\R