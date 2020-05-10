class AddAddressHolderToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_reference :addresses, :address_holder, polymorphic: true
  end
end
