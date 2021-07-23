
# Instalação e Carregamento de Todos os Pacotes ---------------------------

pacotes <- c("plotly","tidyverse","knitr","kableExtra","car","rgl","gridExtra",
             "PerformanceAnalytics","reshape2","rayshader","psych","ggrepel",
             "factoextra","sp","tmap","magick","gridExtra")

if(sum(as.numeric(!pacotes %in% installed.packages())) != 0){
  instalador <- pacotes[!pacotes %in% installed.packages()]
  for(i in 1:length(instalador)) {
    install.packages(instalador, dependencies = T)
    break()
  }
  sapply(pacotes, require, character = T) 
} else {
  sapply(pacotes, require, character = T) 
}

load("pca_arquivo03.RData")
summary(pca_arquivo03)


load("rho_arquivo02.RData")
rho_arquivo02

cortest.bartlett(R = rho_arquivo02)


load("rho_arquivo01.RData")

rho_aqruivo01


load("pca_arquivo02.RData")

summary(pca_arquivo02)

pca_arquivo02$sdev ^2

1.9558 * 1.9558
1.9558 ^ (1/2)

load("rho_arquivo01.RData")

rho_aqruivo01

load("pca_arquivo01.RData")
summary(pca_arquivo01)

pca_arquivo01$sdev ^ 2


load("pca_arquivo01.RData")
summary(pca_arquivo01)
pca_arquivo01$sdev ^ 2

sum(pca_arquivo01$sdev ^ 2)
sum((pca_arquivo01$sdev ^ 2) > 1) 


load("pca_arquivo03.RData")

summary(pca_arquivo03)
pca_arquivo03$sdev ^2
(pca_arquivo03$sdev ^2) / 11





load("pca_arquivo02.RData")
summary(pca_arquivo02)
pca_arquivo02$sdev ^ 2




load("pca_arquivo02.RData")
summary(pca_arquivo02)
k <- 2
cargas_fatoriais <- pca_arquivo02$rotation[, 1:k] %*% diag(pca_arquivo02$sdev[1:k])
data.frame(cargas_fatoriais) %>%
  rename(F1 = X1,
         F2 = X2) %>%
  kable() %>%
  kable_styling(bootstrap_options = "striped", 
                full_width = T, 
                font_size = 12)
data.frame(rowSums(cargas_fatoriais ^ 2)) %>%
  rename(comunalidades = 1) %>%
  kable() %>%
  kable_styling(bootstrap_options = "striped", 
                full_width = T, 
                font_size = 12)
