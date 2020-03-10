class PlaySessionsController < ApplicationController
  before_action :set_play_session, only: [:show, :edit, :update, :destroy]
  before_action :set_appointment, only: [:new, :create]

  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @play_sessions = policy_scope(PlaySession).joins(:appointment).where("appointments.start_time > ?", DateTime.now).order("appointments.start_time asc")

    if params[:search].present?
      if params[:search][:time].present?
        @play_sessions = @play_sessions.joins(:appointment).where("appointments.start_time > ?", "%#{params[:search][:time]}%")
      end

      if params[:search][:hood].present?
        @play_sessions = @play_sessions.joins(appointment: :play_space).where(play_spaces: {neighbourhood: params[:search][:hood]})
      end
    end

  @play_sessions
  end

  def show
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
    if play_session.appointment.start_time - 3.hours > DateTime.now
      @play_session.edit
      redirect_to edit_play_sessions_path(@play_session)
    else
      puts "Sorry but it's to late."
    end
  end

  def update
    @play_session.update(play_session_params)
    if @play_session.save
      redirect_to my_play_sessions_play_sessions_path
    else
      render :edit
    end
  end

  def destroy
    if play_session.created_at - 15.minutes > DateTime.now
    @play_session.destroy
    redirect_to my_play_sessions_play_sessions_path
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
    params.require(:play_session).permit(:name, :description, :requirements, :photo)
  end

  def set_play_session
    @play_session = PlaySession.find(params[:id])
    authorize @play_session
  end

  def set_appointment
    @appointment = Appointment.find(params[:appointment_id])
  end

end
