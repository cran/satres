test_that("satres()", {
  expect_equal({
    esa <- system.file("extdata", "esa/f", package = "satres")
    sr <- satres(dir = esa,
                 out_dir = tempdir(),
                 only_spectral_bands = TRUE)
    c(
      names(sr$bands),
      names(sr$bands[["r1000m"]]),
      names(sr$bands[["r2000m"]]),
      names(sr$bands[["r6000m"]]),
      basename(sr$virtual_files)
    )
  },
  c(
    "r1000m",
    "r2000m",
    "r6000m",
    "B02",
    "B03",
    "B04",
    "B08",
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B11",
    "B12",
    "B8A",
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B09",
    "B11",
    "B12",
    "B8A",
    "B01_20m.vrt",
    "B01_60m.vrt",
    "B02_10m.vrt",
    "B02_20m.vrt",
    "B02_60m.vrt",
    "B03_10m.vrt",
    "B03_20m.vrt",
    "B03_60m.vrt",
    "B04_10m.vrt",
    "B04_20m.vrt",
    "B04_60m.vrt",
    "B05_20m.vrt",
    "B05_60m.vrt",
    "B06_20m.vrt",
    "B06_60m.vrt",
    "B07_20m.vrt",
    "B07_60m.vrt",
    "B08_10m.vrt",
    "B09_60m.vrt",
    "B11_20m.vrt",
    "B11_60m.vrt",
    "B12_20m.vrt",
    "B12_60m.vrt",
    "B8A_20m.vrt",
    "B8A_60m.vrt"
  ))
})


test_that("satres()", {
  expect_equal({
    esa <- system.file("extdata", "esa/f", package = "satres")
    sr <- satres(dir = esa,
                 out_dir = tempdir(),
                 only_spectral_bands = FALSE)
    c(
      names(sr$bands),
      names(sr$bands[["r1000m"]]),
      names(sr$bands[["r2000m"]]),
      names(sr$bands[["r6000m"]]),
      basename(sr$virtual_files)
    )
  },
  c(
    "r1000m",
    "r2000m",
    "r6000m",
    "AOT",
    "B02",
    "B03",
    "B04",
    "B08",
    "MSK_DETFOO_B02",
    "MSK_DETFOO_B03",
    "MSK_DETFOO_B04",
    "MSK_DETFOO_B08",
    "WVP",
    "AOT",
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B11",
    "B12",
    "B8A",
    "MSK_CLDPRB",
    "MSK_DETFOO_B05",
    "MSK_DETFOO_B06",
    "MSK_DETFOO_B07",
    "MSK_DETFOO_B11",
    "MSK_DETFOO_B12",
    "MSK_DETFOO_B8A",
    "MSK_SNWPRB",
    "SCL",
    "WVP",
    "AOT",
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B09",
    "B11",
    "B12",
    "B8A",
    "MSK_CLDPRB",
    "MSK_DETFOO_B01",
    "MSK_DETFOO_B09",
    "MSK_DETFOO_B10",
    "MSK_SNWPRB",
    "SCL",
    "WVP",
    "AOT_10m.vrt",
    "AOT_20m.vrt",
    "AOT_60m.vrt",
    "B01_20m.vrt",
    "B01_60m.vrt",
    "B02_10m.vrt",
    "B02_20m.vrt",
    "B02_60m.vrt",
    "B03_10m.vrt",
    "B03_20m.vrt",
    "B03_60m.vrt",
    "B04_10m.vrt",
    "B04_20m.vrt",
    "B04_60m.vrt",
    "B05_20m.vrt",
    "B05_60m.vrt",
    "B06_20m.vrt",
    "B06_60m.vrt",
    "B07_20m.vrt",
    "B07_60m.vrt",
    "B08_10m.vrt",
    "B09_60m.vrt",
    "B11_20m.vrt",
    "B11_60m.vrt",
    "B12_20m.vrt",
    "B12_60m.vrt",
    "B8A_20m.vrt",
    "B8A_60m.vrt",
    "MSK_CLASSI_B00.vrt",
    "MSK_CLDPRB_20m.vrt",
    "MSK_CLDPRB_60m.vrt",
    "MSK_DETFOO_B01.vrt",
    "MSK_DETFOO_B02.vrt",
    "MSK_DETFOO_B03.vrt",
    "MSK_DETFOO_B04.vrt",
    "MSK_DETFOO_B05.vrt",
    "MSK_DETFOO_B06.vrt",
    "MSK_DETFOO_B07.vrt",
    "MSK_DETFOO_B08.vrt",
    "MSK_DETFOO_B09.vrt",
    "MSK_DETFOO_B10.vrt",
    "MSK_DETFOO_B11.vrt",
    "MSK_DETFOO_B12.vrt",
    "MSK_DETFOO_B8A.vrt",
    "MSK_QUALIT_B01.vrt",
    "MSK_QUALIT_B02.vrt",
    "MSK_QUALIT_B03.vrt",
    "MSK_QUALIT_B04.vrt",
    "MSK_QUALIT_B05.vrt",
    "MSK_QUALIT_B06.vrt",
    "MSK_QUALIT_B07.vrt",
    "MSK_QUALIT_B08.vrt",
    "MSK_QUALIT_B09.vrt",
    "MSK_QUALIT_B10.vrt",
    "MSK_QUALIT_B11.vrt",
    "MSK_QUALIT_B12.vrt",
    "MSK_QUALIT_B8A.vrt",
    "MSK_SNWPRB_20m.vrt",
    "MSK_SNWPRB_60m.vrt",
    "PVI.vrt",
    "SCL_20m.vrt",
    "SCL_60m.vrt",
    "TCI_10m.vrt",
    "TCI_20m.vrt",
    "TCI_60m.vrt",
    "WVP_10m.vrt",
    "WVP_20m.vrt",
    "WVP_60m.vrt"
  ))
})

