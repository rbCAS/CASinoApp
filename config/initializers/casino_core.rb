# ==> ORM configuration
# Load and configure the correct ORM-compatibility. Supports
# ActiveModel-compatible ORMs by default (i.e. ActiveRecord, Mongoid)
# Other ORMs may be available as additional gems.
require 'casino_core/orm_compatibility/active_model'

CASinoCore.configure do |cfg|
  cfg.application_root = Rails.root
  cfg.logger = Rails.logger
end