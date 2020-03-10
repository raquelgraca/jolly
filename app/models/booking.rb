class Booking < ApplicationRecord
  belongs_to :play_session
  belongs_to :user

  # state:string
  # teddy_sku:string
  # amount:monetize
  # checkout_session_id:string
  # user:references
  # teddy:references

end
