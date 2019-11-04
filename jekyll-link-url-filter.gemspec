# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "jekyll-link-url-filter"
  spec.version       = "1.0.0"
  spec.date          = "2019-11-04"
  spec.authors       = ["Angus Johnston"]
  spec.email         = ["admin+rubygems@codeanimu.net"]

  spec.summary       = "This adds a link_url filter which acts like the link tag, except it works with variables."
  spec.homepage      = "https://github.com/DakuTree/jekyll-git-updated"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"]   = spec.homepage + "/blob/master/CHANGELOG.md"

  spec.files = ["lib/jekyll-link-url-filter.rb"]

  spec.add_runtime_dependency "jekyll", ">= 3.7", "< 5.0"
end
