class AddressesController < ApplicationController
  def index
    @addresses = policy_scope(Address)
  end

  def new
    @address_holder = set_address_holder
    @address = Address.new
    @address.address_holder = @address_holder

    authorize @address
  end

  def create
    @address_holder = set_address_holder
    @address = Address.new(address_params)
    @address.address_holder = @address_holder
    authorize @address

    if @address.save
      if @address.address_holder_type == "User"
        redirect_to user_path(@address.address_holder.id))
      else
        redirect_to play_space_path(@address.address_holder.id))
      end
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
      if @address.address_holder_type == "User"
        redirect_to user_path(@address.address_holder.id))
      else
        redirect_to play_space_path(@address.address_holder.id)
      end
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
