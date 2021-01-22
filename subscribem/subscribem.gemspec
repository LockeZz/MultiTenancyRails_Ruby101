$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "subscribem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "subscribem"
  spec.version     = Subscribem::VERSION
  spec.authors     = ["LockeZz"]
  spec.email       = ["LockeZz.PHF@gmail.com"]
  # spec.homepage    = "TODO"
  spec.summary     = "Summary of Subscribem."
  spec.description = "Description of Subscribem."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.4", ">= 5.2.4.4"

  spec.add_dependency "pg"
  spec.add_development_dependency "rspec-rails" 
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "database_cleaner"

  spec.add_dependency "bcrypt"
  spec.add_dependency "warden"
  spec.add_dependency "dynamic_form"
  # spec.add_dependency "apartment"
  spec.add_dependency "houser"
end
