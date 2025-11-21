# https://github.com/nrennie/aRt/?tab=readme-ov-file
remotes::install_github("nrennie/aRt")
library(aRt)

# make art that somebody else made easy for me lol
stripes(
  perc = 0.5,
  n = 3,
  col_palette = c("#C6CFB0", "#557F4E", "#5C6836", "#353027", "#86817D"),
  alpha = 1,
  s = 1234
)

# save
ggplot2::ggsave(here::here("stripe-background.png"),
       dpi = 300,
       height = 2000,
       width = 3400,
       unit = "px")


