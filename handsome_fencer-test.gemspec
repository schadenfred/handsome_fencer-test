
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "handsome_fencer/test/version"

Gem::Specification.new do |spec|
  spec.name          = "handsome_fencer-test"
  spec.version       = HandsomeFencer::Test::VERSION
  spec.authors       = ["schadenfred"]
  spec.email         = ["fred.schoeneman@gmail.com"]

  spec.summary       = %q{Opinionated Rails testing suite.}
  spec.description   = %q{Opinionated Rails testing suite., implicitly requires
    necessary gems and allows developers to set up necessary config files for
    same.}
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

  spec.add_dependency "minitest"
  spec.add_dependency "guard"
  spec.add_dependency "launchy"
  spec.add_dependency "guard-minitest"
  spec.add_dependency "guard-livereload"
  spec.add_dependency "rack-livereload"
  spec.add_dependency "thor"

  # development dependencies
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
