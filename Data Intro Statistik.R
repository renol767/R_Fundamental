data_intro <- read.csv("data_intro.csv", sep = ";")
data_intro

## Mengubah data menjadi factor untuk membedakan data kualitatif dengan menggunakan functon as.factor
data_intro$Jenis.Kelamin <- as.factor(data_intro$Jenis.Kelamin)
data_intro$Produk <- as.factor(data_intro$Produk)
data_intro$Tingkat.Kepuasan <- as.factor(data_intro$Tingkat.Kepuasan)
## Melihat apakah sudah berhasil dalam mengubah variabel tersebut dengan menggunakan function str
#str(data_intro$Jenis.Kelamin)
#str(data_intro$Produk)
#str(data_intro$Tingkat.Kepuasan)

# Modus adalah angka yang sering keluar/muncul
library(pracma) #library mean modus dan median
## carilah modus untuk kolom Produk pada variable data_intro
Mode(data_intro$Produk)

# Median adalah nilai tengah dari suatu distribusi (data interval dan rasio).
## carilah median untuk  kolom Total dari variable data_intro
median(data_intro$Total)

# Mean adalah rata-rata aritmatik dari suatu distribusi (data interval dan rasio).
## carilah mean untuk kolom Harga pada variable data_intro
mean(data_intro$Harga)

# Range adalah selisih antara nilai terbesar dan nilai terendah 
## carilah range untuk kolom Pendapatan pada variable data_intro
max(data_intro$Pendapatan)-min(data_intro$Pendapatan)

# Varians adalah simpangan kuadrat data dari nilai rata-ratanya
## Carilah varians untuk kolom Pendapatan dari variable data_intro
var(data_intro$Pendapatan)

# Simpangan baku adalah simpangan data dari nilai rata-ratanya, simpangan baku nama lainnya adalah standard deviation. 
# Standard deviation dapat digunakan untuk melihat keakuratan dari hasil estimasi, 
# semakin kecil standard deviation semakin akurat hasil estimasi.
## Carilah simpangan baku untuk kolom Pendapatan dari variable data_intro
sd(data_intro$Pendapatan)

#Function summary akan menampilkan kesimpulan pada variabel masing-masing. 
#Untuk variabel bertipe character akan menampilkan panjang datanya. 
#Variabel bertipe factor akan menampilkan jumlah data pada masing-masing kelas. 
#Sedangkan untuk variabel bertipe numerik akan memunculkan nilai minimum, Q1,Q2 (median), Q3, mean, dan maximum.
## carilah summary data dari data_intro
summary(data_intro)

## Plot dan Hist Visualisasi
plot(data_intro$Jenis.Kelamin) # karena Jenis Kelamin itu Factor
hist(data_intro$Jumlah) # Karena Jumlah itu Int

#Ada dua cara untuk melihat hubungan antar variabel, yaitu dengan grafik scatter plot dan analisis korelasi
# plot
plot(data_intro$Pendapatan,data_intro$Total)
#Gunakan cor.test untuk mencari hubungan Pendapatan dengan Total Belanja 
cor.test(data_intro$Pendapatan, data_intro$Total)

#Hubungannya diantara keduanya dapat dilihat dengan menggunakan tabulasi silang dan 
#dapat juga dilihat kecenderungannya. Pada hubungan antara variabel kategorik dan kategorik tersebut 
#tidak bisa diketahui seberapa kuat hubungan diantara keduanya dan bagimana pengaruhnya (positif atau negatif). 
#Untuk mengetahui ada hubungan atau tidaknya menggunakan uji statistik chi-square test, dengan hipotesis sebagai berikut:
#Null hipotesis: tidak ada hubungan antara kedua variabel
#Hipotesis Alternatif alternatif: ada hubungan antara kedua variabel
## Carilah tabulasi silang antara kolom jenis produk (Produk) dan tingkat kepuasan (Tingkat.Kepuasan) dari variable data_intro
table(data_intro$Produk, data_intro$Tingkat.Kepuasan)
## Analisis bagaimana hubungan jenis produk dengan tingkat kepuasan mengunakan uji korelasi
chisq.test(table(data_intro$Produk, data_intro$Tingkat.Kepuasan))

#Hubungan Antara Variabel Kategorik dan Variabel Numerik
#Hubungannya diantara keduanya dapat dilihat dengan membandingkan rata-rata pada setiap kategori. 
#Jika nilai rata-ratanya berbeda maka kedua variabel memiliki hubungan. Pada hubungan antara variabel kategorik dan numerik 
#tidak bisa diketahui seberapa kuat hubungan diantara keduanya dan bagimana pengaruhnya (positif atau negatif).
#Untuk mengetahui ada hubungan atau tidaknya menggunakan uji statistik t-test, dengan hipotesis sebagai berikut
#Null hipotesis: tidak ada hubungan antara kedua variabel
#Hipotesis Alternatif alternatif: ada hubungan antara kedua variabel
## carilah boxplot antara variabel jenis kelamin dengan total belanja
boxplot(Total~Jenis.Kelamin,data = data_intro)
## analisis bagaimana hubungan jenis kelamin dengan total belanja mengunakan uji statistik t-test
t.test(Total~Jenis.Kelamin,data = data_intro)