# SOAL 5

# Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

# a. Fungsi Probabilitas dari Distribusi Exponensial

set.seed(1)
cat("Distribusi Eksponensial: ", rexp(3))

# =====

# b.Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

hist(rexp(10))
hist(rexp(100))
hist(rexp(1000))
hist(rexp(10000))

# c.  Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3

p = 3
# Rata-rata
rata2 = 1/p
rata2
#Varian
varian = 1/(p*p)
cat("Rata-rata: ", rata2, "\nVarian: ", varian)

# =====