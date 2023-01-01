# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rails-i18n` gem.
# Please instead update this file by running `bin/tapioca gem rails-i18n`.

# Used for Czech, Slovak.
module RailsI18n
  class << self
    # source://rails-i18n//lib/rails_i18n.rb#2
    def enabled_modules; end

    # source://rails-i18n//lib/rails_i18n.rb#6
    def enabled_modules=(other); end
  end
end

class RailsI18n::Railtie < ::Rails::Railtie
  class << self
    # source://rails-i18n//lib/rails_i18n/railtie.rb#25
    def add(pattern); end

    # source://rails-i18n//lib/rails_i18n/railtie.rb#35
    def init_pluralization_module; end

    # source://rails-i18n//lib/rails_i18n/railtie.rb#30
    def pattern_from(args); end
  end
end
