class CreateMultipleChoiceQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :multiple_choice_questions do |t|

      t.integer :num_options
      t.boolean :multiple
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
