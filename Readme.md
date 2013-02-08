# CASinoApp

Ready to use CAS server.


## Setup

```shell
gem install bundler
cd /path/to/CASinoApp
bundle install --deployment --without development test
export RAILS_ENV=production
bundle exec rake casino_core:db:schema:load
cp config/cas.yml.example config/cas.yml
```

Configure your backends in ```config/cas.yml```. Check the [the wiki](https://github.com/rbCAS/CASino/wiki/Configuration) for examples.

Create a cronjob:
```cron
*\5 * * * * cd /path/to/CASinoApp && RAILS_ENV=production bundle exec rake casino_core:cleanup:all > /dev/null
```
