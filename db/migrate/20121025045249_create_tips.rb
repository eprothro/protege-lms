class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :body
      t.references :question

      t.timestamps
    end
    add_index :tips, :question_id
  end
end
