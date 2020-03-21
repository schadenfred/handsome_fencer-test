
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "handsome_fencer/test/version"
require "handsome_fencer/test/install"
# require "thor"

Gem::Specification.new do |spec|
  spec.name          = "handsome_fencer-test"
  spec.version       = HandsomeFencer::Test::VERSION
  spec.authors       = ["schadenfred"]
  spec.email         = ["fred.schoeneman@gmail.com"]

  spec.summary       = %q{Opinionated Rails testing suite.}
  spec.description   = %q{Opinionated Rails testing suite. Specifies necessary
    gems as dependencies and allows generation of test_helper.rb and Guardfile.}
  spec.homepage      = "https://github.com/schadenfred/handsome_fencer-test"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # dependencies

  spec.add_dependency "thor"
  spec.add_dependency "minitest-given"
  spec.add_dependency "minitest-rails"
  spec.add_dependency "shoulda"
  spec.add_dependency "shoulda-matchers"
  spec.add_dependency "minitest-matchers_vaccine"
  spec.add_dependency "guard"
  spec.add_dependency "launchy"
  spec.add_dependency "guard-minitest"
  spec.add_dependency "guard-livereload"
  spec.add_dependency "rack-livereload"

  # development dependencies
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
