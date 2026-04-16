#' Calcul groupe de la consommation
#'
#' Calcule la consommation totale (somme) et la consommation moyenne
#' (mean) par variable de regroupement.
#'
#' @param data Un data.frame au format de `conso_region`.
#' @param var_groupe Variable de regroupement (ex : "region", "secteur").
#'
#' @return Un data.frame avec la consommation totale et moyenne par groupe.
#' @export
#'
#' @examples
#' conso_par_groupe(var_groupe = "secteur")
conso_par_groupe <- function(data = conso_region,
                             var_groupe = "secteur") {
  stopifnot(var_groupe %in% names(data))

  agg <- stats::aggregate(
    data$conso_totale,
    by = list(groupe = data[[var_groupe]]),
    FUN = function(x) c(total = sum(x, na.rm = TRUE),
                        moyenne = mean(x, na.rm = TRUE))
  )
  res <- data.frame(
    groupe = agg$groupe,
    conso_totale = agg$x[, "total"],
    conso_moyenne = agg$x[, "moyenne"]
  )
  names(res)[1] <- var_groupe
  res
}
