class AddLessonToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :lesson_id, :integer
  end
end
