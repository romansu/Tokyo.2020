## code to prepare `DATASET` dataset goes here
nombre <- c("Juan", "Maria", "Ana","Pablo")
estatura <- c(182, 167, 173, 179)
sexo <- c("M","F", "F", "M")
atletas <- data.frame(nombre, estatura, sexo)
usethis::use_data(atletas, overwrite = TRUE)
