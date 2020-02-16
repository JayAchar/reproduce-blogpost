# summarise mtcars and output to csv

summary_output <- skimr::skim(mtcars)
write.csv(summary_output,
          file = "output/summary_mtcars.csv")

# generate plot of diamonds data
library(ggplot2)
p <- ggplot(diamonds,
       aes(x = carat,
           y = price,
           color = clarity)) +
  geom_point()

ggplot2::ggsave(plot = p, filename = "output/diamonds_plot.png")
