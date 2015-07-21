## Oauth Example App

This basic rails application is a step-by-step
implementation of the process described in the
OAuth tutorial [here](https://github.com/turingschool/lesson_plans/blob/master/ruby_03-professional_rails_applications/getting_started_with_oauth.markdown).

### Using the App

__Basic Setup__

Clone, bundle, and set up the DB:

```
git clone https://github.com/turingschool-examples/oauth-workshop.git
cd oauth-workshop
bundle
bundle exec rake db:create db:migrate
```

__Twitter Credentials Setup__

Additionally, you'll need to register an API application with Twitter
in order to acquire the API credentials needed for the OAuth portion of the
app.

You can register an application [here](https://apps.twitter.com/).
Once you've done this, find the "Consumer Key (API Key)" and
"Consumer Secret (API Secret)" that Twitter provides.

Add these to a configuration file at `config/application.yml`.
The file should look like this:

```
# config/application.yml
defaults: &defaults
  TWITTER_CONSUMER_KEY: YOUR-KEY-HERE
  TWITTER_CONSUMER_SECRET: YOUR-SECRET-HERE

development:
  <<: *defaults

test:
  <<: *defaults

production:
  <<: *defaults
```

This file is listed in the project's `.gitignore` so that we don't accidentally
commit it. The credentials listed in this file will be loaded into the
application's Environment, and used to configre OmniAuth for our application.
