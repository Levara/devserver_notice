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





