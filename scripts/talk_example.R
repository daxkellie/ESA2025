
# example
if(class(x)[[1]] == "numeric" || class(x)[[1]] == "integer") {
  -x
} else if (class(x)[[1]] == "logical") {
  !x
} else {stop(...)}

if(is.numeric(x)) {
  .x
} else if (is.logical(x)) {
  !x
} else {stop(...)}


library(galah)

search_all(fields, "class")

galah_call() |>
  identify("Broderipia rosea") |>
  group_by(order) |>
  atlas_counts()
