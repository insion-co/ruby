# frozen_string_literal: true

# Custom gemspec configuration file
# This file is automatically loaded by the main gemspec file. The 'spec' variable is available
# in this context from the main gemspec file. You can modify this file to add custom metadata,
# dependencies, or other gemspec configurations. If you do make changes to this file, you will
# need to add it to the .fernignore file to prevent your changes from being overwritten.

def add_custom_gemspec_data(spec)
  spec.name = "insion"
  spec.authors = ["Insion"]
  spec.email = ["support@insion.co"]
  spec.summary = "Official Ruby client for the Insion API"
  spec.description = "The official Insion Ruby SDK for moderation, records, users, and appeals."
  spec.homepage = "https://insion.co/docs/sdks/ruby"
  spec.license = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["source_code_uri"] = "https://github.com/insion-co/ruby"
  spec.metadata["bug_tracker_uri"] = "https://github.com/insion-co/ruby/issues"
  spec.metadata["documentation_uri"] = "https://insion.co/docs/sdks/ruby"

  spec.files = Dir[
    "lib/**/*.rb",
    "README.md",
    "LICENSE.md",
    "reference.md",
    "changelog.md"
  ]
end
