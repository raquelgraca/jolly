class AppointmentsController < ApplicationController
  def index
    @appointments = policy_scope(Appointment)
  end

  def show
    @appointment = Appointment.find(params[:id])
    authorize @appointment
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
    @appointment = Appointment.find(params[:id])
    authorize @appointment
  end

  def update
   @appointment.update(appointments_params)
   authorize @appointment
    if @appointment.save
      redirect_to appointments_path
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    authorize @appointment
    redirect_to appointments_path
  end

  def appointment_params
    params.require(:appointment).permit(:minimum_capacity, :maximum_capacity, :start_time, :end_time)
  end
end
