# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rubocop-rake` gem.
# Please instead update this file by running `bin/tapioca gem rubocop-rake`.

module RuboCop; end
class RuboCop::ConfigNotFoundError < ::RuboCop::Error; end
module RuboCop::Cop; end

module RuboCop::Cop::ConfigurableNaming
  include ::RuboCop::Cop::ConfigurableEnforcedStyle
  include ::RuboCop::Cop::ConfigurableFormatting
end

# source://rubocop/1.41.1/lib/rubocop/cop/mixin/configurable_naming.rb#10
RuboCop::Cop::ConfigurableNaming::FORMATS = T.let(T.unsafe(nil), Hash)

module RuboCop::Cop::ConfigurableNumbering
  include ::RuboCop::Cop::ConfigurableEnforcedStyle
  include ::RuboCop::Cop::ConfigurableFormatting
end

# source://rubocop/1.41.1/lib/rubocop/cop/mixin/configurable_numbering.rb#11
RuboCop::Cop::ConfigurableNumbering::FORMATS = T.let(T.unsafe(nil), Hash)

# source://rubocop/1.41.1/lib/rubocop/cop/mixin/allowed_methods.rb#38
RuboCop::Cop::IgnoredMethods = RuboCop::Cop::AllowedMethods

# source://rubocop/1.41.1/lib/rubocop/cop/mixin/allowed_pattern.rb#54
RuboCop::Cop::IgnoredPattern = RuboCop::Cop::AllowedPattern

module RuboCop::Cop::Rake; end

# This cop detects class or module definition in a task or namespace,
# because it is defined to the top level.
# It is confusing because the scope looks in the task or namespace,
# but actually it is defined to the top level.
#
# @example
#   # bad
#   task :foo do
#   class C
#   end
#   end
#
#   # bad
#   namespace :foo do
#   module M
#   end
#   end
#
#   # good - It is also defined to the top level,
#   #        but it looks expected behavior.
#   class C
#   end
#   task :foo do
#   end
class RuboCop::Cop::Rake::ClassDefinitionInTask < ::RuboCop::Cop::Base
  # source://rubocop-rake//lib/rubocop/cop/rake/class_definition_in_task.rb#34
  def on_class(node); end

  # source://rubocop-rake//lib/rubocop/cop/rake/class_definition_in_task.rb#34
  def on_module(node); end
end

# source://rubocop-rake//lib/rubocop/cop/rake/class_definition_in_task.rb#32
RuboCop::Cop::Rake::ClassDefinitionInTask::MSG = T.let(T.unsafe(nil), String)

# Rake task definition should have a description with `desc` method.
# It is useful as a documentation of task. And Rake does not display
# task that does not have `desc` by `rake -T`.
#
# Note: This cop does not require description for the default task,
#       because the default task is executed with `rake` without command.
#
# @example
#   # bad
#   task :do_something
#
#   # bad
#   task :do_something do
#   end
#
#   # good
#   desc 'Do something'
#   task :do_something
#
#   # good
#   desc 'Do something'
#   task :do_something do
#   end
class RuboCop::Cop::Rake::Desc < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::Rake::Helper::OnTask
  extend ::RuboCop::Cop::AutoCorrector

  # source://rubocop-rake//lib/rubocop/cop/rake/desc.rb#40
  def on_task(node); end

  # source://rubocop-rake//lib/rubocop/cop/rake/desc.rb#36
  def prerequisites(param0 = T.unsafe(nil)); end

  private

  # @return [Boolean]
  #
  # source://rubocop-rake//lib/rubocop/cop/rake/desc.rb#76
  def can_insert_desc_to?(parent); end

  # source://rubocop-rake//lib/rubocop/cop/rake/desc.rb#62
  def parent_and_task(task_node); end

  # @return [Boolean]
  #
  # source://rubocop-rake//lib/rubocop/cop/rake/desc.rb#50
  def task_with_desc?(node); end
end

# source://rubocop-rake//lib/rubocop/cop/rake/desc.rb#34
RuboCop::Cop::Rake::Desc::MSG = T.let(T.unsafe(nil), String)

