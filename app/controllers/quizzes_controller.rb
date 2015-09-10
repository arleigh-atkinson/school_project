class QuizzesController < ApplicationController
    def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])

    if @quiz.update(quiz_params)
      redirect_to courses_path
    else
      render :edit
    end
  end

  def create
    @quiz = quiz.new(quiz_params)

    if @quiz.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def destroy
    @quiz = quiz.find(params[:id])
    @quiz.destroy
    redirect_to courses_path
  end

  private

  def quiz_params
    params.require(:quiz).permit(:name, :course_id)
  end
end
