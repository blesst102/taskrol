class CreateRequestSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :request_skills do |t|
      t.references :request, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
