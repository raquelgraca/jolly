class PlaySpacesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :edit, :update]
  # before_action :set_play_space, only: [:show, :edit, :update, :destroy]

  def index
   #  @bookings = policy_scope(Booking)
   #  @play_spaces = policy_scope(Play_space)
   #  @unsold_play_spaces = []

   #  @play_spaces.each do |play_space|
   # #    @unsold_play_spaces << Play_space if !play_space.sold=end
   #  end
   #  # @unsold_play_spaces

   #  # if params[:search]
   #    # filtering_play_space
   #    # execute_filter(filtering_play_space)
   #    # if none_filter
   #    #   @unsold_play_spaces = Play_space.all
   #    end
   #  end
  end

  def new
    # @Play_space = Play_space.new
    # authorize @play_space
  end

  def create
    # @play_space = Play_space.new(play_spaces_params)
    # @play_space.user = current_user
    # authorize @play_space
    # if @play_space.save
    #   redirect_to my_play_space_play_spaces_path
    # else
    #   render :new
    # end
  end

  def show
    # @play_space = Play_space.find(params[:id])
    # authorize @play_space
    # @booking = Purchase.new
    # authorize @booking
  end

  def edit
    # @play_space = Play_space.find(params[:id])
  end

  def update
    # @play_space.update(hairs_params)
    # if @play_space.save
    #   redirect_to my_play_space_play_spaces_path
    # else
    #   render :edit
    # end
  end

  def destroy
    # @play_space.destroy
    # redirect_to play_spaces_path
  end

  def my_hair
    # @play_spaces = current_user.play_spaces
    # authorize @play_spaces
  end

end
