# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `solargraph-rails` gem.
# Please instead update this file by running `bin/tapioca gem solargraph-rails`.

module Solargraph::Rails; end

class Solargraph::Rails::Annotate
  # @return [Annotate] a new instance of Annotate
  #
  # source://solargraph-rails//lib/solargraph/rails/annotate.rb#12
  def initialize; end

  # source://solargraph-rails//lib/solargraph/rails/annotate.rb#16
  def process(source_map, ns); end

  class << self
    # source://solargraph-rails//lib/solargraph/rails/annotate.rb#4
    def instance; end

    # source://solargraph-rails//lib/solargraph/rails/annotate.rb#8
    def reset; end
  end
end

class Solargraph::Rails::Autoload
  # source://solargraph-rails//lib/solargraph/rails/autoload.rb#18
  def namespace_stubs(root_ns, ns); end

  # source://solargraph-rails//lib/solargraph/rails/autoload.rb#8
  def process(source_map, ns, ds); end

  class << self
    # source://solargraph-rails//lib/solargraph/rails/autoload.rb#4
    def instance; end
  end
end

class Solargraph::Rails::Convention < ::Solargraph::Convention::Base
  # source://solargraph-rails//lib/solargraph-rails.rb#24
  def global(yard_map); end

  # source://solargraph-rails//lib/solargraph-rails.rb#35
  def local(source_map); end

  private

  # source://solargraph-rails//lib/solargraph-rails.rb#59
  def run_feature(&block); end
end

class Solargraph::Rails::Debug
  # source://solargraph-rails//lib/solargraph/rails/debug.rb#8
  def run(query); end

  class << self
    # source://solargraph-rails//lib/solargraph/rails/debug.rb#4
    def run(query = T.unsafe(nil)); end
  end
end

class Solargraph::Rails::Delegate
  # source://solargraph-rails//lib/solargraph/rails/delegate.rb#8
  def process(source_map, ns); end

  class << self
    # source://solargraph-rails//lib/solargraph/rails/delegate.rb#4
    def instance; end
  end
end

class Solargraph::Rails::Devise
  # source://solargraph-rails//lib/solargraph/rails/devise.rb#8
  def process(source_map, ns); end

  private

  # source://solargraph-rails//lib/solargraph/rails/devise.rb#18
  def process_model(source, ns); end

  class << self
    # source://solargraph-rails//lib/solargraph/rails/devise.rb#4
    def instance; end
  end
end

class Solargraph::Rails::Model
  # source://solargraph-rails//lib/solargraph/rails/model.rb#92
  def extract_custom_class_name(ast); end

  # source://solargraph-rails//lib/solargraph/rails/model.rb#65
  def plural_association(ns, ast); end

  # source://solargraph-rails//lib/solargraph/rails/model.rb#12
  def process(source_map, ns); end

  # source://solargraph-rails//lib/solargraph/rails/model.rb#79
  def singular_association(ns, ast); end

  class << self
    # source://solargraph-rails//lib/solargraph/rails/model.rb#4
    def instance; end

    # @return [Boolean]
    #
    # source://solargraph-rails//lib/solargraph/rails/model.rb#8
    def valid_filename?(filename); end
  end
end

class Solargraph::Rails::NodeParser
  extend ::Solargraph::Parser::Legacy::ClassMethods
end

class Solargraph::Rails::RailsApi
  # source://solargraph-rails//lib/solargraph/rails/rails_api.rb#8
  def global(yard_map); end

  # source://solargraph-rails//lib/solargraph/rails/rails_api.rb#74
  def local(source_map, ns); end

  class << self
    # source://solargraph-rails//lib/solargraph/rails/rails_api.rb#4
    def instance; end
  end
end

class Solargraph::Rails::Schema
  # @return [Schema] a new instance of Schema
  #
  # source://solargraph-rails//lib/solargraph/rails/schema.rb#33
  def initialize; end

  # source://solargraph-rails//lib/solargraph/rails/schema.rb#37
  def process(source_map, ns); end

  private

  # source://solargraph-rails//lib/solargraph/rails/schema.rb#96
  def extract_schema(ast); end

  # source://solargraph-rails//lib/solargraph/rails/schema.rb#73
  def find_table(source_map, ns); end

  # source://solargraph-rails//lib/solargraph/rails/schema.rb#87
  def infer_table_names(ns); end

  # source://solargraph-rails//lib/solargraph/rails/schema.rb#65
  def schema; end

  class << self
    # source://solargraph-rails//lib/solargraph/rails/schema.rb#25
    def instance; end

    # source://solargraph-rails//lib/solargraph/rails/schema.rb#29
    def reset; end
  end
