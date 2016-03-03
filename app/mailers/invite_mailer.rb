class InviteMailer < ActionMailer::Base
  def existing_user_invite(invite)
    @invite = invite
    mail(
      from: Invitation.configuration.mailer_sender,
      to: @invite.email,
      subject: I18n.t(:existing_user_invite, scope: [:invitation, :models, :invitation_mailer])
    )
  end

  def new_user_invite(invite)
    @invite = invite
    mail(
      from: Invitation.configuration.mailer_sender,
      to: @invite.email,
      subject: I18n.t(:new_user_invite, scope: [:invitation, :models, :invitation_mailer])
    )
  end
end