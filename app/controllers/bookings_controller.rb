class BookingsController < ApplicationController
  def index
    # @bookings = Booking.all
  end

  def create
    # @booking = Booking.new(purchases_params)
    # @booking.user = current_user
    # @play_space = Play_space.find(params[:play_space_id])
    # @booking.play_space = @play_space
    # authorize @purchase
    # if @booking.save
    #   @play_space.sold = true
    #   @play_space.save
    #   redirect_to booking_path(@booking.id)
    # else
    #   render "play_spaces/show"
    # end
  end

  def show
    # @booking = Bookings.find(params[:id])
    # authorize @Booking
  end

  private
  def purchases_params
    # params.require(:booking).permit(:comment)
  end
end
