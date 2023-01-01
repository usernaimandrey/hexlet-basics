# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `omniauth-oauth2` gem.
# Please instead update this file by running `bin/tapioca gem omniauth-oauth2`.

module OmniAuth::OAuth2; end

# source://omniauth-oauth2//lib/omniauth-oauth2/version.rb#3
OmniAuth::OAuth2::VERSION = T.let(T.unsafe(nil), String)

module OmniAuth::Strategies; end

# Authentication strategy for connecting with APIs constructed using
# the [OAuth 2.0 Specification](http://tools.ietf.org/html/draft-ietf-oauth-v2-10).
# You must generally register your application with the provider and
# utilize an application id and secret in order to authenticate using
# OAuth 2.0.
class OmniAuth::Strategies::OAuth2
  include ::OmniAuth::Strategy
  extend ::OmniAuth::Strategy::ClassMethods

  # Returns the value of attribute access_token.
  #
  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#44
  def access_token; end

  # Sets the attribute access_token
  #
  # @param value the value to set the attribute access_token to.
  #
  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#44
  def access_token=(_arg0); end

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#62
  def authorize_params; end

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#84
  def callback_phase; end

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#46
  def client; end

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#58
  def request_phase; end

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#80
  def token_params; end

  protected

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#124
  def build_access_token; end

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#129
  def deep_symbolize(options); end

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#135
  def options_for(option); end

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#105
  def pkce_authorize_params; end

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#118
  def pkce_token_params; end

  class << self
    # @private
    #
    # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#17
    def inherited(subclass); end
  end
end

# An error that is indicated in the OAuth 2.0 callback.
# This could be a `redirect_uri_mismatch` or other
class OmniAuth::Strategies::OAuth2::CallbackError < ::StandardError
  # @return [CallbackError] a new instance of CallbackError
  #
  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#152
  def initialize(error, error_reason = T.unsafe(nil), error_uri = T.unsafe(nil)); end

  # Returns the value of attribute error.
  #
  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#150
  def error; end

  # Sets the attribute error
  #
  # @param value the value to set the attribute error to.
  #
  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#150
  def error=(_arg0); end

  # Returns the value of attribute error_reason.
  #
  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#150
  def error_reason; end

  # Sets the attribute error_reason
  #
  # @param value the value to set the attribute error_reason to.
  #
  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#150
  def error_reason=(_arg0); end

  # Returns the value of attribute error_uri.
  #
  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#150
  def error_uri; end

  # Sets the attribute error_uri
  #
  # @param value the value to set the attribute error_uri to.
  #
  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#150
  def error_uri=(_arg0); end

  # source://omniauth-oauth2//lib/omniauth/strategies/oauth2.rb#158
  def message; end
end
