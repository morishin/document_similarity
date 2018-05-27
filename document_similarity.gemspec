
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "document_similarity/version"

Gem::Specification.new do |spec|
  spec.name          = "document_similarity"
  spec.version       = DocumentSimilarity::VERSION
  spec.authors       = ["Shintaro Morikawa"]
  spec.email         = ["sntr92@gmail.com"]
  spec.summary       = "Calculate cosine similarity between given 2 sentence strings"
  spec.homepage      = "https://github.com/morishin/document_similarity"
  spec.license       = "MIT"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
