

#====================================================================================
#====================================================================================
#畫台灣地圖
#install.packages("ggmap")
#install.packages("mapproj")
#install.packages("maps")
library(ggplot2)
library(dplyr)
library(maps)
library(ggmap)
library(mapproj)

# 需要註冊 google 地圖API 取得 "yourkey"
#register_google(key = "yourkey", write = TRUE)
#has_google_key()
#google_key()

load("D:/R/Maps_examples_Google_Taiwan_20250601.RData")

#tw.map <- get_map(location = 'Taiwan', zoom = 7)
#ggmap(tw.map)

#tw.map <- get_map(location = 'Taiwan', zoom = 8)
ggmap(tw.map)

#tw.map.zh <- get_map(location = 'Taiwan', zoom = 8, language = "zh-TW")
ggmap(tw.map.zh)


# NCKU 經緯度：(120.217172, 22.998808)
#tw.map.ncku <- get_map(location = c(lon = 120.217172, lat = 22.998808),
#                       zoom = 12, language = "zh-TW" , maptype = "terrain")

#ggmap(tw.map.ncku)

#tw.map.ncku.roadmap <- get_map(location = c(lon = 120.217172, lat = 22.998808),
#                       zoom = 12, language = "zh-TW" , maptype = "roadmap")

# ggmap(tw.map.ncku.roadmap)

#tw.map.ncku.satellite <- get_map(location = c(lon = 120.217172, lat = 22.998808),
#                               zoom = 12, language = "zh-TW" , maptype = "satellite")

#ggmap(tw.map.ncku.satellite)

#tw.map.ncku.hybrid <- get_map(location = c(lon = 120.217172, lat = 22.998808),
#                              zoom = 12, language = "zh-TW" , maptype = "hybrid")

#ggmap(tw.map.ncku.hybrid)


lon.v=c(120.217172-0.003, 120.217172+0.003,120.217172+0.003,120.217172-0.003,120.217172-0.003)
lat.v=c(22.998808+0.003,22.998808+0.003,22.998808-0.003,22.998808-0.003,22.998808+0.003)
ncku.coords=data.frame(lon=lon.v,lat=lat.v)
ggmap(tw.map.ncku.hybrid)+
  geom_polygon(data = ncku.coords, aes(x = lon, y = lat),fill = NA, colour ="green")+
  annotate("text", label = "國立成功大學", x = 120.217172, y = 22.998808+0.008, size = 3,
           fontface = "bold",colour ="green")
#=========================================================================

# 成大座標範圍
lon.v1 = c(120.217172 - 0.003, 120.217172 + 0.003, 120.217172 + 0.003, 120.217172 - 0.003, 120.217172 - 0.003)
lat.v1 = c(22.998808 + 0.003, 22.998808 + 0.003, 22.998808 - 0.003, 22.998808 - 0.003, 22.998808 + 0.003)
ncku.coords = data.frame(lon = lon.v1, lat = lat.v1)

# 安平古堡座標（23°00′04″N, 120°09′38″E → 23.001111, 120.160556）
lon.v2 = c(120.160556 - 0.003, 120.160556 + 0.003, 120.160556 + 0.003, 120.160556 - 0.003, 120.160556 - 0.003)
lat.v2 = c(23.001111 + 0.003, 23.001111 + 0.003, 23.001111 - 0.003, 23.001111 - 0.003, 23.001111 + 0.003)
anping.coords = data.frame(lon = lon.v2, lat = lat.v2)

# 繪圖
ggmap(tw.map.ncku.hybrid) +
  # 成大
  geom_polygon(data = ncku.coords, aes(x = lon, y = lat), fill = NA, colour = "green") +
  annotate("text", label = "國立成功大學", x = 120.217172, y = 22.998808 + 0.008,
           size = 3, fontface = "bold", colour = "green") +
  
  # 安平古堡
  geom_polygon(data = anping.coords, aes(x = lon, y = lat), fill = NA, colour = "green") +
  annotate("text", label = "安平古堡", x = 120.160556, y = 23.001111 + 0.008,
           size = 3, fontface = "bold", colour = "green")+

  annotate("text", x = 120.29, y = 23.09,
           label = "學生姓名：周子喬", colour = "green", size = 4, fontface = "bold")

