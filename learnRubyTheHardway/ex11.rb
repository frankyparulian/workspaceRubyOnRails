#ini merupakan bagian dari latihan input output

print "Siapa namamu?"
nama = gets
print "Berapa umurmu?"
umur = gets
print "Berapa tinggi badanmu?"
tinggi  = gets.chomp
print "Berapa berat badanmu?"
berat = gets.chomp

puts "nama dan umur dengan metode gets, sedangkan tinggi dan berat dengan metode gets.chomp"
puts "sehinga #{nama + umur } != #{tinggi + berat}"

puts "Jadi kamu bernama #{nama} dengan umur #{umur} serta berat #{berat} dan tinggi #{tinggi}"