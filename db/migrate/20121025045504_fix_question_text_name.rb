class FixQuestionTextName < ActiveRecord::Migration
  def change
    rename_column :questions, :text, :body
  end
end
