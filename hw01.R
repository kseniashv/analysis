data.df <- read.table("http://people.math.umass.edu/~anna/Stat597AFall2016/rnf6080.dat")

dim(data.df)

colnames(data.df)

data.df[5, 7]

data.df[2, ]

names(data.df) <- c("year", "month", "day", paste0("hour_", seq(0, 23)))

head(data.df, n = 10)
tail(data.df, n = 15)

data.df$daily <- rowSums(data.df[, 4:27])

hist(data.df$daily, main="Гистограмма осадков по дню", xlab="Осадки", ylab="Частота")

fixed.df <- data.df

fixed.df[,4:27][fixed.df[,4:27]<0] <- 0

fixed.df$daily <- rowSums(fixed.df[, 4:27])

hist(fixed.df$daily, main="Гистограмма осадков по дню", xlab="Осадки", ylab="Частота")

seq(1, 10000, 372)
seq(1, 10000, length.out = 50)
