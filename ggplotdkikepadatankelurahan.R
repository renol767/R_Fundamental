library(ggplot2)

#Penambahan judul dengan menggunakan fungsi labs
ggplot() + labs(title="Luas Wilayah vs Kepadatan Penduduk DKI Jakarta - Periode 2013")

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("dkikepadatankelurahan2013.csv", sep=",")
# Tampilkan data frame dari kolom " NAMA.KELURAHAN " dan "LUAS.WILAYAH..KM2."

#Menambahkan data dan aesthetic mapping
plot.dki <- ggplot(data=penduduk.dki, aes(x = LUAS.WILAYAH..KM2.,  y=KEPADATAN..JIWA.KM2.,  color=NAMA.KABUPATEN.KOTA))

#Menambahkan Layer dan labels
plot.dki + geom_point() + theme(plot.title = element_text(hjust=0.5)) + labs(title="Luas Wilayah vs Kepadatan Penduduk DKI Jakarta", x="Luas Wilayah (km2)", y="Kepadatan Jiwa per km2", color="Nama Kabupaten/Kota")