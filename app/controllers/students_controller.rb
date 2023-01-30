class StudentsController < ApplicationController

  # everything
  def index
    students = Student.all
    # if there's a query param called name,
    
    if params[:name]
      # then only return students with that name
      search_name = params[:name].downcase
      students = students.filter do |student| 
        student.first_name.downcase == search_name || student.last_name.downcase == search_name
      end

      # Student.where("first_name = ? OR last_name = ?", params[:name])

    end
    render json: students
  end

  # one thing
  def show
    student = Student.find(params[:id])
    render json: student

  end

  

end
