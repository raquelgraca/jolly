class JollyDayParticipantsController < ApplicationController
  def new
    @jolly_day_participant = JollyDayParticipant.new
  end

  def create
    @jolly_day_participant = JollyDayParticipant.new(jolly_day_participant_params)
    @jolly_day_participant.jolly_day_id = 1
    if @jolly_day_participant.save
      redirect_to jolly_day_participant_path(@jolly_day_participant.id)
    else
      render :new
    end
  end

  def show

  end

  private
  def jolly_day_participant_params
    params.require(:jolly_day_participant).permit(:first_name, :last_name, :child_name, :child_age, :email_address, :phone_number, :newsletter_signup)
  end
end
