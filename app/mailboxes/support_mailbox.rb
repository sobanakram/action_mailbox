class SupportMailbox < ApplicationMailbox

  def process
    #  mail
    # mail.from
    # mail.subject
    # mail.decoded Text part of the email

    return unless user.present?

    Ticket.create(user: user, title: mail.subject, body: mail.decoded)
  end

  def user
    @user ||= User.find_by email: mail.from
  end

end
