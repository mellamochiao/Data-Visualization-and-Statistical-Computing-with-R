library(babynames)
library(ggplot2)
library(dplyr)
library(showtext)

# 加入中文字型
font_add("cw", "/System/Library/Fonts/Supplemental/STHeiti Light.ttc")
showtext_auto()
theme_set(theme_minimal(base_family = "cw"))

# 選擇名字
names_to_plot <- c("Anna", "Elizabeth", "Emma", "Margaret", "Mary", "Minnie")

# 篩選資料
plot_data <- babynames %>%
  filter(sex == "F", name %in% names_to_plot)

# 繪圖
ggplot(plot_data, aes(x = year, y = n, color = name)) +
  geom_line() +  # 原始趨勢線
  geom_smooth(se = TRUE, method = "lm") +  # 線性回歸線
  geom_smooth(se = FALSE, method = "loess", linewidth = 1) +  # 平滑回歸線（顯示信賴區間）
  
  geom_hline(yintercept = c(25000, 50000, 75000),
             color = "gray40", linetype = "dashed", linewidth = 0.3) +
  
  facet_wrap(~ name, ncol = 3, scales = "fixed") +
  coord_cartesian(ylim = c(0, 75000)) +
  scale_y_continuous(breaks = c(0, 25000, 50000, 75000)) +
  
  labs(
    title = "The most popular female names in USA made by 周子喬",
    x = "年份", y = "數量"
  ) +
  
  theme_minimal(base_family = "cw") +
  theme(
    panel.background = element_rect(fill = "gray95", color = NA),
    strip.background = element_rect(fill = "gray90", color = NA),
    strip.text = element_text(face = "bold"),
    axis.text.y = element_text(hjust = 0)
  )

