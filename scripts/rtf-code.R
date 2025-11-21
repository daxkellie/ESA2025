
library(reprex)

withr::with_options(
  new = c(
    reprex.highlight.hl_style  = "earendel",
    reprex.highlight.font      = "Fira Code Regular",
    reprex.highlight.font_size = 70
  ),
  reprex::reprex({
#+ eval = FALSE

library(galaxias)

# standardise data
my_data_dwc <- df |>
  set_occurrences(occurrenceID = composite_id(location_id, 
                                              sequential_id()),
                  basisOfRecord = "humanObservation") |> 
  set_coordinates(decimalLatitude = latitude, 
                  decimalLongitude = longitude) |>
  set_locality(country = "Australia", 
               locality = "Canberra") |>
  set_datetime(eventDate = lubridate::dmy(date)) |>
  set_scientific_name(scientificName = species, 
                      taxonRank = "species") |>
  set_taxonomy(kingdom = "Animalia", 
               family = "Cacatuidae")


# add data to directory
use_data(my_data_dwc)


# build metadata
use_metadata_template("metadata.Rmd")
use_metadata("metadata.Rmd") # add metadata to directory


# package for sharing (auto-builds schema)
build_archive("my_dwca.zip") # convert to Darwin Core Archive


# validate
check_directory()            # local quality checks
check_archive("my_dwca.zip") # GBIF quality checks


# open submission page
submit_archive()


  }, 
venue = "rtf"))
options(op)


