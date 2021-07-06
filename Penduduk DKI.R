library(openxlsx)
# Tambahkan sep = "\t" jika ingin membaca csv menggunakan format tsv
penduduk.dki <- read.csv("datakependudukandki-dqlab.csv")
penduduk.dki

# Jika ingin membaca dalam format xlsx
# penduduk.dki <- read.xlsx(xlsxFile="https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.xlsx")
# Fungsi untuk menyajikan tiap kolom datasets

# str(penduduk.dki)

# Jika Fungsi str dijalankan maka akan muncul hasil
#Berikut adalah penjelasan dari beberapa hasil tersebut:
#  'data.frame': merupakan tipe data dari variable penduduk.dki.
#267 obs: menunjukkan adanya 267 total baris data (row) dari dataset ini.
#37 variables: menunjukkan adanya 37 kolom data pada dataset ini.

# Untuk lebih detail bisa menggunakan

# summary(penduduk.dki)

# Untuk angka, maka akan muncul statistik minimum, maximum, mean, meadian, 1st quantile, dan 3rd quantile. 
# Sedangkan untuk nilai lain akan muncul jumlahnya di dataset.


# untuk melihat kolom nya saja menggunakan fungsi names(penduduk.dki)
# names(penduduk.dki.csv)[1] <- "PERIODE" untuk merubah 1 nama kolom yaitu kolom pertama
# names(penduduk.dki.csv)[c(1:2)] <- c("PERIODE", "PROPINSI") merubah sejumlah nama kolom

# Membuang Kolom yang tidak terpakai
# penduduk.dki.csv <- penduduk.dki.csv[,!names(penduduk.dki.csv) %in% c("X", "X.1","X.2","X.3","X.4","X.5","X.6","X.7","X.8","X.9","X.10", "X.11")]

# Merubah tipe kolom menjadi factor
# penduduk.dki.xlsx$NAMA.PROVINSI <- as.factor(penduduk.dki.xlsx$NAMA.PROVINSI)

#Tampilkan nama-nama kolom yang mengandung kata "perempuan".
#pola_nama_perempuan <- grep(pattern="perempuan", x = names(penduduk.dki.xlsx), ignore.case=TRUE)

# Normalisasi data dari kolom ke baris harus import library(reshape2)
#Transformasi kolom dataset penduduk.dki.xlsx, disimpan ke variable penduduk.dki.transform
# penduduk.dki.transform <- melt(data=penduduk.dki.xlsx, id.vars=c( "NAMA.KECAMATAN", "NAMA.KELURAHAN"), measure.vars = c("35-39.Laki-Laki", "35-39.Perempuan"), variable.name = "DEMOGRAFIK", value.name="JUMLAH")
#Menampilkan variable penduduk.dki.transform
# penduduk.dki.transform

# SPLIT DATA DEMOGRAFIK JADI"RENTANG.UMUR" dan "JENIS.KELAMIN" untuk pemisah nya "\\." Khusus tanda titik didahului backslash 2x
# Memecah isi kolom DEMOGRAFIK menjadi "RENTANG.UMUR" dan "JENIS.KELAMIN"
# penduduk.dki.transform[c("RENTANG.UMUR", "JENIS.KELAMIN")] <- colsplit(penduduk.dki.transform$DEMOGRAFIK,"\\.",c("RENTANG.UMUR","JENIS.KELAMIN"))
# penduduk.dki.transform$DEMOGRAFIK <- NULL

