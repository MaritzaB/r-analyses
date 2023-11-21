library(ggplot2)

jan_price=c(10,20,30)
mar_price=c(18,23,21)
june_price=c(25,31,35)
items=c("potato", "rice", "oil")

all_prices=data.frame(items, jan_price, mar_price, june_price)

ggplot(all_prices, aes(x=items, y=jan_price)) + geom_point() + geom_point(stat="summary", fun=mean, colour="red", size=3)

ggplot(all_prices, aes(x = jan_price, y = june_price)) + geom_point() + facet_grid(. ~ items) + stat_smooth(method = "lm", se = TRUE, col='blue')

