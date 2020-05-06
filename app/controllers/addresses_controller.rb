class AddressesController < ApplicationController
  def index
    @addresses = policy_scope(Address)
  end

  def new
    @address_holder = set_address_holder
    @address = @address_holder.address.new
    authorize @address
  end

  def create
    @address_holder = set_address_holder
    @address = @address_holder.addresses.new(address_params)
    authorize @address

    if @address.save
      redirect_to @address_holder.class.downcase_path(@address_holder.id)
    else
      render :new
    end
  end

  def edit
    @address = Address.find(params[:id])
    authorize @address
  end

  def update
    @address = Address.find(params[:id])
    @address.update(address_params)
    authorize @address
    if @address.save
      redirect_to @address.address_holder.class.downcase_path(@address.address_holder.id)
    else
      render :edit
    end
  end

  def destroy
    @address.destroy
    redirect_to @address.address_holder.class.downcase_path(@address.address_holder.id)
  end


  private
  def address_params
    params.require(:address).permit(:name, :street, :street_number, :neighbourhood, :city, :state, :zip_code)
  end

  def set_address_holder
    return User.find(params[:user_id]) if params[:user_id]
    return PlaySpace.find(params[:play_space_id]) if params[:play_space_id]
  end
end
