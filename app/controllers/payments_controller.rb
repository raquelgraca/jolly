class PaymentsController < ApplicationController
  def new
    @booking = current_user.bookings.find(params[:order_id])
  end
end
