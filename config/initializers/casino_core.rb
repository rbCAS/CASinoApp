config_file = File.join(Rails.root, 'config', 'cas.yml')
raise "Could not find cas config file (#{config_file})" unless File.exists?(config_file)
CASinoCore.setup Rails.env, application_root: Rails.root
