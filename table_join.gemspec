lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "table_join/version"

Gem::Specification.new do |spec|
  spec.name          = "table_join"
  spec.version       = TableJoin::VERSION
  spec.authors       = ["Tom ten Thij"]
  spec.email         = ["code@tomtenthij.nl"]

  spec.summary       = %q{Join data in arrays of hashes, database table style.}
  spec.description   = %q{Join data in arrays of hashes, database table style.}
  spec.homepage      = "https://github.com/tomtt/table_join"
  spec.license       = 'MIT (Hippocratic)'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
