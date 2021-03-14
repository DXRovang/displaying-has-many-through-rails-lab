class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  # def new
  #   @patient = Patient.new
  # end

  # def create
  #   @patient = Patient.new
  # end

  def show
    @patient = Patient.find_by(id: params[:id])
  end 
  
  private

  def doctor_params
    params.require(:patient).permit(:name, :age)
  end
end
