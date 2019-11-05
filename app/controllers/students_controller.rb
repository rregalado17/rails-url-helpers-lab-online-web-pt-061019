class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
<<<<<<< HEAD
    @student = Student.find(params[:id])
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
    @student.save
    redirect_to student_path(@student)
  end 
=======
    set_student
    @student.active = !@student.active 
    @student.save 
    redirect_to student_path(@student)
  end
>>>>>>> 2bb3433e6751944946be7f9ea501fcc0f2aceaab

  private

    def set_student
      @student = Student.find(params[:id])
    end
end