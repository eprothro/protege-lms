class AddGravatarEmailToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :gravatar_email, :string
  end
end
