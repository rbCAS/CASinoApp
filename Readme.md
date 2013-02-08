# CASinoApp

Ready to use CAS server.


## Setup

```shell
gem install bundler
bundle install --deployment --without development test
export RAILS_ENV=production
bundle exec rake casino_core:db:schema:load
```

Create a cronjob:
```cron
*\5 * * * * RAILS_ENV=production bundle exec rake casino_core:cleanup:all
```
