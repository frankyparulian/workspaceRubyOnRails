#ini merupaka latihan output degan formatter

formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter %{first: 1, second: 2, third:3, fourth: 4}
#puts formatter %{first: 1, second: 2, third:3} #ini akan menyebabkan error karena key ke empat tidak ditemukan

pemformatan = "%{pertama} %{kedua} %{ketiga}"
puts pemformatan % {
	pertama: "Ini yang pertama.",
	kedua: "Ini yang kedua.",
	ketiga: "Ini yang ketiga."
}