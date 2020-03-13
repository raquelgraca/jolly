class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_play_session, only: [:new, :create]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = current_user.bookings.find(params[:id])
  end

  def new
    @booking = Booking.new
    @booking.play_session = @play_session

    authorize @booking
  end


 def create
  @play_session = PlaySession.find(params[:play_session_id])
  # booking  = Booking.create!(user: current_user, name_of_kid: 'uan', gender_of_kid: 'male', age_of_kid:, :comment 'dasdas')


  session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
      name: booking.play_session.appointment.play_space.name,
      images: [booking.play_session.appointment.play_space.photo],
      price_cents: booking.sum_fee_cents,
      currency: 'brl',
      quantity: 1,
    }],
    success_url: order_url(order),
    cancel_url: order_url(order),
  )

  order.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(order)
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
    @booking.update(status: "canceled")
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
