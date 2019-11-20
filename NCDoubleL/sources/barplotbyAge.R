# Cancer by Age

plot <- function(data,age){
  #filter data
  data2 <- data %>%
    filter(Age_group == age) %>% 
    select(Year,Num_cancer)
  # plot the graph with well formatted comments
  years <- data2$Year
  num_cancer <- data2$Num_cancer
  mydata <- data.frame(years, num_cancer)
  p <- ggplot(mydata, aes(years, num_cancer))
  plot <- p + geom_bar(stat = "identity") +
    xlab("Years") + ylab("Number Of Cancer") +
    ggtitle("Number Of Cancer vs Years(1990-2017)")
  return(plot)
}