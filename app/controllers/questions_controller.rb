class QuestionsController < ApplicationController

  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.build
    @num_options = [["2", 2], ["3", 3], ["4", 4], ["5", 5], ["6", 6]]
  end

  def create

    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.build(whitelisted_params)

    if @question.save
      redirect_to edit_survey_question_path(@survey, @question)
    else
      p @question.errors.full_messages
      render :new
    end

  end

  def show
  end

  def edit
    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:id])
  end

  def update

    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:id])

    if @question.update(whitelisted_params)
      redirect_to survey_path(@survey)
    else
      render :edit
    end
  end

  private

  def whitelisted_params
    params.require(:question).permit( :query,
                                      :required,
                                    { multiple_choice_question_attributes: [
                                      :num_options,
                                      :multiple ],
                                      multiple_choice_answer_attributes: [
                                        :option ] } )
  end


end
