all_prices = data.frame(items = rep(c("potato", "rice", "oil"), 4), 
                        jan_price = c(10, 20, 30, 10, 18, 25, 9, 17, 24, 9, 19,27),
                        mar_price = c(11, 22, 33, 13, 25, 32, 12, 21, 33, 15, 27,39),
                        june_price = c(20, 25, 33, 21, 24, 40, 17, 22, 27, 13, 18,23)
)

tapply(all_prices$jan_price, factor(all_prices$items), mean)

tapply(all_prices$jan_price, factor(all_prices$items), sd)

x = rnorm(50)
y = rnorm(50)

plot(x, y, pch=19, col='red')