test_that("satres()", {
  expect_equal({
    esa <- system.file("extdata", "esa", package = "satres")
    sr <- satres(dir = esa,
                 out_dir = tempdir(),
                 only_spectral_bands = TRUE)
    c(
      names(sr$bands),
      names(sr$bands[["r1000m"]]),
      names(sr$bands[["r2000m"]]),
      names(sr$bands[["r6000m"]]),
      basename(sr$virtual_files)
    )
  },
  c(
    "r1000m",
    "r2000m",
    "r6000m",
    "B02",
    "B03",
    "B04",
    "B08",
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B11",
    "B12",
    "B8A",
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B09",
    "B11",
    "B12",
    "B8A",
    "B01_20m.vrt",
    "B01_60m.vrt",
    "B02_10m.vrt",
    "B02_20m.vrt",
    "B02_60m.vrt",
    "B03_10m.vrt",
    "B03_20m.vrt",
    "B03_60m.vrt",
    "B04_10m.vrt",
    "B04_20m.vrt",
    "B04_60m.vrt",
    "B05_20m.vrt",
    "B05_60m.vrt",
    "B06_20m.vrt",
    "B06_60m.vrt",
    "B07_20m.vrt",
    "B07_60m.vrt",
    "B08_10m.vrt",
    "B09_60m.vrt",
    "B11_20m.vrt",
    "B11_60m.vrt",
    "B12_20m.vrt",
    "B12_60m.vrt",
    "B8A_20m.vrt",
    "B8A_60m.vrt"
  ))
})

test_that("satres()", {
  expect_equal({
    esa <- system.file("extdata", "esa", package = "satres")
    sr <- satres(dir = esa,
                 out_dir = tempdir(),
                 only_spectral_bands = FALSE)
    c(
      names(sr$bands),
      names(sr$bands[["r1000m"]]),
      names(sr$bands[["r2000m"]]),
      names(sr$bands[["r6000m"]]),
      basename(sr$virtual_files)
    )
  },
  c(
    "r1000m",
    "r2000m",
    "r6000m",
    "AOT",
    "B02",
    "B03",
    "B04",
    "B08",
    "MSK_DETFOO_B02",
    "MSK_DETFOO_B03",
    "MSK_DETFOO_B04",
    "MSK_DETFOO_B08",
    "WVP",
    "AOT",
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B11",
    "B12",
    "B8A",
    "MSK_CLDPRB",
    "MSK_DETFOO_B05",
    "MSK_DETFOO_B06",
    "MSK_DETFOO_B07",
    "MSK_DETFOO_B11",
    "MSK_DETFOO_B12",
    "MSK_DETFOO_B8A",
    "MSK_SNWPRB",
    "SCL",
    "WVP",
    "AOT",
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B09",
    "B11",
    "B12",
    "B8A",
    "MSK_CLDPRB",
    "MSK_DETFOO_B01",
    "MSK_DETFOO_B09",
    "MSK_DETFOO_B10",
    "MSK_SNWPRB",
    "SCL",
    "WVP",
    "AOT_10m.vrt",
    "AOT_20m.vrt",
    "AOT_60m.vrt",
    "B01_20m.vrt",
    "B01_60m.vrt",
    "B02_10m.vrt",
    "B02_20m.vrt",
    "B02_60m.vrt",
    "B03_10m.vrt",
    "B03_20m.vrt",
    "B03_60m.vrt",
    "B04_10m.vrt",
    "B04_20m.vrt",
    "B04_60m.vrt",
    "B05_20m.vrt",
    "B05_60m.vrt",
    "B06_20m.vrt",
    "B06_60m.vrt",
    "B07_20m.vrt",
    "B07_60m.vrt",
    "B08_10m.vrt",
    "B09_60m.vrt",
    "B11_20m.vrt",
    "B11_60m.vrt",
    "B12_20m.vrt",
    "B12_60m.vrt",
    "B8A_20m.vrt",
    "B8A_60m.vrt",
    "MSK_CLASSI_B00.vrt",
    "MSK_CLDPRB_20m.vrt",
    "MSK_CLDPRB_60m.vrt",
    "MSK_DETFOO_B01.vrt",
    "MSK_DETFOO_B02.vrt",
    "MSK_DETFOO_B03.vrt",
    "MSK_DETFOO_B04.vrt",
    "MSK_DETFOO_B05.vrt",
    "MSK_DETFOO_B06.vrt",
    "MSK_DETFOO_B07.vrt",
    "MSK_DETFOO_B08.vrt",
    "MSK_DETFOO_B09.vrt",
    "MSK_DETFOO_B10.vrt",
    "MSK_DETFOO_B11.vrt",
    "MSK_DETFOO_B12.vrt",
    "MSK_DETFOO_B8A.vrt",
    "MSK_QUALIT_B01.vrt",
    "MSK_QUALIT_B02.vrt",
    "MSK_QUALIT_B03.vrt",
    "MSK_QUALIT_B04.vrt",
    "MSK_QUALIT_B05.vrt",
    "MSK_QUALIT_B06.vrt",
    "MSK_QUALIT_B07.vrt",
    "MSK_QUALIT_B08.vrt",
    "MSK_QUALIT_B09.vrt",
    "MSK_QUALIT_B10.vrt",
    "MSK_QUALIT_B11.vrt",
    "MSK_QUALIT_B12.vrt",
    "MSK_QUALIT_B8A.vrt",
    "MSK_SNWPRB_20m.vrt",
    "MSK_SNWPRB_60m.vrt",
    "PVI.vrt",
    "SCL_20m.vrt",
    "SCL_60m.vrt",
    "TCI_10m.vrt",
    "TCI_20m.vrt",
    "TCI_60m.vrt",
    "WVP_10m.vrt",
    "WVP_20m.vrt",
    "WVP_60m.vrt"
  ))
})


