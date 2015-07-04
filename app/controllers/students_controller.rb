class StudentsController < ApplicationController
  before_action :set_student, only: [:show]

  def index
    @students = Student.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.friendly.find(params[:id])
    end
end
