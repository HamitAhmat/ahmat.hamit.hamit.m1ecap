## code to prepare `conso_region` dataset goes here

# =============================================================================
# Presentation du jeu de donnees
# =============================================================================
# Jeu de donnees : "Consommation annuelle d'electricite et de gaz par region"
# Publie par l'Agence ORE (https://www.agenceore.fr/) sur data.gouv.fr
# sous Licence Ouverte v2.0.
#
# Le jeu de donnees couvre la periode 2011-2024 et decrit la consommation
# d'energie (electricite et gaz) dans les regions francaises, ventilee par
# secteur d'activite (residentiel, tertiaire, industriel, agricole).
#
# Pour respecter la limite de 500 ko, le jeu de donnees a ete filtre sur
# 3 regions : Bretagne, Pays de la Loire et Ile-de-France.
# =============================================================================

url_jeu_de_donnees <- "https://www.data.gouv.fr/datasets/consommation-annuelle-delectricite-et-gaz-par-region"

# ---- Etape 1 : Telechargement du fichier brut (deja execute) ----------------
 library(readr)
# library(dplyr)
#
# url <- "https://www.data.gouv.fr/api/1/datasets/r/76735be4-90d1-4843-bdb8-8118ad90af0a"
# download.file(url, destfile = "data-raw/conso_region_brut.csv", mode = "wb")
#
# ---- Etape 2 : Importation du fichier brut ----------------------------------
# conso_brut <- read_delim("data-raw/conso_region_brut.csv", delim = ",")
#
# ---- Etape 3 : Reduction pour passer sous 500 ko ----------------------------
# conso_region <- conso_brut %>%
#   filter(region %in% c("Bretagne", "Pays de la Loire", "Île-de-France"))
#
# write.csv(conso_region, "data-raw/conso_region_reduit.csv", row.names = FALSE)

# ---- Etape 4 : Chargement du CSV deja reduit --------------------------------
conso_region <- read_delim(
  "data-raw/conso_region_reduit.csv",
  delim = ",",
  locale = locale(encoding = "UTF-8"),
  show_col_types = FALSE
)

usethis::use_data(conso_region, overwrite = TRUE)


