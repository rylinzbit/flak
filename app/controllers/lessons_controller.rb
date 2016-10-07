class LessonsController < ApplicationController
	def index
		@lessons = Lesson.all
	end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lessons_params)
    if @lesson.save
        redirect_to @classes
    else
        render "new"
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def lessons_params
    params.require(:lesson).permit(:title, :subtitle, :description, :extra_title, :extra_description)
  end

end
