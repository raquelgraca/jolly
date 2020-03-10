class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_play_session, only: [:new, :create]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
  end

  def new
    @booking = Booking.new
    @play_session = @booking.play_session
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @play_session = @booking.play_session
    authorize @booking

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  
  def edit
  end

  def update
   @booking.update(booking_params)

    if @booking.save
      redirect_to bookings_path
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path

  end

  private

  def booking_params
    params.require(:booking).permit(:name_of_kid, :gender_of_kid, :age_of_kid, :comment)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def set_play_session
    @play_session = PlaySession.find(params[:play_session_id])
  end

end
