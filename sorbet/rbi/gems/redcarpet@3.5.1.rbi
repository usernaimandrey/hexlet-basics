# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `redcarpet` gem.
# Please instead update this file by running `bin/tapioca gem redcarpet`.

# source://redcarpet//lib/redcarpet/compat.rb#71
Markdown = RedcarpetCompat

module Redcarpet; end

class Redcarpet::Markdown
  def render(_arg0); end

  # Returns the value of attribute renderer.
  #
  # source://redcarpet//lib/redcarpet.rb#8
  def renderer; end

  class << self
    def new(*_arg0); end
  end
end

module Redcarpet::Render; end

class Redcarpet::Render::Base
  def initialize; end
end

class Redcarpet::Render::HTML < ::Redcarpet::Render::Base
  def initialize(*_arg0); end
end

class Redcarpet::Render::HTML_TOC < ::Redcarpet::Render::Base
  def initialize(*_arg0); end
end

# A renderer object you can use to deal with users' input. It
# enables +escape_html+ and +safe_links_only+ by default.
#
# The +block_code+ callback is also overriden not to include
# the lang's class as the user can basically specify anything
# with the vanilla one.
class Redcarpet::Render::Safe < ::Redcarpet::Render::HTML
  # @return [Safe] a new instance of Safe
  #
  # source://redcarpet//lib/redcarpet.rb#32
  def initialize(extensions = T.unsafe(nil)); end

  # source://redcarpet//lib/redcarpet.rb#39
  def block_code(code, lang); end

  private

  # TODO: This is far from ideal to have such method as we
  # are duplicating existing code from Houdini. This method
  # should be defined at the C level.
  #
  # source://redcarpet//lib/redcarpet.rb#50
  def html_escape(string); end
end

# HTML + SmartyPants renderer
class Redcarpet::Render::SmartyHTML < ::Redcarpet::Render::HTML
  include ::Redcarpet::Render::SmartyPants
end

# SmartyPants Mixin module
#
# Implements SmartyPants.postprocess, which
# performs smartypants replacements on the HTML file,
# once it has been fully rendered.
#
# To add SmartyPants postprocessing to your custom
# renderers, just mixin the module `include SmartyPants`
#
# You can also use this as a standalone SmartyPants
# implementation.
#
# Example:
#
#   # Mixin
#   class CoolRenderer < HTML
#     include SmartyPants
#     # more code here
#   end
#
#   # Standalone
#   Redcarpet::Render::SmartyPants.render("you're")
module Redcarpet::Render::SmartyPants
  extend ::Redcarpet::Render::SmartyPants

  def postprocess(_arg0); end

  class << self
    # source://redcarpet//lib/redcarpet.rb#87
    def render(text); end
  end
end

# XHTML Renderer
class Redcarpet::Render::XHTML < ::Redcarpet::Render::HTML
  # @return [XHTML] a new instance of XHTML
  #
  # source://redcarpet//lib/redcarpet.rb#15
  def initialize(extensions = T.unsafe(nil)); end
end

# source://redcarpet//lib/redcarpet.rb#5
Redcarpet::VERSION = T.let(T.unsafe(nil), String)

# Creates an instance of Redcarpet with the RedCloth API.
class RedcarpetCompat
  # @return [RedcarpetCompat] a new instance of RedcarpetCompat
  #
  # source://redcarpet//lib/redcarpet/compat.rb#5
  def initialize(text, *exts); end

  # Returns the value of attribute text.
  #
  # source://redcarpet//lib/redcarpet/compat.rb#3
  def text; end

  # Sets the attribute text
  #
  # @param value the value to set the attribute text to.
  #
  # source://redcarpet//lib/redcarpet/compat.rb#3
  def text=(_arg0); end

  # source://redcarpet//lib/redcarpet/compat.rb#12
  def to_html(*_dummy); end

  private

  # Turns a list of symbols into a hash of <tt>symbol => true</tt>.
  #
  # source://redcarpet//lib/redcarpet/compat.rb#66
  def list_to_truthy_hash(list); end

  # Returns two hashes, the extensions and renderer options
  # given the extension list
  #
  # source://redcarpet//lib/redcarpet/compat.rb#59
  def parse_extensions_and_renderer_options(exts); end

  # source://redcarpet//lib/redcarpet/compat.rb#47
  def rename_extensions(exts); end
end

# source://redcarpet//lib/redcarpet/compat.rb#18
RedcarpetCompat::EXTENSION_MAP = T.let(T.unsafe(nil), Hash)

# source://redcarpet//lib/redcarpet/compat.rb#44
RedcarpetCompat::RENDERER_OPTIONS = T.let(T.unsafe(nil), Array)
