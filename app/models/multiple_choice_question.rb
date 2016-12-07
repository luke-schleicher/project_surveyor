class MultipleChoiceQuestion < ApplicationRecord

  belongs_to :question, optional: true
  has_many :multiple_choice_answers

  accepts_nested_attributes_for :multiple_choice_answers

end
