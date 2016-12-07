# project_surveyor
Build it, take it, view it.

[A Ruby on Rails project from the Viking Code School which uses Active Record Associations, nested forms, collection forms, range fields, and PostgreSQL](https://www.vikingcodeschool.com)

Completed by Luke

One question has one question body

# Question

  question
  required
  survey_id
  question_type
  question_id

### In controller

If question_type is multiple_choice, then get find multiple choice id


# Multiple Choice Question
  id
  num_options
  only_one_choice?

# Multiple Choice Answers
  id
  response
  selected


# Range Question
  id
  min
  max
  step
  selection
  

