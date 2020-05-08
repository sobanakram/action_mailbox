class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  routing /support@example.com/i => :support

  routing RepliesMailbox::MATCHER => :replies
  # support+1231@example.com
  # User
  # Ticket
  # Comment
end
