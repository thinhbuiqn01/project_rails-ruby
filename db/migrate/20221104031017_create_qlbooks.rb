class CreateQlbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :qlbooks do |t|
      t.string :mahs_262
      t.string :hoten_262
      t.string :lop_262
      t.string :masach_262
      t.string :tensach_262
      t.string :tentacgia_262
      t.string :soBM_262
      t.date :ngaymuon_262
      t.date :ngaytra_262
      t.text :ghichu_262

      t.timestamps
    end
  end
end