# If namespaces are defined with the same name, Rake executes the both namespaces
# in definition order.
# It is redundant. You should squash them into one definition.
# This cop detects it.
#
# @example
#   # bad
#   namespace :foo do
#   task :bar do
#   end
#   end
#   namespace :foo do
#   task :hoge do
#   end
#   end
#
#   # good
#   namespace :foo do
#   task :bar do
#   end
#   task :hoge do
#   end
#   end
class RuboCop::Cop::Rake::DuplicateNamespace < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::Rake::Helper::OnNamespace

  # @return [DuplicateNamespace] a new instance of DuplicateNamespace
  #
  # source://rubocop-rake//lib/rubocop/cop/rake/duplicate_namespace.rb#35
  def initialize(*_arg0); end

  # source://rubocop-rake//lib/rubocop/cop/rake/duplicate_namespace.rb#67
  def message_for_dup(previous:, current:, namespace:); end

  # source://rubocop-rake//lib/rubocop/cop/rake/duplicate_namespace.rb#53
  def namespaces(node); end

  # source://rubocop-rake//lib/rubocop/cop/rake/duplicate_namespace.rb#40
  def on_namespace(node); end

  # source://rubocop-rake//lib/rubocop/cop/rake/duplicate_namespace.rb#76
  def source_location(node); end
end

# source://rubocop-rake//lib/rubocop/cop/rake/duplicate_namespace.rb#33
RuboCop::Cop::Rake::DuplicateNamespace::MSG = T.let(T.unsafe(nil), String)

# If tasks are defined with the same name, Rake executes the both tasks
# in definition order.
# It is misleading sometimes. You should squash them into one definition.
# This cop detects it.
#
# @example
#   # bad
#   task :foo do
#   p 'foo 1'
#   end
#   task :foo do
#   p 'foo 2'
#   end
#
#   # good
#   task :foo do
#   p 'foo 1'
#   p 'foo 2'
#   end
class RuboCop::Cop::Rake::DuplicateTask < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::Rake::Helper::OnTask

  # @return [DuplicateTask] a new instance of DuplicateTask
  #
  # source://rubocop-rake//lib/rubocop/cop/rake/duplicate_task.rb#31
  def initialize(*_arg0); end

  # source://rubocop-rake//lib/rubocop/cop/rake/duplicate_task.rb#66
  def message_for_dup(previous:, current:, task_name:); end

  # source://rubocop-rake//lib/rubocop/cop/rake/duplicate_task.rb#52
  def namespaces(node); end

  # source://rubocop-rake//lib/rubocop/cop/rake/duplicate_task.rb#36
  def on_task(node); end

  # source://rubocop-rake//lib/rubocop/cop/rake/duplicate_task.rb#75
  def source_location(node); end
end

# source://rubocop-rake//lib/rubocop/cop/rake/duplicate_task.rb#29
RuboCop::Cop::Rake::DuplicateTask::MSG = T.let(T.unsafe(nil), String)

module RuboCop::Cop::Rake::Helper; end

