
birthday_sample <- function(group_size) {
  sample(1:365, group_size, replace = TRUE)
}


birthday_match <- function(birthdays) {
  length(unique(birthdays)) != length(birthdays)
}


many_samples <- function(reps, group_size) {
  matches <- replicate(reps, birthday_match(birthday_sample(group_size)))
  mean(matches)
}


set.seed(123)


group_size <- 23
reps <- 10000  


probability <- many_samples(reps, group_size)
print(paste("Probability of at least one shared birthday in a group of", group_size, "is approximately", round(probability * 100, 2), "%"))
