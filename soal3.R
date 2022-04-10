# SOAL 3

# Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
# 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

# a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

cat("Peluang bayi lahir: ", dpois(6, 4.5))

# =====

# b.simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
# setahun (n = 365)

set.seed(2)
bayi = data.frame('data' = rpois(365, 4.5))

bayi %>% ggplot() +
  geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1, color = 'black',) +
  scale_fill_manual(values = c("#FFCC66", "#669933")) +
  scale_x_continuous(breaks = 0:10) +
  labs(x = 'Jumlah bayi lahir per periode', y = 'Proporsi', title = 'Simulasi kelahiran selama setahun (n=365) di rumah sakit') +
  theme_bw()

# =====

# c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

print("Poin a dan b memiliki perbedaan pada jumlah dataset yang dimasukkan dalam rumus dan sifat data poin a yang bersifat tetap berbeda dengan data poin b yang bersifat random")


# =====

# d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

n = 6
# Rata-rata
rata2 = n
#Varian
varian = n
cat("Rata-rata: ", rata2, "\nVarian: ", varian)

# =====