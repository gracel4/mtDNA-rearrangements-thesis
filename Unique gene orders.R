
library('readxl')
library(data.table)

excel_sheets("species.xlsx")

Fish <- read_excel("species.xlsx", sheet = 1, range = "F3:BB1354")
Amphibia <- read_excel("species.xlsx", sheet = "NCBI_Amphibia", range = "NCBI_Amphibia!F7:BF247")
Reptilia <- read_excel("species.xlsx", sheet = "NCBI_Reptilia", range ="NCBI_Reptilia!F7:BF323")
Aves <- read_excel("species.xlsx", sheet = "NCBI_Aves", range="NCBI_Aves!F7:AU626")
Mammalia <- read_excel("species.xlsx", sheet = "NCBI_Mammalia", range="NCBI_Mammalia!F1:AP307")

#Count the number of unique rows
sum(!duplicated(Fish))  
sum(!duplicated(Amphibia))
sum(!duplicated(Reptilia))
sum(!duplicated(Aves))
sum(!duplicated(Mammalia))


# Just proteins
excel_sheets("speciesprotein.xlsx")
Fish2 <- read_excel("speciesprotein.xlsx", sheet = 1, range = "F3:S1354")
Amphibia2 <- read_excel("speciesprotein.xlsx", sheet = "NCBI_Amphibia", range = "NCBI_Amphibia!F7:S247")
Reptilia2 <- read_excel("speciesprotein.xlsx", sheet = "NCBI_Reptilia", range ="NCBI_Reptilia!F7:W323")
Aves2 <- read_excel("speciesprotein.xlsx", sheet = "NCBI_Aves", range="NCBI_Aves!F7:T626")
Mammalia2 <- read_excel("speciesprotein.xlsx", sheet = "NCBI_Mammalia", range="NCBI_Mammalia!F4:R307")

#Count the number of unique rows
sum(!duplicated(Fish2))  
sum(!duplicated(Amphibia2)) 
sum(!duplicated(Reptilia2))
sum(!duplicated(Aves2))
sum(!duplicated(Mammalia2))

# Count how many species have a particular gene order
setDT(Fish2)[,list(Count=.N),names(Fish2)]
setDT(Amphibia2)[,list(Count=.N),names(Amphibia2)]
setDT(Reptilia2)[,list(Count=.N),names(Reptilia2)]
setDT(Aves2)[,list(Count=.N),names(Aves2)]
setDT(Mammalia2)[,list(Count=.N),names(Mammalia2)]


#tRNAs
excel_sheets("speciestrna.xlsx")
Fish3 <- read_excel("speciestrna.xlsx", sheet = 1, range = "F3:S1354")
Amphibia3 <- read_excel("speciestrna.xlsx", sheet = "NCBI_Amphibia", range = "NCBI_Amphibia!F7:BB247")
Reptilia3 <- read_excel("speciestrna.xlsx", sheet = "NCBI_Reptilia", range ="NCBI_Reptilia!F7:BB323")
Aves3 <- read_excel("speciestrna.xlsx", sheet = "NCBI_Aves", range="NCBI_Aves!F7:BB626")
Mammalia3 <- read_excel("speciestrna.xlsx", sheet = "NCBI_Mammalia", range="NCBI_Mammalia!F4:BB307")

sum(!duplicated(Fish3))  
sum(!duplicated(Amphibia3)) 
sum(!duplicated(Reptilia3))
sum(!duplicated(Aves3))
sum(!duplicated(Mammalia3))

