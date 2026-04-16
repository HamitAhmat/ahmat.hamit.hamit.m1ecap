#' Consommation annuelle d'electricite et de gaz par region
#'
#' Jeu de donnees de consommation annuelle d'energie (electricite et gaz)
#' dans les regions francaises, ventilee par operateur, annee et secteur
#' d'activite. Extrait de l'Agence ORE via data.gouv.fr, filtre sur
#' 3 regions (Bretagne, Pays de la Loire, Ile-de-France) pour respecter
#' la limite de 500 ko.
#'
#' @format Un data.frame avec 10 variables :
#' \describe{
#'   \item{operateur}{Nom de l'operateur}
#'   \item{filiere}{Filiere energetique : Gaz ou Electricite}
#'   \item{annee}{Annee de la consommation}
#'   \item{code_region}{Code INSEE de la region}
#'   \item{region}{Nom de la region}
#'   \item{code_conso}{Code du type de consommateur}
#'   \item{secteur}{Secteur d'activite}
#'   \item{nb_sites}{Nombre de sites}
#'   \item{conso_totale}{Consommation totale en MWh}
#'   \item{conso_moyenne}{Consommation moyenne par site en MWh}
#' }
#' @source \url{https://www.data.gouv.fr/datasets/consommation-annuelle-delectricite-et-gaz-par-region}
"conso_region"
