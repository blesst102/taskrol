class CreateProposals < ActiveRecord::Migration[6.1]
  def change
    create_table :proposals do |t|
      t.string :status
      t.text :description
      t.references :request, foreign_key: true
      t.references :user, foreign_key: true
      t.string :arrival_duration

      t.timestamps
    end
  end
end
