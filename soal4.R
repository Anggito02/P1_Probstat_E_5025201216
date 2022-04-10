# SOAL 4

# Diketahui nilai x = 2 dan v = 10. Tentukan:

# a. Fungsi Probabilitas dari Distribusi Chi-Square.

cat("Probabilitas Distribusi Chi-Square: ", dchisq(2,10))

# =====

# b. Histogram dari Distribusi Chi-Square dengan 100 data random.

hist(rchisq(100, 10))

# =====

# c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.

p = 10
# Rata-rata
rata2 = p
rata2
#Varian
varian = 2*p
cat("Rata-rata: ", rata2, "\nVarian: ", varian)

# =====