class FixMultChoiceQuestion < ActiveRecord::Migration[5.0]
  def change

    rename_column :multiple_choice_questions, :questions_id, :question_id

  end
end
