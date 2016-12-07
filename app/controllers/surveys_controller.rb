class SurveysController < ApplicationController

  def home
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(whitelisted_params(params))
    if @survey.save
      flash[:success] = "Survey successfully created!"
      redirect_to survey_path(@survey)
    else
      flash[:error] = "Survey was not saved--check your inputs"
      render :new
    end
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def show
    @survey = Survey.find(params[:id])
    @question = Question.new
    @questions = Question.all
  end

  private

  def whitelisted_params(params)
    params.require(:survey).permit(:title, :description)
  end

end
