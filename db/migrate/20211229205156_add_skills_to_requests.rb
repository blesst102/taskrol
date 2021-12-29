class AddSkillsToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :skills, :string
  end
end
