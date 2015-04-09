library(dplyr)
library(ggplot2)
data(ToothGrowth)
data <- ToothGrowth

summary(data)

ggplot(data = data, aes(x = dose, y = len, fill = supp))+
        geom_bar(stat = "identity") +
        facet_grid(.~supp) +
        xlab("Dosage of Supplement (in milligrams)") +
        ylab("Tooth Length")