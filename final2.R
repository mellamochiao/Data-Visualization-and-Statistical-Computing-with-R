library(ggplot2)
library(patchwork)
library(showtext)

showtext_auto()
font_add("cw", "/System/Library/Fonts/Supplemental/Songti.ttc")

theme_set(theme_gray(base_family = "cw")) 

set.seed(4393)
dsmall <- diamonds[sample(nrow(diamonds), 1000), ]

# A圖：散佈圖，carat vs price，顏色代表clarity
p1 <- ggplot(dsmall, aes(x = carat, y = price, color = clarity)) +
  geom_point() +
  labs(title = "周子喬:散佈圖")+
  theme_gray()


# B圖：2D密度圖（facet by clarity）
p2 <- ggplot(dsmall, aes(x = carat, y = price)) +
  geom_density_2d_filled(contour_var = "ndensity") +
  facet_wrap(vars(clarity)) +
  labs(title = "周子喬:2D密度圖") +
  theme_gray()
p1 + p2 + plot_annotation(tag_levels = "A")
