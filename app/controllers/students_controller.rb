class StudentsController < ApplicationController

  def student_find 
    Student.find(params[:id])
  end

  def index 
    render json: Student.all, adapter: nil
    except: [:created_at, :updated_at], status: 200
  end

  def show 
    render json: student_find, status: 202
  end

  def create
    render json: Student.create!(student_params)
  end

  def update 
    s = student_find
    s.update!(student_params)
    render json: s, status: :ok
  end

  def destroy
    s = student_find
    s.destroy
    head :no_content
  end

  private
  
  def student_params
    params.permitt(:name, :major, :age, :instructor_id)
  end
    
end
