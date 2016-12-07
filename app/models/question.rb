class Question < ApplicationRecord

  belongs_to :survey
  has_one :multiple_choice_question
  has_many :multipe_choice_answers, through: :multiple_choice_question

  accepts_nested_attributes_for :multiple_choice_question
  accepts_nested_attributes_for :multipe_choice_answers
  
end
