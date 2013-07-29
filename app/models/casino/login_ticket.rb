module CASino
  class LoginTicket < ActiveRecord::Base
    include CASinoCore::Concerns::LoginTicket
  end
end
