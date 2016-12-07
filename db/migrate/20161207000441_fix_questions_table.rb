class FixQuestionsTable < ActiveRecord::Migration[5.0]
  def change

    remove_column :questions, :multiple_choice_questions_id

  end
end
