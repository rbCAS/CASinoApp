module CASino
  class ServiceTicket < ActiveRecord::Base
    include CASinoCore::Concerns::ServiceTicket
  end
end
