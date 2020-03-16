class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_reviewee, only: [:new, :create]

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.reviewer = current_user
    authorize @review

    if @review.save
      redirect_to users_path(@reviewee.id)
    else
      render :new
    end
  end

  def show

  end

  def edit
    authorize @review
  end

  def update
    @review.update(review_params)
    authorize @review

    if @review.save
      redirect_to users_path(@reviewee.id)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :stars)
  end

  def set_reviewee
    @reviewee = User.find(params[:user_id])
  end
end
