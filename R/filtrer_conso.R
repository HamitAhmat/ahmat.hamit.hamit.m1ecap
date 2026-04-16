#' Filtrer le jeu de donnees de consommation
#'
#' @param data Un data.frame au format de `conso_region`.
#' @param region_choisie Nom de la region a conserver (ou NULL).
#' @param filiere_choisie Filiere a conserver : "Gaz" ou "Electricite" (ou NULL).
#'
#' @return Un data.frame filtre.
#' @export
#'
#' @examples
#' filtrer_conso(region_choisie = "Bretagne", filiere_choisie = "Gaz")
filtrer_conso <- function(data = conso_region,
                          region_choisie = NULL,
                          filiere_choisie = NULL) {
  res <- data
  if (!is.null(region_choisie)) {
    res <- res[res$region == region_choisie, ]
  }
  if (!is.null(filiere_choisie)) {
    res <- res[res$filiere == filiere_choisie, ]
  }
  res
}