end

class Solargraph::Rails::Schema::ColumnData < ::Struct
  # Returns the value of attribute ast
  #
  # @return [Object] the current value of ast
  def ast; end

  # Sets the attribute ast
  #
  # @param value [Object] the value to set the attribute ast to.
  # @return [Object] the newly set value
  def ast=(_); end

  # Returns the value of attribute type
  #
  # @return [Object] the current value of type
  def type; end

  # Sets the attribute type
  #
  # @param value [Object] the value to set the attribute type to.
  # @return [Object] the newly set value
  def type=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# source://solargraph-rails//lib/solargraph/rails/schema.rb#6
Solargraph::Rails::Schema::RUBY_TYPES = T.let(T.unsafe(nil), Hash)

class Solargraph::Rails::Storage
  # source://solargraph-rails//lib/solargraph/rails/storage.rb#8
  def process(source_map, ns); end

  class << self
    # source://solargraph-rails//lib/solargraph/rails/storage.rb#4
    def instance; end
  end
end

module Solargraph::Rails::Util
  class << self
    # source://solargraph-rails//lib/solargraph/rails/util.rb#51
    def build_location(ast, path); end

    # source://solargraph-rails//lib/solargraph/rails/util.rb#36
    def build_module_extend(ns, module_name, location); end

    # source://solargraph-rails//lib/solargraph/rails/util.rb#28
    def build_module_include(ns, module_name, location); end

    # source://solargraph-rails//lib/solargraph/rails/util.rb#4
    def build_public_method(ns, name, types: T.unsafe(nil), location: T.unsafe(nil), attribute: T.unsafe(nil), scope: T.unsafe(nil)); end

    # source://solargraph-rails//lib/solargraph/rails/util.rb#44
    def dummy_location(path); end

    # source://solargraph-rails//lib/solargraph/rails/util.rb#63
    def method_return(path, type); end
  end
end

# source://solargraph-rails//lib/solargraph/rails/version.rb#3
Solargraph::Rails::VERSION = T.let(T.unsafe(nil), String)

class Solargraph::Rails::Walker
  # @return [Walker] a new instance of Walker
  #
  # source://solargraph-rails//lib/solargraph/rails/walker.rb#68
  def initialize(ast, comments = T.unsafe(nil)); end

  # Returns the value of attribute ast.
  #
  # source://solargraph-rails//lib/solargraph/rails/walker.rb#67
  def ast; end

  # Returns the value of attribute comments.
  #
  # source://solargraph-rails//lib/solargraph/rails/walker.rb#67
  def comments; end

  # source://solargraph-rails//lib/solargraph/rails/walker.rb#74
  def on(node_type, args = T.unsafe(nil), &block); end

  # source://solargraph-rails//lib/solargraph/rails/walker.rb#78
  def walk; end

  private

  # source://solargraph-rails//lib/solargraph/rails/walker.rb#84
  def traverse(node); end

  class << self
    # source://solargraph-rails//lib/solargraph/rails/walker.rb#63
    def from_source(source); end

    # https://github.com/castwide/solargraph/issues/522
    #
    # source://solargraph-rails//lib/solargraph/rails/walker.rb#53
    def normalize_ast(source); end
  end
end

class Solargraph::Rails::Walker::Hook
  # @return [Hook] a new instance of Hook
  #
  # source://solargraph-rails//lib/solargraph/rails/walker.rb#6
  def initialize(node_type, args, &block); end

  # Returns the value of attribute node_type.
  #
  # source://solargraph-rails//lib/solargraph/rails/walker.rb#5
  def node_type; end

  # source://solargraph-rails//lib/solargraph/rails/walker.rb#12
  def visit(node); end

  private

  # source://solargraph-rails//lib/solargraph/rails/walker.rb#41
  def match_children(children, args = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://solargraph-rails//lib/solargraph/rails/walker.rb#26
  def matches?(node); end
end
