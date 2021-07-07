class JollyDayParticipantMailer < ApplicationMailer
  def confirmation
    @jolly_day_participant = params[:jolly_day_participant]
    mail(to: @jolly_day_participant.email_address, subject: 'Thank you for signing up to our Jolly Day')
  end
end
