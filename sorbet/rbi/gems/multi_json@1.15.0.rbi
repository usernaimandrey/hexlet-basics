# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `multi_json` gem.
# Please instead update this file by running `bin/tapioca gem multi_json`.

module MultiJson
  include ::MultiJson::Options
  extend ::MultiJson::Options
  extend ::MultiJson

  # Get the current adapter class.
  #
  # source://multi_json//lib/multi_json.rb#70
  def adapter; end

  # Set the JSON parser utilizing a symbol, string, or class.
  # Supported by default are:
  #
  # * <tt>:oj</tt>
  # * <tt>:json_gem</tt>
  # * <tt>:json_pure</tt>
  # * <tt>:ok_json</tt>
  # * <tt>:yajl</tt>
  # * <tt>:nsjsonserialization</tt> (MacRuby only)
  # * <tt>:gson</tt> (JRuby only)
  # * <tt>:jr_jackson</tt> (JRuby only)
  #
  # source://multi_json//lib/multi_json.rb#90
  def adapter=(new_adapter); end

  # source://multi_json//lib/multi_json.rb#26
  def cached_options(*_arg0); end

  # source://multi_json//lib/multi_json.rb#129
  def current_adapter(options = T.unsafe(nil)); end

  # Decode a JSON string into Ruby.
  #
  # <b>Options</b>
  #
  # <tt>:symbolize_keys</tt> :: If true, will use symbols instead of strings for the keys.
  # <tt>:adapter</tt> :: If set, the selected adapter will be used for this call.
  #
  # source://multi_json//lib/multi_json.rb#119
  def decode(string, options = T.unsafe(nil)); end

  # The default adapter based on what you currently
  # have loaded and installed. First checks to see
  # if any adapters are already loaded, then checks
  # to see which are installed if none are loaded.
  #
  # source://multi_json//lib/multi_json.rb#46
  def default_adapter; end

  # The default adapter based on what you currently
  # have loaded and installed. First checks to see
  # if any adapters are already loaded, then checks
  # to see which are installed if none are loaded.
  #
  # source://multi_json//lib/multi_json.rb#46
  def default_engine; end

  # source://multi_json//lib/multi_json.rb#18
  def default_options; end

  # source://multi_json//lib/multi_json.rb#11
  def default_options=(value); end

  # Encodes a Ruby object as JSON.
  #
  # source://multi_json//lib/multi_json.rb#138
  def dump(object, options = T.unsafe(nil)); end

  # Encodes a Ruby object as JSON.
  #
  # source://multi_json//lib/multi_json.rb#138
  def encode(object, options = T.unsafe(nil)); end

  # Get the current adapter class.
  #
  # source://multi_json//lib/multi_json.rb#70
  def engine; end

  # Set the JSON parser utilizing a symbol, string, or class.
  # Supported by default are:
  #
  # * <tt>:oj</tt>
  # * <tt>:json_gem</tt>
  # * <tt>:json_pure</tt>
  # * <tt>:ok_json</tt>
  # * <tt>:yajl</tt>
  # * <tt>:nsjsonserialization</tt> (MacRuby only)
  # * <tt>:gson</tt> (JRuby only)
  # * <tt>:jr_jackson</tt> (JRuby only)
  #
  # source://multi_json//lib/multi_json.rb#90
  def engine=(new_adapter); end

  # Decode a JSON string into Ruby.
  #
  # <b>Options</b>
  #
  # <tt>:symbolize_keys</tt> :: If true, will use symbols instead of strings for the keys.
  # <tt>:adapter</tt> :: If set, the selected adapter will be used for this call.
  #
  # source://multi_json//lib/multi_json.rb#119
  def load(string, options = T.unsafe(nil)); end

  # source://multi_json//lib/multi_json.rb#98
  def load_adapter(new_adapter); end

  # source://multi_json//lib/multi_json.rb#26
  def reset_cached_options!(*_arg0); end

  # Set the JSON parser utilizing a symbol, string, or class.
  # Supported by default are:
  #
  # * <tt>:oj</tt>
  # * <tt>:json_gem</tt>
  # * <tt>:json_pure</tt>
  # * <tt>:ok_json</tt>
  # * <tt>:yajl</tt>
  # * <tt>:nsjsonserialization</tt> (MacRuby only)
  # * <tt>:gson</tt> (JRuby only)
  # * <tt>:jr_jackson</tt> (JRuby only)
  #
  # source://multi_json//lib/multi_json.rb#90
  def use(new_adapter); end

  # Executes passed block using specified adapter.
  #
  # source://multi_json//lib/multi_json.rb#144
  def with_adapter(new_adapter); end

  # Executes passed block using specified adapter.
  #
  # source://multi_json//lib/multi_json.rb#144
  def with_engine(new_adapter); end

  private

  # source://multi_json//lib/multi_json.rb#155
  def load_adapter_from_string_name(name); end
