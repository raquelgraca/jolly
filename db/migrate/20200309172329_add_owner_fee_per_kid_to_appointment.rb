class AddOwnerFeePerKidToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_monetize :appointments, :owner_fee_per_kid, currency: { present: false }
  end
end
