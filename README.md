# Welcome to copyDir

copyDir is a simple ruby script for compass to copy one or more folders to one or more different locations.

# How to install?

1. Install [Compass](http://compass-style.org/)<br />
   `$ gem update --system`<br />
   `$ gem install compass`
2. Install copyDir<br />
   `$ gem install copyDir`
3. Require it in your config.rb<br />
   `require 'copyDir'`<br />
4. That's it!

# How to use it?

Open up your __config.rb__, call copyDir and start watching your project with Compass!

```ruby
CopyDir.new([images_dir, javascripts_dir], ["path/to/folder1", "path/to/folder2"])
```

__An example config.rb file would look like the following:__

```ruby
# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "stylesheets"
sass_dir = "sass"
images_dir = "images"
javascripts_dir = "javascripts"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

# copyDir
require 'copyDir'

CopyDir.new([images_dir, javascripts_dir], ["path/to/folder1", "path/to/folder2"])
```