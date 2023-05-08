# Elementary Statistics

# This project aims to better understand how to perform basic statistical analyses
# and how to visualize data using R.

# The PimaIndiansDiabetes2 DataSet provided by R itself will be used.

# Knowing the DataSet
?? PimaÍndiosDiabetes2

# Format
# pregnant -> Number of times pregnant
# glucose -> Plasma glucose concentration (glucose tolerance test)
# blood pressure -> Diastolic blood pressure (mm Hg)
# skin fold thickness -> Triceps skin fold thickness (mm)
# insulin -> 2-hour serum insulin (muU/ml)
# bmi -> Body mass index (weight in kg/(height in m)^2)
# pedigree -> Diabetes pedigree function
# age -> Age (years)
# diabetes -> Class variable (0 or 1)

Translate: 
# grávida -> Número de vezes grávida
# glucose -> Concentração de glicose plasmática (teste de tolerância à glicose)
# pressão -> Pressão arterial diastólica (mm Hg)
# tríceps -> Espessura da prega cutânea do tríceps (mm)
# insulina -> Insulina sérica de 2 horas (muU/ml)
# massa -> Índice de massa corporal (peso em kg/(altura em m)\^2)
# pedigree -> Função de pedigree de diabetes
# idade -> Idade (anos)
# diabetes -> Variável de classe (teste para diabetes)

# Importing Data Set
data( " PimaIndiansDiabetes2 " )
 
# Transforming into DataSet
conjunto de dados  <-  PimaIndiansDiabetes2

# Viewing DataSet
Exibir ( conjunto de dados )


# ################################################## ###############################################
# ELEMENTARY STATISTICAL ANALYSIS
# ################################################## ###############################################

# DataSet Dimensions
dim( conjunto de dados )

# Data types
str( conjunto de dados )
? str

# Summary Descriptive Statistics
resumo ( conjunto de dados )

# Average Age
média ( conjunto de dados $ idade )

# Age Average surpasses possible NA values
média ( conjunto de dados $ idade , na.rm  =  TRUE )

# Checking NA values from AGE dimension
is.na( conjunto de dados $ idade )

# Age Dimension Median
mediana ( conjunto de dados $ idade )

# Age Dimension Mode
x <- c(dataset$age)
freq_table <- table(x)
moda <- names(which.max(freq_table))
moda

# Age Dimension Quartiles
quantile ( conjunto de dados $ idade )

# Age Dimension Range
intervalo ( conjunto de dados $ idade )

# Interquartile Range
IQR( conjunto de dados $ idade )

# Variance
var( conjunto de dados $ idade )

# Standard Deviation
sd( conjunto de dados $ idade )

# Covariance between AGE and GLUCOSE dimensions
cov( conjunto de dados $ idade , conjunto de dados $ glicose )

# Correlation Coefficient between variables
cor( conjunto de dados $ idade , conjunto de dados $ glicose )
correlacoes  <- cor( dataset [, 1 : 8 ])
print( correlacoes )

# Symmetry of AGE dimension
? assimetria
assimetria ( conjunto de dados $ idade )

# AGE Dimension Histogram
hist( conjunto de dados $ idade )
