## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo = FALSE, message=FALSE---------------------------------------
library(satres)

## -----------------------------------------------------------------------------
esa <- system.file("extdata", "esa", package = "satres")
esa_f <- system.file("extdata", "esa/f", package = "satres")
esa_g <- system.file("extdata", "esa/g", package = "satres")

## -----------------------------------------------------------------------------
lanjaron_gpkg <- system.file("extdata", "lanjaron.gpkg", package = "satres")

## -----------------------------------------------------------------------------
sr <- satres(dir = esa)

## -----------------------------------------------------------------------------
sr_all <- satres(dir = esa, only_spectral_bands = FALSE)

## -----------------------------------------------------------------------------
sr_f <- satres(dir = esa_f)
sr_g <- satres(dir = esa_g)

## -----------------------------------------------------------------------------
sr |>
  get_spatial_resolution()

r_1000m <- sr |>
  as_SpatRaster("r1000m")

r_all_1000m <- sr_all |>
  as_SpatRaster("r1000m")

r_f_1000m <- sr_f |>
  as_SpatRaster("r1000m")

r_g_1000m <- sr_g |>
  as_SpatRaster("r1000m")

## -----------------------------------------------------------------------------
names(r_1000m)

names(r_all_1000m)

## -----------------------------------------------------------------------------
terra::plot(r_1000m[["B02"]])

terra::plot(r_g_1000m[["B02"]])

terra::plot(r_f_1000m[["B02"]])

## -----------------------------------------------------------------------------
sr_all |>
  get_spatial_resolution()

## -----------------------------------------------------------------------------
sr_all |>
  get_band_names(res = "r1000m")

sr_all |>
  get_band_names()

## -----------------------------------------------------------------------------
sr_all |>
  get_spectral_band_names(res = "r1000m")

sr_all |>
  get_spectral_band_names()

## -----------------------------------------------------------------------------
sr_sel1 <- sr_all |>
  select_bands(res = c("r2000m", "r6000m"),
               bands = c("B01", "B02", "B03"))
sr_sel1 |>
  get_spatial_resolution()
sr_sel1 |>
  get_band_names()

sr_sel2 <- sr_all |>
  select_bands(bands = c("B01", "B02", "B03"))
sr_sel2 |>
  get_spatial_resolution()
sr_sel2 |>
  get_band_names()

## -----------------------------------------------------------------------------
sr2 <- sr_f |>
  merge_tiles(sr_g)

## -----------------------------------------------------------------------------
terra::plot(r_1000m[["B02"]])

r2_1000m <- sr2 |>
  as_SpatRaster("r1000m")
terra::plot(r2_1000m[["B02"]])

sr |>
  get_spatial_resolution()
sr |>
  get_band_names()

sr2 |>
  get_spatial_resolution()
sr2 |>
  get_band_names()

## -----------------------------------------------------------------------------
lanjaron <-
  sf::st_read(lanjaron_gpkg, layer = "lanjaron", quiet = TRUE)

## -----------------------------------------------------------------------------
sr_lanjaron <- sr |>
  clip_bands(polygon = lanjaron)

## -----------------------------------------------------------------------------
r_lanjaron_1000m <- sr_lanjaron |>
  as_SpatRaster("r1000m")

terra::plot(r_lanjaron_1000m[["B02"]])
terra::plot(sf::st_geometry(lanjaron), add = TRUE)

## ----bands--------------------------------------------------------------------
terra::plot(r_lanjaron_1000m)

