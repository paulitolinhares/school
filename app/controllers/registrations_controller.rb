class RegistrationsController < ApplicationController

  def new
    @student = Student.find(params[:student_id])
  end

  def create
    @student = Student.find(params[:student_id])
    course = Course.find(params[:course_id])
    @student.courses << course
    @student.save

    redirect_to @student
  end

  def destroy
    @student = Student.find(params[:student_id])
    course = Course.find(params[:course_id])

    @student.courses.delete(course)

    redirect_to @student
  end
end
