# CASinoApp

Ready to use CAS server.


## Setup

```shell
gem install bundler
cd /path/to/CASinoApp
./script/install
```

Configure your backends in ```config/cas.yml```. Check the [the wiki](https://github.com/rbCAS/CASino/wiki/Configuration) for examples.

Create a cronjob:
```cron
*/5 * * * * cd /path/to/CASinoApp && RAILS_ENV=production bundle exec rake casino_core:cleanup:all > /dev/null
```
