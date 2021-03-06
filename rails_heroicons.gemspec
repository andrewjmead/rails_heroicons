$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_heroicons/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "rails_heroicons"
  spec.version     = RailsHeroicons::VERSION
  spec.authors     = ["Andrew Mead"]
  spec.email       = ["andrew@mead.io"]
  spec.homepage    = "https://github.com/andrewjmead/rails_heroicons"
  spec.summary     = "Use heroicons.com in your Rails projects."
  spec.description = "Use heroicons.com in your Rails projects."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "activesupport", ">= 6.0.3"
end
