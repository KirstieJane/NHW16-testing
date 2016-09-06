args <- commandArgs(trailingOnly = TRUE)

demographics <- read.csv(file=args[1], head=TRUE, sep="\t")

age <- demographics$age
mean_age <- sum(age)/length(age)

# Add in the assertion tests
# to check that the mean age is
# between 100 and 10
stopifnot(mean_age < 100)
stopifnot(mean_age > 10)

# Carry on if the tests pass :)
demean_age <- age - sum(age)/length(age)

write.table(demean_age, file="age_demeaned.tsv", row.names=FALSE, col.names=FALSE, sep="\t")

print("done!")
