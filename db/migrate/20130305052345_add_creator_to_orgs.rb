class AddCreatorToOrgs < ActiveRecord::Migration
  def change
    add_column :organizations, :creator_id, :integer
  end
end
