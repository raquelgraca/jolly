class AddSumFeeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_monetize :bookings, :sum_fee, currency: { present: false }
  end
end
