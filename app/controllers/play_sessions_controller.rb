class PlaySessionsController < ApplicationController
  before_action :set_play_session, only: [:show, :edit, :update, :destroy]
  before_action :set_appointment, only: [:new, :create]


  def index
    @play_sessions = policy_scope(PlaySession)
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
      redirect_to play_session_path(@play_session)
    else
      render :new
    end
  end

  def edit
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
    @play_session.destroy
    redirect_to my_play_sessions_play_sessions_path
  end

  def my_play_sessions
    @play_sessions = current_user.play_sessions
    authorize @play_sessions
  end

  private

  def play_session_params
    params.require(:play_session).permit(:name, :description, :requirements)
  end

  def set_play_session
    @play_session = PlaySession.find(params[:id])
    authorize @play_session
  end

  def set_appointment
    @appointment = Appointment.find(params[:appointment_id])
  end
end
