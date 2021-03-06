class PlaySessionsController < ApplicationController
  before_action :set_play_session, only: [:show, :edit, :update, :destroy]
  before_action :set_appointment, only: [:new, :create]

  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @play_sessions = policy_scope(PlaySession).joins(:appointment).where("appointments.start_time > ?", DateTime.now).order("appointments.start_time asc")
    if user_signed_in?
      @default_address = current_user.addresses.first
      @user_addresses = current_user.addresses
    end

    if params[:search].present?
      if params[:search][:date_and_start_time].present?
        @play_sessions = @play_sessions.joins(:appointment).where("appointments.start_time > ?", "%#{params[:search][:date_and_start_time]}%".to_datetime)
      end

      if params[:search][:neighbourhood].present?
        @play_sessions = @play_sessions.joins(appointment: [play_space: :address]).where(addresses: {neighbourhood: params[:search][:neighbourhood]})
      end

      if params[:search][:proximity].present?
        if params[:search][:address].present?
          @selected_address = Address.find(params[:search][:address])
          @addresses = Address.near([@selected_address.latitude, @selected_address.longitude], (params[:search][:proximity]).to_i)
        else
          @addresses = Address.near([@default_address.latitude, @default_address.longitude], (params[:search][:proximity]).to_i)
        end
        @addresses_id = @addresses.map{|address| address.id}
        @play_sessions = @play_sessions.joins(appointment: [play_space: :address]).where(addresses: {id: @addresses_id})
      end
    end

    @markers = @play_sessions.filter_map do |play_session|
      unless play_session.appointment.play_space.address.latitude == nil
        {
          lat: play_session.appointment.play_space.address.latitude,
          lng: play_session.appointment.play_space.address.longitude
        }
      end
    end

  @play_sessions
  end

  def show
    @booking = @play_session.bookings.new
  end

  def new
    @play_session = PlaySession.new
    @play_session.appointment = @appointment
    authorize @play_session
  end

  def create
    @play_session = PlaySession.new(play_session_params)
    @play_session.appointment = @appointment
    @play_session.user = current_user
    authorize @play_session

    if @play_session.save
      redirect_to my_play_sessions_path
    else
      render :new
    end
  end

  def edit
    if @play_session.appointment.start_time - 3.hours > DateTime.now
      set_play_session
    else
      puts "Sorry but it's too late."
    end
  end

  def update
    @play_session.update(play_session_params)
    if @play_session.save
      redirect_to my_play_sessions_path
    else
      render :edit
    end
  end

  def destroy
    if @play_session.created_at - 60.minutes > DateTime.now
    @play_session.destroy
    redirect_to my_play_sessions_path
    else
      puts "Sorry it's to late but you can still edit your booking."
    end
  end

  def my_play_sessions
    @play_sessions = PlaySession.where(user: current_user)
    authorize @play_sessions
  end

  private

  def play_session_params
    params.require(:play_session).permit(:name, :description, :requirements, :photo, :worker_fee_per_kid_cents)
  end

  def set_play_session
    @play_session = PlaySession.find(params[:id])
    authorize @play_session
  end

  def set_appointment
    @appointment = Appointment.find(params[:appointment_id])
  end

end
