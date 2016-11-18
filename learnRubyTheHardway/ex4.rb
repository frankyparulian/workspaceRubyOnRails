#ini merupakan latihan variabel dan penamaan

jlhMobil= 100
kapasitasMobil = 4.0
pengemudi = 30
penumpang = 90
mobilTanpaPengemudi = jlhMobil - pengemudi
mobilDenganPengemudi = pengemudi
angkutan= penumpang / mobilDenganPengemudi

puts "Ada terdapat #{jlhMobil} mobil yang tersedia"
puts "Namun hanya terdapat #{pengemudi} orang pengemudi"
puts "Oleh karena itu hanya ada #{mobilDenganPengemudi} mobil yang dapat berjalan"
puts "Di terminal ada #{penumpang} orang penumpang"
puts "Satu mobil dapat mengangkut #{kapasitasMobil} orang dalam satu mobil"
puts "Sehingga dibutuhkan mobil sebanyak #{angkutan} unit "