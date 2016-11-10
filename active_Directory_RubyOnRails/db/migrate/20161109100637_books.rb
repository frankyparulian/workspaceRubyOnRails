class Books < ActiveRecord::Migration
  def change
  end

  #baris berikut untuk migrasi ke versi baru
  def self.up
    create_table :books do |t|
      t.column :title, :string,
      t.column :price, :float,
      t.column :subject_id, :integer,
      t.column :description, :text
      t.column :created_at, :timestamp
    end
  end

  #baris berikut untuk rollback
  def self.down
      drop_table :Books
  end
end
