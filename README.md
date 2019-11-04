# Jekyll Link URL Filter  [![Gem Version](https://badge.fury.io/rb/jekyll-link-url-filter.svg)](https://badge.fury.io/rb/jekyll-link-url-filter) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

**Jekyll Link URL Filter** is a ruby gem for [Jekyll](https://jekyllrb.com/) static site generator.  
This adds a `link_url` filter which acts like the link tag, except it works with variables.

## Installation
Add this line to your Gemfile:

```ruby
group :jekyll_plugins do
  gem "jekyll-link-url-filter"
end
```

And then execute:

    $ bundle

Alternatively install the gem yourself as:

    $ gem install jekyll-link-url-filter

and put this in your ``_config.yml`` 

```yaml
plugins:
  - jekyll-link-url-filter
```

## Usage
Use it like any other filter.

Examples:
`{{ this_is_a_variable_path | link }}`  
`{{ /about/ | link }}`
