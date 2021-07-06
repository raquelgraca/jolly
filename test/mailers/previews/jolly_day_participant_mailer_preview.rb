# Preview all emails at http://localhost:3000/rails/mailers/jolly_day_participant_mailer
class JollyDayParticipantMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/jolly_day_participant_mailer/confirmation
  def confirmation
    JollyDayParticipantMailer.confirmation
  end

end
