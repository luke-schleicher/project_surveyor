class AddFKtoMChQ < ActiveRecord::Migration[5.0]
  def change
    add_reference :multiple_choice_questions, :questions
  end
end
