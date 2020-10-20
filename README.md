# DevServerNotice

Simple notice fixed to the bottom of the screen, showing the users that they
are currently looking at a development version of the site.

## Usage: 

Add to gemfile and `bundle install`

```
gem 'devserver_notice'
```

Add to your layouts before the closing `</body>` tag:

```erb
<%= raw(DevServerNotice.show()) #>
```

### Customization:

```erb
<%= raw(DevServerNotice.show(background: "blue", color: "black")) #>
```

At this moment only supports named colors. Default background is `red` and
default color is `white`.

### Check env variables

If your deployment workflow supports adding environment variables to your app, 
you can configure an environment variable on your development server and show the
notice only if the env variable is defined. An example:


```erb
<%= raw(DevServerNotice.show()) if ENV['SERVER_ENV'] == "development" #>
```

You cannot use `Rails.env.development?` because this references the Rails environment.
Your app on your development/staging server is most likely running in the production env.
If you have a staging Rails environment, then you could use it like this:

```erb
<%= raw(DevServerNotice.show()) if Rails.env.staging? #>
```



