install.packages("ggplot2")
install.packages("dplyr")
install.packages("ggthemes")

library(ggplot2)
library(dplyr)
library(ggthemes)

data <- data.frame(
  Category = c(rep("A", 3), rep("B", 3), rep("C", 3), rep("D", 3)),
  Group = rep(c("Group 1", "Group 2", "Group 3"), 4),
  Value = c(20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75)
)

ggplot(data, aes(x = Category, y = Value, fill = Group)) +
  geom_bar(stat = "identity", position = "dodge", color = "black", width = 0.7) +
  theme_economist_white() +
  scale_fill_economist() +
  theme(
    plot.title = element_text(hjust = 0.5),
    legend.title = element_blank()
  ) +
  labs(
    title = "Sample Grouped Bar Plot",
    x = "Category",
    y = "Value"
  )
