library(ggplot2)
library(viridis)
gabax3 = read.table("/Users/Matteo/Dropbox (ELELAB)/SOS_LIR/rmsd/LC3B_comparison_pop/conan/aggregate/timeline.dat", header = FALSE, fill = TRUE)
plotclr <- c(colorRampPalette(c("white", "blue"))(50),
             colorRampPalette(c("blue", "purple", "orange"))(55),
             colorRampPalette(c("orange", "red", "darkred"))(70))
x <- gabax3$V1
y <- gabax3$V2
z <- gabax3$V4
### Plotting
pdf("timeseries_lc3b_sub.pop.pdf",width=20,height=20)
plot(x, y, type = "n") # create new plot
z_scl <- (z - min(z, na.rm=T))/(max(z, na.rm=T) - min(z, na.rm=T))
color_scl = round(z_scl*length(plotclr))
color_scl[color_scl == 0] = 1

# Loop to plot each point
for(i in 1:length(x)){ 
  points(x[i], y[i], pch = 15, col = plotclr[color_scl[i]], cex = 1)
}
### End of Plotting
dev.off()

d = subset(gabax3, x == 126)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_126.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 127)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_127.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 128)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_128.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 129)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_129.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 130)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_130.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 131)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_131.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 132)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_132.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 133)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_133.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 134)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_134.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 135)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_135.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 136)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_136.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 137)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_137.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 138)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_138.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 139)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_139.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()

d = subset(gabax3, x == 140)
d2 <- d
d2[d2 == 0] <- NA
d3 <- d2[!is.na(d2$V5), ]
plot1 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V5))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "viridis", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Persistence during time') 
plot2 <- ggplot(d3, aes(as.factor(V1), as.factor(V2), fill = as.numeric(d3$V7))) + geom_tile() + scale_fill_viridis(begin =0, end =1, option = "magma", direction = -1) + theme_bw() + theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 12), axis.text.y=element_text(color="black",size=8)) + xlab("residue") + ylab("residue") + labs(fill='Number of contact formation')
pdf("heatmap_lc3b_sub.pop_140.pdf")
require(gridExtra)
#plot1 + labs(x = "residue", y = "residue", fill = "Persistence during time")
grid.arrange(plot1, plot2, ncol=2)
dev.off()


require(formattable)
lc3 = read.table("/Users/Matteo/Dropbox (ELELAB)/SOS_LIR/rmsd/LC3B_comparison_pop/conan/aggregate/timeline.dat", header = FALSE, fill = TRUE)
x <- lc3$V1
y <- lc3$V2
z <- lc3$V4

lc3_lir <- subset(lc3, x >= 126 & x <= 140, select=c(V1, V2, V5, V7))
lc3_lir[lc3_lir == 0] <- NA
lc3_lir_inter <- lc3_lir[!is.na(lc3_lir$V5), ]
colnames(lc3_lir_inter) <- c("res1", "res2", "persistence", "encounters")


formattable(lc3_lir_inter, list(
  persistence = color_tile("white", "yellow"), 
  area(col = c(encounters)) ~ normalize_bar("pink", 0.2)))


