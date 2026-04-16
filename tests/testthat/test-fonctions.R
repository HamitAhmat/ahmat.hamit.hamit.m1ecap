test_that("filtrer_conso filtre par region", {
  res <- filtrer_conso(region_choisie = "Bretagne")
  expect_true(all(res$region == "Bretagne"))
  expect_s3_class(res, "data.frame")
})

test_that("filtrer_conso filtre par filiere", {
  res <- filtrer_conso(filiere_choisie = "Gaz")
  expect_true(all(res$filiere == "Gaz"))
})

test_that("filtrer_conso combine les deux filtres", {
  res <- filtrer_conso(region_choisie = "Bretagne", filiere_choisie = "Gaz")
  expect_true(all(res$region == "Bretagne"))
  expect_true(all(res$filiere == "Gaz"))
})

test_that("filtrer_conso sans filtre renvoie tout", {
  res <- filtrer_conso()
  expect_equal(nrow(res), nrow(conso_region))
})

test_that("conso_par_groupe renvoie un data.frame avec conso_totale", {
  res <- conso_par_groupe(var_groupe = "secteur")
  expect_s3_class(res, "data.frame")
  expect_true("conso_totale" %in% names(res))
  expect_true("conso_moyenne" %in% names(res))
})

test_that("graph_conso renvoie un objet ggplot", {
  g <- graph_conso(var_groupe = "region")
  expect_s3_class(g, "ggplot")
})
