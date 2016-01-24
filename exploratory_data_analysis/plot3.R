# The first 3 lines were executedonce in plot1.R, we re-use the filtered.txt created therefrom
#system("head -1 household_power_consumption.txt >h1.txt")
#system("egrep '^(1|2)/2/2007' household_power_consumption.txt >f1.txt")
#system("cat h1.txt f1.txt >filtered.txt")
household_pc<-read.table("filtered.txt", sep=';', header=T, na.strings = "?")
t1<-paste(household_pc$Date, household_pc$Time)
household_pc$ptime<-strptime(t1, format = "%d/%m/%Y %H:%M:%S")
h1<-household_pc[, c(10, 7, 8, 9)]
png(filename="~/learn/R/exploratory_da/plot3.png", width=480, height=480, units="px")
ggplot(h1, aes(ptime)) + geom_line(aes(y = Sub_metering_1, colour = "Sub_metering_1")) + geom_line(aes(y = Sub_metering_2, colour = "Sub_metering_2")) + geom_line(aes(y = Sub_metering_3, colour = "Sub_metering_3"))
dev.off()
