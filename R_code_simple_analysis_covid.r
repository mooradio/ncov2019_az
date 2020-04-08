install.packages("ggplot2")

library(ggplot2)

library(readxl)

covaz <- read_excel("covaz.xlsx", col_types = c("date","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

attach(covaz)

head(covaz)

str(covaz)


ggplot(covaz, aes(x=date,y=total.cases))+geom_line(col="black",linetype="longdash")+xlab(NULL)+ylab("Number of Total Cases")+labs(title = "Coronavirus cases in Azerbaijan", subtitle = "Confirmed cases", caption = "(based on data from https://cabmin.gov.az/)")+theme_grey(base_size = 13)+theme(axis.text = element_text(colour = "black", size = rel(0.7)))

ggplot(covaz, aes(x=date,y=total.deaths))+geom_line(col="red",linetype=1)+xlab(NULL)+ylab("Number of Deaths")+labs(title = "Coronavirus cases in Azerbaijan", subtitle = "Confirmed deaths", caption = "(based on data from https://cabmin.gov.az/)")+theme_grey(base_size = 13)+theme(axis.text = element_text(colour = "black", size = rel(0.7)))

ggplot(covaz, aes(x=date,y=total.recovered))+geom_line(col="blue",linetype=1)+xlab(NULL)+ylab("Number of Recoveries")+labs(title = "Coronavirus cases in Azerbaijan", subtitle = "Recoveries", caption = "(based on data from https://cabmin.gov.az/)")+theme_grey(base_size = 13)+theme(axis.text = element_text(colour = "black", size = rel(0.7)))




