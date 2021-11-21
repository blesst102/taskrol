class AddDetailsToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :open, :boolean, default: true
    add_column :requests, :awarded_proposal, :integer
    add_reference :requests, :user, foreign_key: true
  end
end
