install.packages("dplyr")
library(dplyr)

generate_workers <- function(num_workers) {
  workers <- data.frame(
    name = paste0("Worker ", 1:num_workers),
    salary = sample(5000:35000, num_workers, replace = TRUE),
    gender = sample(c("Male", "Female"), num_workers, replace = TRUE),
    stringsAsFactors = FALSE
  )
  return(workers)
}

generate_payment_slip <- function(worker) {
  employee_level <- ""
  if (worker$salary > 10000 & worker$salary < 20000) {
    employee_level <- "A1"
  } else if (worker$salary > 7500 & worker$salary < 30000 & worker$gender == "Female") {
    employee_level <- "A5-F"
  }
  cat("Payment Slip for", worker$name, "\n")
  cat("Salary:", worker$salary, "\n")
  cat("Employee Level:", employee_level, "\n")
  cat("Employee Gender:", worker$gender, "\n")
  cat("-------------------------\n")
}

num_workers <- 400
workers <- generate_workers(num_workers)

for (i in 1:nrow(workers)) {
  generate_payment_slip(workers[i, ])
}
