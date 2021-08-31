#' @title Tokio
#' @description Devuelve la persona con mayor altura. Ademas es posible filtrar por el sexo de
#'  la persona si lo considera necesario.
#'
#' @param x Un dataframe con informacion de personas. En el caso del ejemplo son deportistas olimpicos.
#' @param altura La variable que contiene la altura de cada persona.
#' @param sexo La variable que contiene el sexo de cada persona.
#' @param s Indicacion sobre el sexo de la persona que se desea filtrar.
#'
#' @return La o las persona de mayor altura del DataFrame proporcionado.
#' @import dplyr
#' assertthat
#'
#' @examples
#' nombre <- c("Juan", "Maria", "Ana","Pablo")
#' estatura <- c(182, 167, 173, 179)
#' sexo <- c("M","F", "F", "M")
#' atletas <- data.frame(nombre, estatura, sexo)

altura <- function(x, altura, sexo, s = NULL) {
  assertthat::assert_that(is.data.frame(x), msg = ("x tiene que ser un DataFrame para que funcione"))
  if (!is.null(s)) {
    x=x[x[[sexo]]==s,]
  }
  x %>%
    dplyr::filter(x[[altura]] == max(x[[altura]],na.rm =T))
}

