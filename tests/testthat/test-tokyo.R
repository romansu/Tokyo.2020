test_that("Resultado esperado", {
  nombre <- c("Juan", "Maria", "Ana","Pablo")
  estatura <- c(182, 167, 173, 179)
  sexo <- c("M","F", "F", "M")
  atletas <- data.frame(nombre, estatura, sexo)
  expect_type(altura (atletas, "estatura", "sexo", "s" = "M"), "list")
})

