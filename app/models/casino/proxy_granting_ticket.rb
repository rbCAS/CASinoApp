module CASino
  class ProxyGrantingTicket < ActiveRecord::Base
    include CASinoCore::Concerns::ProxyGrantingTicket
  end
end
