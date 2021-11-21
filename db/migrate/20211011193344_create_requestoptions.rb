class CreateRequestoptions < ActiveRecord::Migration[6.1]
  def change
    create_table :requestoptions do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
