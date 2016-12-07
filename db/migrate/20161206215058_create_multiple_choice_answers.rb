class CreateMultipleChoiceAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :multiple_choice_answers do |t|

      t.string :option
      t.boolean :selected
      t.references :multiple_choice_question

      t.timestamps
    end
  end
end
