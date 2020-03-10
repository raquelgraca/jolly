class AddWorkerFeePerKidToPlaySessions < ActiveRecord::Migration[5.2]
  def change
    add_monetize :play_sessions, :worker_fee_per_kid, currency: { present: false }
  end
end
