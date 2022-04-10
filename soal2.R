# SOAL 2

# Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

# a. Peluang terdapat 4 pasien yang sembuh

cat("Distribusi Binomial: ", dbinom(x = 4, size = 20, prob = 0.2))

# =====

# b. Gambarkan grafik histogram berdasarkan kasus tersebut.

library(dplyr)
library(ggplot2)

x = 4
p = 0.2
prob <- dbinom(x = 0:10, size = 20, prob = 0.2)

data.frame(heads = 0:10, prob) %>%
  mutate(Heads = ifelse(heads == 4, "4", "lainnya")) %>%
  ggplot(aes(x = factor(heads), y = prob, fill = Heads)) +
  geom_col(colour = "black") +
  scale_fill_manual(values = c("green", "red")) +
  geom_text(aes(label = round(prob, 2), y = prob + 0.01)) +
  labs(title = "Peluang jika X = 4 pasien sembuh.", x = "Sukses (x)", y = "Peluang") 

# =====

# c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.

n = 4
p = 0.2
# Rata-rata
rata2 = n*p
#Varian
varian = n*p*(1-p)
cat("Rata-rata: ", rata2, "\nVarian: ", varian)

# =====