end

# source://multi_json//lib/multi_json.rb#31
MultiJson::ALIASES = T.let(T.unsafe(nil), Hash)

class MultiJson::AdapterError < ::ArgumentError
  # Returns the value of attribute cause.
  #
  # source://multi_json//lib/multi_json/adapter_error.rb#3
  def cause; end

  class << self
    # source://multi_json//lib/multi_json/adapter_error.rb#5
    def build(original_exception); end
  end
end

# Legacy support
#
# source://multi_json//lib/multi_json/parse_error.rb#16
MultiJson::DecodeError = MultiJson::ParseError

# source://multi_json//lib/multi_json/parse_error.rb#16
MultiJson::LoadError = MultiJson::ParseError

module MultiJson::Options
  # source://multi_json//lib/multi_json/options.rb#25
  def default_dump_options; end

  # source://multi_json//lib/multi_json/options.rb#21
  def default_load_options; end

  # source://multi_json//lib/multi_json/options.rb#17
  def dump_options(*args); end

  # source://multi_json//lib/multi_json/options.rb#8
  def dump_options=(options); end

  # source://multi_json//lib/multi_json/options.rb#13
  def load_options(*args); end

  # source://multi_json//lib/multi_json/options.rb#3
  def load_options=(options); end

  private

  # source://multi_json//lib/multi_json/options.rb#31
  def get_options(options, *args); end
end

module MultiJson::OptionsCache
  extend ::MultiJson::OptionsCache

  # source://multi_json//lib/multi_json/options_cache.rb#10
  def fetch(type, key, &block); end

  # source://multi_json//lib/multi_json/options_cache.rb#5
  def reset; end

  private

  # source://multi_json//lib/multi_json/options_cache.rb#24
  def write(cache, key); end
end

# Normally MultiJson is used with a few option sets for both dump/load
# methods. When options are generated dynamically though, every call would
# cause a cache miss and the cache would grow indefinitely. To prevent
# this, we just reset the cache every time the number of keys outgrows
# 1000.
#
# source://multi_json//lib/multi_json/options_cache.rb#22
MultiJson::OptionsCache::MAX_CACHE_SIZE = T.let(T.unsafe(nil), Integer)

class MultiJson::ParseError < ::StandardError
  # Returns the value of attribute cause.
  #
  # source://multi_json//lib/multi_json/parse_error.rb#3
  def cause; end

  # Returns the value of attribute data.
  #
  # source://multi_json//lib/multi_json/parse_error.rb#3
  def data; end

  class << self
    # source://multi_json//lib/multi_json/parse_error.rb#5
    def build(original_exception, data); end
  end
end

# source://multi_json//lib/multi_json.rb#33
MultiJson::REQUIREMENT_MAP = T.let(T.unsafe(nil), Array)

# source://multi_json//lib/multi_json/version.rb#16
MultiJson::VERSION = T.let(T.unsafe(nil), String)

class MultiJson::Version
  class << self
    # @return [String]
    #
    # source://multi_json//lib/multi_json/version.rb#10
    def to_s; end
  end
end

# source://multi_json//lib/multi_json/version.rb#3
MultiJson::Version::MAJOR = T.let(T.unsafe(nil), Integer)

# source://multi_json//lib/multi_json/version.rb#4
MultiJson::Version::MINOR = T.let(T.unsafe(nil), Integer)

# source://multi_json//lib/multi_json/version.rb#5
MultiJson::Version::PATCH = T.let(T.unsafe(nil), Integer)

# source://multi_json//lib/multi_json/version.rb#6
MultiJson::Version::PRE = T.let(T.unsafe(nil), T.untyped)
