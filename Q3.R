library(MASS)
library(ggplot2)


accidents_by_type <- table(ships$type)


accidents_df <- data.frame(ship_type = names(accidents_by_type),
                           accidents = as.numeric(accidents_by_type))


ggplot(accidents_df, aes(x = ship_type, y = accidents, fill = ship_type)) +
  geom_bar(stat = "identity") +
  labs(x = "Ship Type", y = "Number of Accidents", title = "Accidents by Ship Type") +
  theme_minimal()

