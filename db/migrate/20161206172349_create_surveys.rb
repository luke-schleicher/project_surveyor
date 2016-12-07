class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :title
      t.string :description
      t.integer :responses

      t.timestamps
    end
  end
end
