class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  routing /support@example.com/i => :support

  # User
  # Ticket
  # Comment
end
