# Preview all emails at http://localhost:3000/rails/mailers/jolly_day_participant_mailer
class JollyDayParticipantMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/jolly_day_participant_mailer/confirmation
  def confirmation
    jolly_day_participant = JollyDayParticipant.first
    JollyDayParticipantMailer.with(jolly_day_participant: jolly_day_participant).confirmation
  end

end
