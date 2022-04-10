# SOAL 1

# Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
# seseorang yang menghadiri acara vaksinasi sebelumnya.

# a.  Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
#     sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
#     (distribusi Geometrik)

x = 3
p = 0.2
cat ("Distribusi Geometrik: ", dgeom(x, p))

# =====

# b.  mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
#     geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

n = 10000
p = 0.2
cat ("Mean Distribusi Geometrik: ", mean(rgeom(n = 10000, p) == 3))

# =====

# c.  Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

print("Perbedaan poin a dan b terdapat pada rumus yang digunakan pada kedua poin soal. Poin a menggunakan distribusi geometrik tetap, sedangkan poin b menggunakan distribusi geometrik acak.")

# =====

# d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

# Menggunakan library dplyr untuk manipulasi data distribusi geometrik
# Menggunakan library ggplot2 untuk membuat antarmuka pengguna/ grafik data hasil manipulasi
install.packages("ggplot2")
install.packages("dplyr")

library(dplyr)
library(ggplot2)

# inisialisasi penghitungan distribusi geometrik
x = 3
p = 0.2
prob = dgeom(x = 0:5, p)

# membuat grafik
data.frame(x = 0:5, prob) %>% 
  mutate(Kegagalan = ifelse(x == n, n, "lainnya")) %>%
  ggplot2::ggplot(aes(x = factor(x), y = prob, fill = Kegagalan)) +
  ggplot2::geom_col(colour = "black") +
  ggplot2::geom_text(aes(label = round(prob, 2), y = prob + 0.01), size = 3) +
  ggplot2::labs(title = "Peluang X=3 gagal Sebelum Sukses Pertama", x = "Kegagalan sebelum sukses pertama (x)", y = "Peluang")
  
# e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

n = 3
p = 0.2
# Rata-rata
rata2 = n/p
#Varian
varian = (n-p)/p**2
cat("Rata-rata: ", rata2, "\nVarian: ", varian)

# =====