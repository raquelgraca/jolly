class AppointmentsController < ApplicationController
  before_action :set_appointments, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = policy_scope(Appointment)
  end

  def show
  end

  def new
    @appointment = Appointment.new
    authorize @appointment
  end

  def create
    @appointment = Appointment.create(appointment_params)
    authorize @appointment
  end

  def edit
  end

  def update
   @appointment.update(appointments_params)
    if @appointment.save
      redirect_to appointments_path
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:minimum_capacity, :maximum_capacity, :start_time, :end_time)
  end

  def set_appointments
    @appointment = Appointment.find(params[:id])
    authorize @appointment
  end
end
