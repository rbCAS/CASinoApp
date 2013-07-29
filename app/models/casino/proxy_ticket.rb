module CASino
  class ProxyTicket < ActiveRecord::Base
    include CASinoCore::Concerns::ProxyTicket
  end
end