test_that("get_spatial_resolution()", {
  expect_equal({
    esa <- system.file("extdata", "esa", package = "satres")
    sr <- satres(dir = esa,
                 out_dir = tempdir(),
                 only_spectral_bands = TRUE)
    sr |>
      get_spatial_resolution()
  },
  c("r1000m", "r2000m", "r6000m"))
})


test_that("get_band_names()", {
  expect_equal({
    esa <- system.file("extdata", "esa", package = "satres")
    sr <- satres(dir = esa,
                 out_dir = tempdir(),
                 only_spectral_bands = FALSE)
    sr |>
      get_band_names()
  },
  c(
    "AOT",
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B08",
    "B09",
    "B11",
    "B12",
    "B8A",
    "MSK_CLDPRB",
    "MSK_DETFOO_B01",
    "MSK_DETFOO_B02",
    "MSK_DETFOO_B03",
    "MSK_DETFOO_B04",
    "MSK_DETFOO_B05",
    "MSK_DETFOO_B06",
    "MSK_DETFOO_B07",
    "MSK_DETFOO_B08",
    "MSK_DETFOO_B09",
    "MSK_DETFOO_B10",
    "MSK_DETFOO_B11",
    "MSK_DETFOO_B12",
    "MSK_DETFOO_B8A",
    "MSK_SNWPRB",
    "SCL",
    "WVP"
  ))
})

test_that("get_band_names()", {
  expect_equal({
    esa <- system.file("extdata", "esa", package = "satres")
    sr <- satres(dir = esa,
                 out_dir = tempdir(),
                 only_spectral_bands = FALSE)
    sr |>
      get_band_names("r1000m")
  },
  c(
    "AOT",
    "B02",
    "B03",
    "B04",
    "B08",
    "MSK_DETFOO_B02",
    "MSK_DETFOO_B03",
    "MSK_DETFOO_B04",
    "MSK_DETFOO_B08",
    "WVP"
  ))
})


test_that("get_band_names()", {
  expect_equal({
    esa <- system.file("extdata", "esa", package = "satres")
    sr <- satres(
      dir = esa,
      out_dir = tempdir(),
      only_spectral_bands = TRUE
    )
    sr |>
      get_band_names(c("r1000m", "r2000m"))
  },
  c(
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B08",
    "B11",
    "B12",
    "B8A"
  ))
})

test_that("get_spectral_band_names()", {
  expect_equal({
    esa <- system.file("extdata", "esa", package = "satres")
    sr <- satres(dir = esa,
                 out_dir = tempdir(),
                 only_spectral_bands = FALSE)
    sr |>
      get_spectral_band_names()
  },
  c(
    "B01",
    "B02",
    "B03",
    "B04",
    "B05",
    "B06",
    "B07",
    "B08",
    "B09",
    "B11",
    "B12",
    "B8A"
  ))
})

test_that("get_spectral_band_names()", {
  expect_equal({
    esa <- system.file("extdata", "esa", package = "satres")
    sr <- satres(dir = esa,
                 out_dir = tempdir(),
                 only_spectral_bands = FALSE)
    sr |>
      get_spectral_band_names("r1000m")
  },
  c(
    "B02",
    "B03",
    "B04",
    "B08"
  ))
})
