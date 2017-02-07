class CoursesController < ApplicationController
  def new
    @course = Course.find(params[:id])
  end
  def index
    @courses = Course.all
  end
end
