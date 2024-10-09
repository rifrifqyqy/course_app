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

  private

  def course_params
    # Izinkan nested attributes untuk materials
    params.require(:course).permit(:title, :thumbnail, :description, materials_attributes: [:title, :description, :content, :_destroy])
  end
end
