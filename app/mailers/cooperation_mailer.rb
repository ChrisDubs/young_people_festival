class CooperationMailer < ApplicationMailer
  def cooperation_email(cooperation)
    @cooperation = cooperation
    mail(to: 'no-reply@ypf.com', subject: 'Cooperation')
  end
end
