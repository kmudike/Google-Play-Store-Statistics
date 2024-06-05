library(readr)
library(VIM)
library(ggplot2)
library(aplpack)


dataset <- read_csv("gps.csv")

boxplot(dataset$`Reviews(ratio)`, 
        outline=FALSE,
        main="Value Distribution",
        ylab="Brand Value ($M)")



# Q2 Most installs
x = c('1.2<', '>4.5', '3+.2', '-1d0', '2aadddab2','1.3h')
dataset$Installs = gsub("+", "", dataset$Installs, fixed=TRUE)
dataset$Installs = gsub(",", "", dataset$Installs, fixed=TRUE)
dataset$Installs = strtoi(dataset$Installs, base=0L)
ggplot(dataset, aes(Category, Installs)) + geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, vjust = 1, hjust = 1))


# Q3 
dataset$`Price(interval)` = gsub("$", "", dataset$`Price(interval)`, fixed=TRUE)
dataset$`Price(interval)` = gsub("Everyone", "0", dataset$`Price(interval)`, fixed=TRUE)

dataset$`Price(interval)` = strtoi(dataset$`Price(interval)`, base=0L)

