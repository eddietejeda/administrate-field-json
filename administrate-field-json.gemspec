$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |gem|
  gem.name = "administrate-field-json"
  gem.version = "0.0.4"
  gem.authors = ["Eddie A Tejeda"]
  gem.email = ["eddie@codeforamerica.org"]
  gem.homepage = "https://github.com/eddietejeda/administrate-field-json"
  gem.summary = "JSON field plugin for Administrate"
  gem.description = gem.summary
  gem.license = "MIT"

  gem.require_paths = ["lib"]
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_dependency "administrate", "~> 0.3"
  gem.add_dependency "rails", ">= 4.2", "< 5.1"
end
