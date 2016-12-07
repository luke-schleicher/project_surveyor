class FixQuestionsForeignKey < ActiveRecord::Migration[5.0]
  def change

    remove_column :questions, :question_type
    add_reference :questions, :multiple_choice_questions, index: true

  end
end
