class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :title
      t.references :category, foreign_key: true
      t.references :requestoption, foreign_key: true
      t.string :streetname
      t.string :landmark
      t.string :housenumber
      t.string :description
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
