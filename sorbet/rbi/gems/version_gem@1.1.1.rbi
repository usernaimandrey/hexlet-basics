# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `version_gem` gem.
# Please instead update this file by running `bin/tapioca gem version_gem`.

module VersionGem; end

module VersionGem::Api
  # The major version
  #
  # @return [Integer]
  #
  # source://version_gem//lib/version_gem/api.rb#13
  def major; end

  # The minor version
  #
  # @return [Integer]
  #
  # source://version_gem//lib/version_gem/api.rb#20
  def minor; end

  # The patch version
  #
  # @return [Integer]
  #
  # source://version_gem//lib/version_gem/api.rb#27
  def patch; end

  # The pre-release version, if any
  #
  # @return [String, NilClass]
  #
  # source://version_gem//lib/version_gem/api.rb#34
  def pre; end

  # The version number as an array of cast values
  #
  # @return [Array<[Integer, String, NilClass]>]
  #
  # source://version_gem//lib/version_gem/api.rb#53
  def to_a; end

  # The version number as a hash
  #
  # @return [Hash]
  #
  # source://version_gem//lib/version_gem/api.rb#41
  def to_h; end

  # The version number as a string
  #
  # @return [String]
  #
  # source://version_gem//lib/version_gem/api.rb#6
  def to_s; end

  private

  # The version number as an array of strings
  #
  # @return [Array<String>]
  #
  # source://version_gem//lib/version_gem/api.rb#62
  def _to_a; end
end

# This is a very *basic* version parser. Others could be built based on this pattern!
module VersionGem::Basic
  class << self
    # @private
    # @raise [Error]
    #
    # source://version_gem//lib/version_gem/basic.rb#9
    def extended(base); end
  end
end

class VersionGem::Error < ::RuntimeError; end

module VersionGem::Version
  extend ::VersionGem::Basic
  extend ::VersionGem::Api
end

# source://version_gem//lib/version_gem/version.rb#5
VersionGem::Version::VERSION = T.let(T.unsafe(nil), String)
