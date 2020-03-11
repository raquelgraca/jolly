class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    if current_user
      redirect_to play_sessions_path
    end
  end

end
