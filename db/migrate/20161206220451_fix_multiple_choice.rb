class FixMultipleChoice < ActiveRecord::Migration[5.0]
  def change

    remove_column :multiple_choice_questions, :question_id
    add_reference :multiple_choice_answers, :multiple_choice_questions

  end
end