module RuboCop::Cop::Rake::Helper::ClassDefinition
  extend ::RuboCop::AST::NodePattern::Macros
  extend ::RuboCop::Cop::Rake::Helper::ClassDefinition

  # source://rubocop-rake//lib/rubocop/cop/rake/helper/class_definition.rb#11
  def class_definition?(param0 = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://rubocop-rake//lib/rubocop/cop/rake/helper/class_definition.rb#22
  def in_class_definition?(node); end
end

module RuboCop::Cop::Rake::Helper::OnNamespace
  extend ::RuboCop::AST::NodePattern::Macros

  # source://rubocop-rake//lib/rubocop/cop/rake/helper/on_namespace.rb#10
  def namespace?(param0 = T.unsafe(nil)); end

  # source://rubocop-rake//lib/rubocop/cop/rake/helper/on_namespace.rb#14
  def on_send(node); end
end

module RuboCop::Cop::Rake::Helper::OnTask
  extend ::RuboCop::AST::NodePattern::Macros

  # source://rubocop-rake//lib/rubocop/cop/rake/helper/on_task.rb#14
  def on_send(node); end

  # source://rubocop-rake//lib/rubocop/cop/rake/helper/on_task.rb#10
  def task?(param0 = T.unsafe(nil)); end
end

module RuboCop::Cop::Rake::Helper::TaskDefinition
  extend ::RuboCop::AST::NodePattern::Macros
  extend ::RuboCop::Cop::Rake::Helper::TaskDefinition

  # @return [Boolean]
  #
  # source://rubocop-rake//lib/rubocop/cop/rake/helper/task_definition.rb#19
  def in_task_or_namespace?(node); end

  # source://rubocop-rake//lib/rubocop/cop/rake/helper/task_definition.rb#11
  def task_or_namespace?(param0 = T.unsafe(nil)); end
end

module RuboCop::Cop::Rake::Helper::TaskName
  extend ::RuboCop::Cop::Rake::Helper::TaskName

  # source://rubocop-rake//lib/rubocop/cop/rake/helper/task_name.rb#10
  def task_name(node); end
end

# This cop detects method definition in a task or namespace,
# because it is defined to the top level.
# It is confusing because the scope looks in the task or namespace,
# but actually it is defined to the top level.
#
# @example
#   # bad
#   task :foo do
#   def helper_method
#   do_something
#   end
#   end
#
#   # bad
#   namespace :foo do
#   def helper_method
#   do_something
#   end
#   end
#
#   # good - It is also defined to the top level,
#   #        but it looks expected behavior.
#   def helper_method
#   end
#   task :foo do
#   end
class RuboCop::Cop::Rake::MethodDefinitionInTask < ::RuboCop::Cop::Base
  # source://rubocop-rake//lib/rubocop/cop/rake/method_definition_in_task.rb#36
  def on_def(node); end

  # source://rubocop-rake//lib/rubocop/cop/rake/method_definition_in_task.rb#36
  def on_defs(node); end
end

# source://rubocop-rake//lib/rubocop/cop/rake/method_definition_in_task.rb#34
RuboCop::Cop::Rake::MethodDefinitionInTask::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Error < ::StandardError; end
class RuboCop::IncorrectCopNameError < ::StandardError; end

# source://rubocop/1.41.1/lib/rubocop/ast_aliases.rb#5
RuboCop::NodePattern = RuboCop::AST::NodePattern

class RuboCop::OptionArgumentError < ::StandardError; end
module RuboCop::OptionsHelp; end

# source://rubocop/1.41.1/lib/rubocop/options.rb#470
RuboCop::OptionsHelp::FORMATTER_OPTION_LIST = T.let(T.unsafe(nil), Array)

# source://rubocop/1.41.1/lib/rubocop/options.rb#469
RuboCop::OptionsHelp::MAX_EXCL = T.let(T.unsafe(nil), String)

# source://rubocop/1.41.1/lib/rubocop/options.rb#472
RuboCop::OptionsHelp::TEXT = T.let(T.unsafe(nil), Hash)

# source://rubocop/1.41.1/lib/rubocop/ast_aliases.rb#6
RuboCop::ProcessedSource = RuboCop::AST::ProcessedSource

module RuboCop::Rake; end

# source://rubocop-rake//lib/rubocop/rake.rb#12
RuboCop::Rake::CONFIG = T.let(T.unsafe(nil), Hash)

# source://rubocop-rake//lib/rubocop/rake.rb#11
RuboCop::Rake::CONFIG_DEFAULT = T.let(T.unsafe(nil), Pathname)

class RuboCop::Rake::Error < ::StandardError; end

# Because RuboCop doesn't yet support plugins, we have to monkey patch in a
# bit of our configuration.
module RuboCop::Rake::Inject
  class << self
    # source://rubocop-rake//lib/rubocop/rake/inject.rb#10
    def defaults!; end
  end
end

# source://rubocop-rake//lib/rubocop/rake.rb#10
RuboCop::Rake::PROJECT_ROOT = T.let(T.unsafe(nil), Pathname)

# source://rubocop-rake//lib/rubocop/rake/version.rb#5
RuboCop::Rake::VERSION = T.let(T.unsafe(nil), String)

# source://rubocop/1.41.1/lib/rubocop/ast_aliases.rb#7
RuboCop::Token = RuboCop::AST::Token

class RuboCop::ValidationError < ::RuboCop::Error; end
class RuboCop::Warning < ::StandardError; end
