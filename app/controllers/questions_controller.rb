
class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      flash[:success] = 'Question successfully added!'
      redirect_to question_path(@question)
    else
      flash[:errors] = @question.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update_attributes(question_params)
    if @question.save
      flash[:success] = 'Question successfully edited!'
      redirect_to question_path(@question)
    else
      flash[:errors] = @question.errors.full_messages.join(', ')
      render :new
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.answers.destroy_all
    @question.destroy
    flash[:success] = "Question Deleted"
    redirect_to questions_path(@question)
  end

  def question_params
    params.require(:question).permit(:title, :description)
  end
end
