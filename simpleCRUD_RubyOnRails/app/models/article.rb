class Article < ActiveRecord::Base
  validates :title, presence: true, length:{minimum: 5}
  validates :text, presence: true, length:{minimum: 5}
  #Kedua baris diatas digunakan untuk validasi inputan.
  #presence: true, berarti tidak boleh kosong.

end
