class AddCreatorToOrgs < ActiveRecord::Migration
  def change
    add_column :organizations, :creator_id, :integer
    remove_column :users, :creator_id
  end
end
