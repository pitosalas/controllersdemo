class CoursesController < ApplicationController
  def show
    log params.inspect
    student_id = params[:student_id]
    courses_id = params[:id]
    @student = Student.find(student_id.to_i)
    @course = @student.courses.where(id: courses_id).first
  end
end
