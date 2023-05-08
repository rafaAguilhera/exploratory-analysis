# Descriptive Analysis in R

# Summary of Knowing the Data

#Data Types
str(carros)

#Renaming columns in Portuguese
names(carros) <- c('Ano', 'Modelo', 'Preco', 'Kilometragem', 'Cor', 'Transmissao')

#Viewing data
View(carros)

##### Exploring Numeric Variables ##### 

# Summary
summary(carros$Ano)
str(carros)
carros$Ano <- as.character(carros$Ano)
summary(carros$Ano)
summary(carros[c("Preco", "Kilometragem")])

# Calculating Mean
mean(carros$Preco)

# Median
median(carros$Preco)

# Range - Min and Max
range(carros$Preco)

# Difference of the Range (Max - Min)
diff(range(carros$Preco))

# IQR - Interquantile Range
IQR(carros$Preco)

# Quartiles
quantile(carros$Preco)

# 1% and 99% Percentile
quantile(carros$Preco, probs = c(0.01, 0.99))

# Percentiles with a 20-unit interval
quantile(carros$Preco, seq(from = 0, to = 1, by = 0.20))

# Boxplot
boxplot(carros$Preco, main = "Boxplot Preços", ylab = "Preço (R$)")
boxplot(carros$Kilometragem, main = "Boxplot Kilometragem", ylab = "Kilometragem (Km)")

# Histogram
mean(carros$Preco)
hist(carros$Preco, main = "Histograma Preços", xlab = "Preço (R$)")

mean(carros$Kilometragem)
hist(carros$Kilometragem, main = "Histograma Kilometragem", xlab = "Kilometragem (Km)")

# Skewness and Kurtosis of Price variable
library(e1071)
skewness(carros$Preco)
kurtosis(carros$Preco)

# Variance and Standard Deviation
mean(carros$Preco)
var(carros$Preco)
sd(carros$Preco)

mean(carros$Kilometragem)
var(carros$Kilometragem)

# Standard deviation
sd(carros$Kilometragem)

# Exploring Relationship between Numeric Variables

# Scatter Plot - Kilometragem vs. Preço
plot(x = carros$Kilometragem, y = carros$Preco,
     main = "Scatterplot Kilometragem x Preço",
     xlab = "Kilometragem (Km)",
     ylab = "Preço (R$)")

# Calculating Correlation Coefficient
cor(carros$Kilometragem, carros$Preco)
#indicates strong negative correlation

# Scatter Plot - Price vs. Year
plot(x = carros$Preco , y = carros$Ano,
     main = "Scatterplot Preço x  Ano ",
     xlab = "Preço (R$)",
     ylab = "Ano")

# Aggregation
?aggregate

# Média de preços dos carros por ano
str(carros)
aggregate(carros$Preco ~ carros$Ano, FUN = mean, data = carros)


#####  Exploring Categorical Variables #####  

# Frequency Table
str(carros)
?table
table(carros$Ano)
table(carros$Modelo)
table(carros$Cor)

# Proportions of the Frequency Table
model_table <- table(carros$Modelo)
prop.table(model_table)

# Adjusting the Proportion Results
color_table <- table(carros$Cor)
color_pct <- prop.table(color_table) * 100
round(color_pct, digits = 1)

# Graphical Summary and Relationship between Categorical Variables
library(ggplot2)

# Total Vehicles by Transmission Type
ggplot(data = carros, aes(x = as.factor(Transmissao))) +
  geom_bar(aes(y = (..count..))) +
  labs(x = "Transmissao", y = "Contagem de Carros Por Tipo de Transmissao")

str(carros)
carros$Transmissao <- as.factor(carros$Transmissao)
str(carros)

# Proportion of vehicles by transmission type and color
ggplot(carros, aes(x = as.factor(Transmissao))) +
  geom_bar(aes(y = (..count..)/sum(..count..))) +
  xlab("Transmissao") +
  scale_y_continuous(labels = scales::percent, name = "Proporção") +
  facet_grid(~ Cor) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

## Adapted from exercises performed in the Business Analytics course
#available at: https://www.datascienceacademy.com.br/start
