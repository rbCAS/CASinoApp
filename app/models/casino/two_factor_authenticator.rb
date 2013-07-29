module CASino
  class TwoFactorAuthenticator < ActiveRecord::Base
    include CASinoCore::Concerns::TwoFactorAuthenticator
  end
end
