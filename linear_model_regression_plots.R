#####This function makes linear regressions really easily
###Load the package
library(tidyverse)
######Create the function
###You can customize this but it is a good base to start from
ggplotRegression <- function (fit) {
  
  require(ggplot2)
  
  ggplot(fit$model, aes_string(x = names(fit$model)[2], y = names(fit$model)[1])) + 
    geom_point() +
    stat_smooth(method = "lm", col = "red") +
    labs(title = paste(names(fit$model)[2], "~", y = names(fit$model)[1], "     ",
                       "Adj R2 = ",signif(summary(fit)$adj.r.squared, 5),
                       "Intercept =",signif(fit$coef[[1]],5 ),
                       " Slope =",signif(fit$coef[[2]], 5),
                       " P =",signif(summary(fit)$coef[2,4], 5)))
}

#####Load your own data and run a linear regression
#####regression_name<-lm(Variable1 ~ Variable2, data = your_dataname)
depth_reg<-lm(PO_flux~ Depth, data=chesflux)

#####Create the plot, using the fuction the R2, equation and P value are displayed
#####ggplotRegression(regression_name)
ggplotRegression(depth_reg)

#####Save plot
ggsave("plots_images/depth_reg.png")