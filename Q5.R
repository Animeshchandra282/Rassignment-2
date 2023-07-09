
total_whole_tablets <- 100


total_half_tablets <- total_whole_tablets * 2


days <- 0


half_tablets_pulled <- 0


while (half_tablets_pulled == 0) {
  
  random_tablet <- sample(c("whole", "half"), 1, replace = TRUE, prob = c(0.5, 0.5))
  
  
  if (random_tablet == "half") {
    half_tablets_pulled <- 1
    average_days <- days
  } else {

    total_half_tablets <- total_half_tablets + 1
    days <- days + 1
  }
}


print(average_days)

