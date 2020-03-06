class PlaySpacesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :edit, :update]

  before_action :set_play_space, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = policy_scope(Booking)
    @play_spaces = policy_scope(PlaySpace)
  end

  def new
    @Play_space = PlaySpace.new
    authorize @play_space
  end

  def create
    @play_space = PlaySpace.new(play_spaces_params)
    @play_space.user = current_user
    authorize @play_space
    if @play_space.save
      redirect_to play_spaces_path
    else
      render :new
    end
  end

  def show
    @play_space = PlaySpace.find(params[:id])
    authorize @play_space
    @booking = Purchase.new
    authorize @booking
  end

  def edit
    @play_space = PlaySpace.find(params[:id])
  end

  def update
    @play_space.update(play_space_params)
    if @play_space.save
      redirect_to play_spaces_path
    else
      render :edit
    end
  end

  def destroy
    @play_space.destroy
    redirect_to play_spaces_path
  end

  # def my_spaces
  #   # @play_spaces = current_user.play_spaces
  #   # authorize @play_spaces
  # end

  private

  def set_play_space
    @play_space = PlaySpace.find(params[:id])
    authorize @play_space
  end

  def play_space_params
    params.require(:play_space).permit(:name, :street, :street_number, :neighbourhood, :city, :state, :zip_code, :facilities, photos: [])
  end

end
