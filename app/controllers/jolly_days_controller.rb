class JollyDaysController < ApplicationController
  def new
    @jolly_day = JollyDay.new
  end

  def create
    @jolly_day = JollyDay.new(jolly_day_params)
    if @jolly_day.save
      redirect_to jolly_day_path(@jolly_day)
    else
      render :new
    end
  end

  def show

  end

  private
  def jolly_day_params
    params.require(:jolly_day).permit( :name, :start, :end, :maximum_capacity, :minimum_age, :maximum_age)
  end

end
