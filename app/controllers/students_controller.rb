class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate_student_path
    Student.update(params['id'], :active => !Student.find(params['id']).active)
    @student = Student.find(params[:id])
    render "show"
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end