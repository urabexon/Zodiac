# frozen_string_literal: true

require_relative "lib/zodiac/version"

Gem::Specification.new do |spec|
  spec.name          = "zodiac"
  spec.version       = Zodiac::VERSION
  spec.authors       = ["Hiroki Urabe"]
  spec.email         = ["hiroki708.a48uk@gmail.com"]

  spec.summary       = "Return zodiac."
  spec.description   = "Return zodiac."
  spec.homepage      = "https://github.com/urabexon/Zodiac"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.2"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/urabexon/Zodiac"
  spec.metadata["changelog_uri"] = "https://github.com/urabexon/Zodiac/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.12"
end
