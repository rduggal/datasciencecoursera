# Multiple plot function ggplot objects can be
# passed in ..., or to plotlist (as a list of ggplot
# objects) - cols: Number of columns in layout -
# layout: A matrix specifying the layout. If
# present, 'cols' is ignored.  If the layout is
# something like matrix(c(1,2,3,3), nrow=2,
# byrow=TRUE), then plot 1 will go in the upper
# left, 2 will go in the upper right, and 3 will go
# all the way across the bottom.
# Source : http://www.cookbook-r.com/Graphs/Multiple_graphs_on_one_page_(ggplot2)/
multiplot <- function(..., plotlist = NULL, file, cols = 1, 
    layout = NULL) {
    library(grid)
    
    # Make a list from the ... arguments and plotlist
    plots <- c(list(...), plotlist)
    
    numPlots = length(plots)
    
    # If layout is NULL, then use 'cols' to determine
    # layout
    if (is.null(layout)) {
        # Make the panel ncol: Number of columns of plots
        # nrow: Number of rows needed, calculated from # of
        # cols
        layout <- matrix(seq(1, cols * ceiling(numPlots/cols)), 
            ncol = cols, nrow = ceiling(numPlots/cols))
    }
    
    if (numPlots == 1) {
        print(plots[[1]])
        
    } else {
        # Set up the page
        grid.newpage()
        pushViewport(viewport(layout = grid.layout(nrow(layout), 
            ncol(layout))))
        
        # Make each plot, in the correct location
        for (i in 1:numPlots) {
            # Get the i,j matrix positions of the regions that
            # contain this subplot
            matchidx <- as.data.frame(which(layout == 
                i, arr.ind = TRUE))
            
            print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row, 
                layout.pos.col = matchidx$col))
        }
    }
}


# The first 3 lines were executedonce in plot1.R, we re-use the filtered.txt created therefrom
# system('head -1 household_power_consumption.txt
# >h1.txt') system('egrep '^(1|2)/2/2007'
# household_power_consumption.txt >f1.txt')
# system('cat h1.txt f1.txt >filtered.txt')
household_pc <- read.table("filtered.txt", sep = ";", 
    header = T, na.strings = "?")
t1 <- paste(household_pc$Date, household_pc$Time)
household_pc$ptime <- strptime(t1, format = "%d/%m/%Y %H:%M:%S")
h1 <- household_pc[, c(10, 7, 8, 9)]
png(filename = "~/learn/R/exploratory_da/plot4.png", 
    width = 480, height = 480, units = "px")

p1 <- ggplot(household_pc, aes(ptime)) + geom_line(aes(y = Global_active_power))
p2 <- ggplot(household_pc, aes(ptime)) + geom_line(aes(y = Voltage))
p3 <- ggplot(h1, aes(ptime)) + geom_line(aes(y = Sub_metering_1, 
    colour = "Sub_metering_1")) + geom_line(aes(y = Sub_metering_2, 
    colour = "Sub_metering_2")) + geom_line(aes(y = Sub_metering_3, 
    colour = "Sub_metering_3"))
p4 <- ggplot(household_pc, aes(ptime)) + geom_line(aes(y = Global_reactive_power))
multiplot(p1, p2, p3, p4, cols=2)
dev.off()
## RStudioGD 
##         2 

## RStudioGD 2



