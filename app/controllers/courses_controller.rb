class CoursesController < ApplicationController
  def new
    @course = Course.new
    # Buat objek material kosong agar dapat ditampilkan di form
    @course.materials.build
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course, notice: "Course successfully created."
    else
      render :new
    end
  end

  def update
    @course = Course.find(params[:id])
    Rails.logger.debug "Course Params: #{course_params.inspect}"

    if @course.update(course_params)
      redirect_to @course, notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  def edit
    @course = Course.includes(:materials).find(params[:id])
  end
  
  def show
    @course = Course.find(params[:id])
  end

  private
  def course_params
    # Izinkan nested attributes untuk materials
    params.require(:course).permit(:title, :thumbnail, :description, materials_attributes: [:id, :title, :description, :content, :_destroy])
  end
end
