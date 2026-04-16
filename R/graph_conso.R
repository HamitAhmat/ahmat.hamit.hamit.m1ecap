#' Graphique de la consommation par groupe
#'
#' Produit un graphique en barres `ggplot2` a partir du resultat de
#' `conso_par_groupe()`.
#'
#' @param data Un data.frame au format de `conso_region`.
#' @param var_groupe Variable de regroupement (ex : "region", "secteur").
#' @param titre Titre du graphique.
#'
#' @return Un objet `ggplot`.
#' @export
#'
#' @importFrom rlang .data
#'
#' @examples
#' graph_conso(var_groupe = "region")
graph_conso <- function(data = conso_region,
                        var_groupe = "secteur",
                        titre = "Consommation totale par groupe") {
  df <- conso_par_groupe(data = data, var_groupe = var_groupe)

  ggplot2::ggplot(
    df,
    ggplot2::aes(
      x = stats::reorder(.data[[var_groupe]], -.data[["conso_totale"]]),
      y = .data[["conso_totale"]]
    )
  ) +
    ggplot2::geom_col(fill = "steelblue") +
    ggplot2::labs(
      title = titre,
      x = var_groupe,
      y = "Consommation totale (MWh)"
    ) +
    ggplot2::theme_minimal() +
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle = 30, hjust = 1))
}
