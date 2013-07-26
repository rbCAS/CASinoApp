module CASino
  class User < ActiveRecord::Base
    include CASinoCore::Concerns::User
  end
end
