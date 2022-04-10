# SOAL 6

# Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

# a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
# data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).

cat("Distribusi Normal: ", rnorm(100, 50, 8))

# =====

# b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan

hist(rnorm(100, 50, 8), breaks = 30, main="5025201216_Anggito Anju Hartawan Manalu_E_DNhistogram")

# =====

# c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

sd = 8
varian = sd*sd
cat("Varian: ", sd)

# =====