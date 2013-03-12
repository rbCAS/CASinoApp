env :PATH, "#{ENV["PATH"]}:/usr/local/bin/bundle"

set :output, '/dev/null'

every 5.minutes do
  rake 'casino_core:cleanup:all'
end
