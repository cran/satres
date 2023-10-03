## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo = FALSE, message=FALSE---------------------------------------
library(satres)

## ----eval=FALSE---------------------------------------------------------------
#  sat_untarzip("download/esa", out_dir = "esa")

## -----------------------------------------------------------------------------
f <- system.file("extdata", "esa/f", package = "satres")
g <- system.file("extdata", "esa/g", package = "satres")

## ----eval=FALSE---------------------------------------------------------------
#  sr_all <- satres(dir = "esa", out_dir = "esa/out", only_bands = FALSE)

## -----------------------------------------------------------------------------
esa <- system.file("extdata", "esa", package = "satres")
sr <- satres(dir = esa)

## -----------------------------------------------------------------------------
sr |>
  get_spatial_resolution()

## -----------------------------------------------------------------------------
r1000m <- sr |>
  as_SpatRaster("r1000m")

## ----bands--------------------------------------------------------------------
terra::plot(r1000m)

## -----------------------------------------------------------------------------
r2000m <- sr |>
  as_SpatRaster("r2000m")
names(r2000m)

r6000m <- sr |>
  as_SpatRaster("r6000m")
names(r6000m)

## -----------------------------------------------------------------------------
sr |>
  save_by_resolution(out_dir = "esa/out", only_show_files = TRUE)

