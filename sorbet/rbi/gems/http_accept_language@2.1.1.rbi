# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `http_accept_language` gem.
# Please instead update this file by running `bin/tapioca gem http_accept_language`.

module HttpAcceptLanguage; end

module HttpAcceptLanguage::AutoLocale
  extend ::ActiveSupport::Concern

  private

  # source://http_accept_language//lib/http_accept_language/auto_locale.rb#17
  def set_locale; end
end

module HttpAcceptLanguage::EasyAccess
  # source://http_accept_language//lib/http_accept_language/railtie.rb#13
  def http_accept_language; end
end

class HttpAcceptLanguage::Middleware
  # @return [Middleware] a new instance of Middleware
  #
  # source://http_accept_language//lib/http_accept_language/middleware.rb#3
  def initialize(app); end

  # source://http_accept_language//lib/http_accept_language/middleware.rb#7
  def call(env); end
end

class HttpAcceptLanguage::Parser
  # @return [Parser] a new instance of Parser
  #
  # source://http_accept_language//lib/http_accept_language/parser.rb#5
  def initialize(header); end

  # Returns the first of the user_preferred_languages that is compatible
  # with the available locales. Ignores region.
  #
  # Example:
  #
  #   request.compatible_language_from I18n.available_locales
  #
  # source://http_accept_language//lib/http_accept_language/parser.rb#61
  def compatible_language_from(available_languages); end

  # Returns the value of attribute header.
  #
  # source://http_accept_language//lib/http_accept_language/parser.rb#3
  def header; end

  # Sets the attribute header
  #
  # @param value the value to set the attribute header to.
  #
  # source://http_accept_language//lib/http_accept_language/parser.rb#3
  def header=(_arg0); end

  # Returns the first of the user preferred languages that is
  # also found in available languages.  Finds best fit by matching on
  # primary language first and secondarily on region.  If no matching region is
  # found, return the first language in the group matching that primary language.
  #
  # Example:
  #
  #   request.language_region_compatible(available_languages)
  #
  # source://http_accept_language//lib/http_accept_language/parser.rb#94
  def language_region_compatible_from(available_languages); end

  # Finds the locale specifically requested by the browser.
  #
  # Example:
  #
  #   request.preferred_language_from I18n.available_locales
  #   # => 'nl'
  #
  # source://http_accept_language//lib/http_accept_language/parser.rb#50
  def preferred_language_from(array); end

  # Returns a supplied list of available locals without any extra application info
  # that may be attached to the locale for storage in the application.
  #
  # Example:
  # [ja_JP-x1, en-US-x4, en_UK-x5, fr-FR-x3] => [ja-JP, en-US, en-UK, fr-FR]
  #
  # source://http_accept_language//lib/http_accept_language/parser.rb#79
  def sanitize_available_locales(available_languages); end

  # Returns a sorted array based on user preference in HTTP_ACCEPT_LANGUAGE.
  # Browsers send this HTTP header, so don't think this is holy.
  #
  # Example:
  #
  #   request.user_preferred_languages
  #   # => [ 'nl-NL', 'nl-BE', 'nl', 'en-US', 'en' ]
  #
  # source://http_accept_language//lib/http_accept_language/parser.rb#17
  def user_preferred_languages; end

  # Sets the user languages preference, overriding the browser
  #
  # source://http_accept_language//lib/http_accept_language/parser.rb#39
  def user_preferred_languages=(languages); end
end

class HttpAcceptLanguage::Railtie < ::Rails::Railtie; end
