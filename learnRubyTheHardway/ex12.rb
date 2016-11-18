#ini merupakan bagian dari input output juga

print "Masukkan inputan angka integer: "
number = gets.chomp.to_i #konversi inputan ke integer

temp = number * 100
puts "Jika inputan dikali 100, maka hasilnya = #{temp}"


print "Masukkan inputan angka integer: "
number = gets.to_i #konversi inputan ke integer

temp = number * 100
puts "Jika inputan dikali 100, maka hasilnya = #{temp}"


print "Masukkan inputan angka desimal: "
number = gets.chomp.to_f #konversi inputan ke desimal

temp = number * 100
puts "Jika inputan dikali 100, maka hasilnya = #{temp}"