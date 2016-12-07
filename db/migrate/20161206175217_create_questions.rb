class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :query
      t.boolean :required
      t.references :survey, foreign_key: true
      t.string :question_type

      t.timestamps
    end
  end
end
