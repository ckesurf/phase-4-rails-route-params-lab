class StudentsController < ApplicationController

  def index
    students = Student.search(params[:name])
    render json: students
  end

  def show
    # Student.find(1, 2, 3) => gives an array
    render json: Student.find_by(id: params[:id]) # => only one
  end

end
