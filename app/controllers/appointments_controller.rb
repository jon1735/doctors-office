class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
      @appointment = Appointment.new(appointment_params)
      @appointment.save
      redirect_to @appointment.doctor
  end

  private
  def appointment_params
    params.require(:appointment).permit(:date, :notes, :patient_id, :doctor_id)
  end
end