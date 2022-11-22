class StudentsController < ApplicationController

  def index
    # check if there's query param called 'name'
    # byebug
    #  I only want to get the students that have a matching first name or last name, case insensitive
    # .where
    # .find_by
    # .select/.filter
    # Student.all.filter {|student| student.first_name.downcase == params[:name] || student.last_name.downcase == params[:name]}
    # .include
    # Student.where(last_name: 'kirby')
    # .where('lower(name) = ?', name.downcase).first 
    # Student.where('lower(last_name) = ?', params[:name].downcase)
    # Student.where('lower(last_name) = ? OR lower(first_name) = ?', params[:name].downcase, params[:name].downcase)
    students = Student.search(params[:name])
    render json: students
  end

  def show
    # Student.find(1, 2, 3) => gives an array
    render json: Student.find_by(id: params[:id]) # => only one
  end

end
