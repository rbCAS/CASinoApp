module CASino
  class TicketGrantingTicket < ActiveRecord::Base
    include CASinoCore::Concerns::TicketGrantingTicket
  end
end
