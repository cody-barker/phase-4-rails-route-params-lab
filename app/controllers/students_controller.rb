class StudentsController < ApplicationController

  def index
    students = Student.where(first_name: params[:first_name])
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

end
