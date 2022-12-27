# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `aasm` gem.
# Please instead update this file by running `bin/tapioca gem aasm`.

module AASM
  include ::AASM::Persistence::PlainPersistence

  mixes_in_class_methods ::AASM::ClassMethods

  # this is the entry point for all instance-level access to AASM
  #
  # source://aasm//lib/aasm/aasm.rb#68
  def aasm(name = T.unsafe(nil)); end

  private

  # source://aasm//lib/aasm/aasm.rb#196
  def aasm_failed(state_machine_name, event_name, old_state, failures = T.unsafe(nil)); end

  # source://aasm//lib/aasm/aasm.rb#97
  def aasm_fire_event(state_machine_name, event_name, options, *args, &block); end

  # source://aasm//lib/aasm/aasm.rb#145
  def aasm_fired(state_machine_name, event, old_state, new_state_name, options, *args); end

  # source://aasm//lib/aasm/aasm.rb#125
  def fire_default_callbacks(event, *processed_args); end

  # source://aasm//lib/aasm/aasm.rb#140
  def fire_exit_callbacks(old_state, *processed_args); end

  # source://aasm//lib/aasm/aasm.rb#76
  def initialize_dup(other); end

  # Takes args and a from state and removes the first
  # element from args if it is a valid to_state for
  # the event given the from_state
  #
  # source://aasm//lib/aasm/aasm.rb#86
  def process_args(event, from_state, *args); end

  class << self
    # provide a state machine for the including class
    # make sure to load class methods as well
    # initialize persistence for the state machine
    #
    # source://aasm//lib/aasm/aasm.rb#8
    def included(base); end
  end
end

# Persistence
class AASM::Base
  # @return [Base] a new instance of Base
  #
  # source://aasm//lib/aasm/base.rb#8
  def initialize(klass, name, state_machine, options = T.unsafe(nil), &block); end

  # source://aasm//lib/aasm/base.rb#161
  def after_all_events(*callbacks, &block); end

  # source://aasm//lib/aasm/base.rb#149
  def after_all_transactions(*callbacks, &block); end

  # source://aasm//lib/aasm/base.rb#145
  def after_all_transitions(*callbacks, &block); end

  # This method is both a getter and a setter
  #
  # source://aasm//lib/aasm/base.rb#66
  def attribute_name(column_name = T.unsafe(nil)); end

  # source://aasm//lib/aasm/base.rb#157
  def before_all_events(*callbacks, &block); end

  # source://aasm//lib/aasm/base.rb#153
  def before_all_transactions(*callbacks, &block); end

  # source://aasm//lib/aasm/base.rb#169
  def ensure_on_all_events(*callbacks, &block); end

  # source://aasm//lib/aasm/base.rb#165
  def error_on_all_events(*callbacks, &block); end

  # define an event
  #
  # source://aasm//lib/aasm/base.rb#111
  def event(name, options = T.unsafe(nil), &block); end

  # source://aasm//lib/aasm/base.rb#177
  def events; end

  # source://aasm//lib/aasm/base.rb#190
  def from_states_for_state(state, options = T.unsafe(nil)); end

  # aasm.event(:event_name).human?
  #
  # source://aasm//lib/aasm/base.rb#182
  def human_event_name(event); end

  # source://aasm//lib/aasm/base.rb#75
  def initial_state(new_initial_state = T.unsafe(nil)); end

  # Returns the value of attribute klass.
  #
  # source://aasm//lib/aasm/base.rb#6
  def klass; end

  # make sure to create a (named) scope for each state
  #
  # source://aasm//lib/aasm/persistence/base.rb#60
  def state(*args); end

  # Returns the value of attribute state_machine.
  #
  # source://aasm//lib/aasm/base.rb#6
  def state_machine; end

  # make sure to create a (named) scope for each state
  #
  # source://aasm//lib/aasm/persistence/base.rb#60
  def state_with_scope(*args); end

  # define a state
  # args
  # [0] state
  # [1] options (or nil)
  # or
  # [0] state
  # [1..] state
  #
  # source://aasm//lib/aasm/base.rb#90
  def state_without_scope(*args); end

  # source://aasm//lib/aasm/base.rb#173
  def states; end

  # source://aasm//lib/aasm/base.rb#186
  def states_for_select; end

  private

  # source://aasm//lib/aasm/base.rb#231
  def apply_ruby2_keyword(klass, sym); end

  # source://aasm//lib/aasm/base.rb#205
  def configure(key, default_value); end

  # source://aasm//lib/aasm/persistence/base.rb#75
  def create_scope(name); end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/persistence/base.rb#71
  def create_scope?(name); end

  # source://aasm//lib/aasm/persistence/base.rb#79
  def create_scopes(name); end

  # source://aasm//lib/aasm/base.rb#201
  def default_column; end

  # source://aasm//lib/aasm/base.rb#254
  def interpret_state_args(args); end

  # source://aasm//lib/aasm/base.rb#246
  def namespace; end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/base.rb#242
  def namespace?; end

  # source://aasm//lib/aasm/base.rb#213
  def safely_define_method(klass, method_name, method_definition); end

  # source://aasm//lib/aasm/base.rb#290
  def setup_no_direct_assignment(aasm_name); end

  # source://aasm//lib/aasm/base.rb#279
  def setup_timestamps(aasm_name); end

  # source://aasm//lib/aasm/base.rb#264
  def skip_instance_level_validation(event, name, aasm_name, klass); end
end

module AASM::ClassMethods
  # this is the entry point for all state and event definitions
  #
  # @raise [ArgumentError]
  #
  # source://aasm//lib/aasm/aasm.rb#28
  def aasm(*args, &block); end

  # make sure inheritance (aka subclassing) works with AASM
  #
  # source://aasm//lib/aasm/aasm.rb#21
  def inherited(base); end
end

class AASM::Configuration
  # for all persistence layers: which database column to use?
  #
  # source://aasm//lib/aasm/configuration.rb#4
  def column; end

  # for all persistence layers: which database column to use?
  #
  # source://aasm//lib/aasm/configuration.rb#4
  def column=(_arg0); end

  # for all persistence layers: create named scopes for each state
  #
  # source://aasm//lib/aasm/configuration.rb#10
  def create_scopes; end

  # for all persistence layers: create named scopes for each state
  #
  # source://aasm//lib/aasm/configuration.rb#10
  def create_scopes=(_arg0); end

  # Returns the value of attribute enum.
  #
  # source://aasm//lib/aasm/configuration.rb#36
  def enum; end

  # Sets the attribute enum
  #
  # @param value the value to set the attribute enum to.
  #
  # source://aasm//lib/aasm/configuration.rb#36
  def enum=(_arg0); end

  # Configure a logger, with default being a Logger to STDERR
  #
  # source://aasm//lib/aasm/configuration.rb#42
  def logger; end

  # Configure a logger, with default being a Logger to STDERR
  #
  # source://aasm//lib/aasm/configuration.rb#42
  def logger=(_arg0); end

  # namespace reader methods and constants
  #
  # source://aasm//lib/aasm/configuration.rb#39
  def namespace; end

  # namespace reader methods and constants
  #
  # source://aasm//lib/aasm/configuration.rb#39
  def namespace=(_arg0); end

  # forbid direct assignment in aasm_state column (in ActiveRecord)
  #
  # source://aasm//lib/aasm/configuration.rb#31
  def no_direct_assignment; end

  # forbid direct assignment in aasm_state column (in ActiveRecord)
  #
  # source://aasm//lib/aasm/configuration.rb#31
  def no_direct_assignment=(_arg0); end

  # for ActiveRecord: use pessimistic locking
  #
  # source://aasm//lib/aasm/configuration.rb#25
  def requires_lock; end

  # for ActiveRecord: use pessimistic locking
  #
  # source://aasm//lib/aasm/configuration.rb#25
  def requires_lock=(_arg0); end

  # for ActiveRecord: use requires_new for nested transactions?
  #
  # source://aasm//lib/aasm/configuration.rb#22
  def requires_new_transaction; end

  # for ActiveRecord: use requires_new for nested transactions?
  #
  # source://aasm//lib/aasm/configuration.rb#22
  def requires_new_transaction=(_arg0); end

  # for ActiveRecord: store the new state even if the model is invalid and return true
  #
  # source://aasm//lib/aasm/configuration.rb#16
  def skip_validation_on_save; end

  # for ActiveRecord: store the new state even if the model is invalid and return true
  #
  # source://aasm//lib/aasm/configuration.rb#16
  def skip_validation_on_save=(_arg0); end

  # automatically set `"#{state_name}_at" = ::Time.now` on state changes
  #
  # source://aasm//lib/aasm/configuration.rb#28
  def timestamps; end

  # automatically set `"#{state_name}_at" = ::Time.now` on state changes
  #
  # source://aasm//lib/aasm/configuration.rb#28
  def timestamps=(_arg0); end

  # for ActiveRecord: use transactions
  #
  # source://aasm//lib/aasm/configuration.rb#19
  def use_transactions; end

  # for ActiveRecord: use transactions
  #
  # source://aasm//lib/aasm/configuration.rb#19
  def use_transactions=(_arg0); end

  # for ActiveRecord: when the model is invalid, true -> raise, false -> return false
  #
  # source://aasm//lib/aasm/configuration.rb#13
  def whiny_persistence; end

  # for ActiveRecord: when the model is invalid, true -> raise, false -> return false
  #
  # source://aasm//lib/aasm/configuration.rb#13
  def whiny_persistence=(_arg0); end

  # let's cry if the transition is invalid
  #
  # source://aasm//lib/aasm/configuration.rb#7
  def whiny_transitions; end

  # let's cry if the transition is invalid
  #
  # source://aasm//lib/aasm/configuration.rb#7
  def whiny_transitions=(_arg0); end

  # allow a AASM::Base sub-class to be used for state machine
  #
  # source://aasm//lib/aasm/configuration.rb#34
  def with_klass; end

  # allow a AASM::Base sub-class to be used for state machine
  #
  # source://aasm//lib/aasm/configuration.rb#34
  def with_klass=(_arg0); end

  class << self
    # Returns the value of attribute hide_warnings.
    #
    # source://aasm//lib/aasm/configuration.rb#45
    def hide_warnings; end

    # Sets the attribute hide_warnings
    #
    # @param value the value to set the attribute hide_warnings to.
    #
    # source://aasm//lib/aasm/configuration.rb#45
    def hide_warnings=(_arg0); end
  end
end

module AASM::Core; end

class AASM::Core::Event
  include ::AASM::DslHelper

  # @return [Event] a new instance of Event
  #
  # source://aasm//lib/aasm/core/event.rb#9
  def initialize(name, state_machine, options = T.unsafe(nil), &block); end

  # source://aasm//lib/aasm/core/event.rb#87
  def ==(event); end

  # Returns the value of attribute default_display_name.
  #
  # source://aasm//lib/aasm/core/event.rb#7
  def default_display_name; end

  # source://aasm//lib/aasm/core/event.rb#110
  def failed_callbacks; end

  # source://aasm//lib/aasm/core/event.rb#50
  def fire(obj, options = T.unsafe(nil), to_state = T.unsafe(nil), *args); end

  # source://aasm//lib/aasm/core/event.rb#74
  def fire_callbacks(callback_name, record, *args); end

  # source://aasm//lib/aasm/core/event.rb#70
  def fire_global_callbacks(callback_name, record, *args); end

  # source://aasm//lib/aasm/core/event.rb#80
  def fire_transition_callbacks(obj, *args); end

  # a neutered version of fire - it doesn't actually fire the event, it just
  # executes the transition guards to determine if a transition is even
  # an option given current conditions.
  #
  # @return [Boolean]
  #
  # source://aasm//lib/aasm/core/event.rb#46
  def may_fire?(obj, to_state = T.unsafe(nil), *args); end

  # Returns the value of attribute name.
  #
  # source://aasm//lib/aasm/core/event.rb#7
  def name; end

  # Returns the value of attribute options.
  #
  # source://aasm//lib/aasm/core/event.rb#7
  def options; end

  # Returns the value of attribute state_machine.
  #
  # source://aasm//lib/aasm/core/event.rb#7
  def state_machine; end

  # source://aasm//lib/aasm/core/event.rb#114
  def to_s; end

  # DSL interface
  #
  # source://aasm//lib/aasm/core/event.rb#96
  def transitions(definitions = T.unsafe(nil), &block); end

  # source://aasm//lib/aasm/core/event.rb#58
  def transitions_from_state(state); end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/core/event.rb#54
  def transitions_from_state?(state); end

  # source://aasm//lib/aasm/core/event.rb#66
  def transitions_to_state(state); end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/core/event.rb#62
  def transitions_to_state?(state); end

  private

  # source://aasm//lib/aasm/core/event.rb#132
  def _fire(obj, options = T.unsafe(nil), to_state = T.unsafe(nil), *args); end

  # source://aasm//lib/aasm/core/event.rb#120
  def attach_event_guards(definitions); end

  # source://aasm//lib/aasm/core/event.rb#167
  def clear_failed_callbacks; end

  # called internally by Ruby 1.9 after clone()
  #
  # source://aasm//lib/aasm/core/event.rb#34
  def initialize_copy(orig); end

  # source://aasm//lib/aasm/core/event.rb#172
  def invoke_callbacks(code, record, args); end
end

# main invoker class which encapsulates the logic
# for invoking literal-based, proc-based, class-based
# and array-based callbacks for different entities.
class AASM::Core::Invoker
  # Initialize a new invoker instance.
  # NOTE that invoker must be used per-subject/record
  #      (one instance per subject/record)
  #
  # ==Options:
  #
  # +subject+ - invoking subject, may be Proc,
  #             Class, String, Symbol or Array
  # +record+  - invoking record
  # +args+    - arguments which will be passed to the callback
  #
  # @return [Invoker] a new instance of Invoker
  #
  # source://aasm//lib/aasm/core/invoker.rb#24
  def initialize(subject, record, args); end

  # source://aasm//lib/aasm/core/invoker.rb#83
  def invoke; end

  # Change default return value of #invoke method
  # if none of invokers processed the request.
  #
  # The default return value is #DEFAULT_RETURN_VALUE
  #
  # ==Options:
  #
  # +value+ - default return value for #invoke method
  #
  # source://aasm//lib/aasm/core/invoker.rb#72
  def with_default_return_value(value); end

  # Collect failures to a specified buffer
  #
  # ==Options:
  #
  # +failures+ - failures buffer to collect failures
  #
  # source://aasm//lib/aasm/core/invoker.rb#57
  def with_failures(failures); end

  # Pass additional options to concrete invoker
  #
  # ==Options:
  #
  # +options+ - hash of options which will be passed to
  #             concrete invokers
  #
  # ==Example:
  #
  # with_options(guard: proc {...})
  #
  # source://aasm//lib/aasm/core/invoker.rb#45
  def with_options(options); end

  private

  # Returns the value of attribute args.
  #
  # source://aasm//lib/aasm/core/invoker.rb#94
  def args; end

  # source://aasm//lib/aasm/core/invoker.rb#116
  def class_invoker; end

  # Returns the value of attribute default_return_value.
  #
  # source://aasm//lib/aasm/core/invoker.rb#94
  def default_return_value; end

  # Returns the value of attribute failures.
  #
  # source://aasm//lib/aasm/core/invoker.rb#94
  def failures; end

  # source://aasm//lib/aasm/core/invoker.rb#97
  def invoke_array; end

  # source://aasm//lib/aasm/core/invoker.rb#122
  def literal_invoker; end

  # Returns the value of attribute options.
  #
  # source://aasm//lib/aasm/core/invoker.rb#94
  def options; end

  # source://aasm//lib/aasm/core/invoker.rb#110
  def proc_invoker; end

  # Returns the value of attribute record.
  #
  # source://aasm//lib/aasm/core/invoker.rb#94
  def record; end

  # source://aasm//lib/aasm/core/invoker.rb#103
  def sub_invoke(new_subject); end

  # Returns the value of attribute subject.
  #
  # source://aasm//lib/aasm/core/invoker.rb#94
  def subject; end
end

# source://aasm//lib/aasm/core/invoker.rb#10
AASM::Core::Invoker::DEFAULT_RETURN_VALUE = T.let(T.unsafe(nil), TrueClass)

module AASM::Core::Invokers; end

# Base concrete invoker class which contain basic
# invoking and logging definitions
class AASM::Core::Invokers::BaseInvoker
  # Initialize a new concrete invoker instance.
  # NOTE that concrete invoker must be used per-subject/record
  #      (one instance per subject/record)
  #
  # ==Options:
  #
  # +subject+ - invoking subject comparable with this invoker
  # +record+  - invoking record
  # +args+    - arguments which will be passed to the callback
  #
  # @return [BaseInvoker] a new instance of BaseInvoker
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#23
  def initialize(subject, record, args); end

  # Returns the value of attribute args.
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#10
  def args; end

  # Returns the value of attribute failures.
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#10
  def failures; end

  # Execute concrete invoker, log the error and return result
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#46
  def invoke; end

  # Execute concrete invoker
  #
  # @raise [NoMethodError]
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#69
  def invoke_subject; end

  # Log failed invoking
  #
  # @raise [NoMethodError]
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#62
  def log_failure; end

  # Check if concrete invoker may be invoked for a specified subject
  #
  # @raise [NoMethodError]
  # @return [Boolean]
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#55
  def may_invoke?; end

  # Returns the value of attribute record.
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#10
  def record; end

  # Returns the value of attribute result.
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#10
  def result; end

  # Returns the value of attribute subject.
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#10
  def subject; end

  # Collect failures to a specified buffer
  #
  # ==Options:
  #
  # +failures+ - failures buffer to collect failures
  #
  # source://aasm//lib/aasm/core/invokers/base_invoker.rb#38
  def with_failures(failures_buffer); end
end

# Class invoker which allows to use classes which respond to #call
# to be used as state/event/transition callbacks.
class AASM::Core::Invokers::ClassInvoker < ::AASM::Core::Invokers::BaseInvoker
  # source://aasm//lib/aasm/core/invokers/class_invoker.rb#19
  def invoke_subject; end

  # source://aasm//lib/aasm/core/invokers/class_invoker.rb#14
  def log_failure; end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/core/invokers/class_invoker.rb#10
  def may_invoke?; end

  private

  # source://aasm//lib/aasm/core/invokers/class_invoker.rb#33
  def instance; end

  # source://aasm//lib/aasm/core/invokers/class_invoker.rb#29
  def log_method_info; end

  # source://aasm//lib/aasm/core/invokers/class_invoker.rb#25
  def log_source_location; end

  # source://aasm//lib/aasm/core/invokers/class_invoker.rb#38
  def retrieve_instance; end

  # source://aasm//lib/aasm/core/invokers/class_invoker.rb#46
  def subject_arity; end
end

# Literal invoker which allows to use strings or symbols to call
# record methods as state/event/transition callbacks.
class AASM::Core::Invokers::LiteralInvoker < ::AASM::Core::Invokers::BaseInvoker
  # source://aasm//lib/aasm/core/invokers/literal_invoker.rb#18
  def invoke_subject; end

  # source://aasm//lib/aasm/core/invokers/literal_invoker.rb#14
  def log_failure; end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/core/invokers/literal_invoker.rb#10
  def may_invoke?; end

  private

  # source://aasm//lib/aasm/core/invokers/literal_invoker.rb#29
  def exec_subject; end

  # source://aasm//lib/aasm/core/invokers/literal_invoker.rb#37
  def record_error; end

  # source://aasm//lib/aasm/core/invokers/literal_invoker.rb#24
  def subject_arity; end
end

# Proc invoker which allows to use Procs as
# state/event/transition callbacks.
class AASM::Core::Invokers::ProcInvoker < ::AASM::Core::Invokers::BaseInvoker
  # source://aasm//lib/aasm/core/invokers/proc_invoker.rb#19
  def invoke_subject; end

  # source://aasm//lib/aasm/core/invokers/proc_invoker.rb#14
  def log_failure; end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/core/invokers/proc_invoker.rb#10
  def may_invoke?; end

  private

  # source://aasm//lib/aasm/core/invokers/proc_invoker.rb#34
  def exec_proc(parameters_size); end

  # source://aasm//lib/aasm/core/invokers/proc_invoker.rb#45
  def log_proc_info; end

  # source://aasm//lib/aasm/core/invokers/proc_invoker.rb#41
  def log_source_location; end

  # source://aasm//lib/aasm/core/invokers/proc_invoker.rb#49
  def parameters_to_arity; end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/core/invokers/proc_invoker.rb#29
  def support_parameters?; end
end

class AASM::Core::State
  # @return [State] a new instance of State
  #
  # source://aasm//lib/aasm/core/state.rb#7
  def initialize(name, klass, state_machine, options = T.unsafe(nil)); end

  # source://aasm//lib/aasm/core/state.rb#36
  def <=>(state); end

  # source://aasm//lib/aasm/core/state.rb#28
  def ==(state); end

  # Returns the value of attribute default_display_name.
  #
  # source://aasm//lib/aasm/core/state.rb#5
  def default_display_name; end

  # source://aasm//lib/aasm/core/state.rb#57
  def display_name; end

  # source://aasm//lib/aasm/core/state.rb#48
  def fire_callbacks(action, record, *args); end

  # source://aasm//lib/aasm/core/state.rb#72
  def for_select; end

  # source://aasm//lib/aasm/core/state.rb#67
  def human_name; end

  # source://aasm//lib/aasm/core/state.rb#67
  def localized_name; end

  # Returns the value of attribute name.
  #
  # source://aasm//lib/aasm/core/state.rb#5
  def name; end

  # Returns the value of attribute options.
  #
  # source://aasm//lib/aasm/core/state.rb#5
  def options; end

  # Returns the value of attribute state_machine.
  #
  # source://aasm//lib/aasm/core/state.rb#5
  def state_machine; end

  # source://aasm//lib/aasm/core/state.rb#44
  def to_s; end

  private

  # source://aasm//lib/aasm/core/state.rb#86
  def _fire_callbacks(action, record, args); end

  # called internally by Ruby 1.9 after clone()
  #
  # source://aasm//lib/aasm/core/state.rb#16
  def initialize_copy(orig); end

  # source://aasm//lib/aasm/core/state.rb#78
  def update(options = T.unsafe(nil)); end
end

class AASM::Core::Transition
  include ::AASM::DslHelper

  # @return [Transition] a new instance of Transition
  #
  # source://aasm//lib/aasm/core/transition.rb#10
  def initialize(event, opts, &block); end

  # source://aasm//lib/aasm/core/transition.rb#52
  def ==(obj); end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/core/transition.rb#42
  def allowed?(obj, *args); end

  # Returns the value of attribute event.
  #
  # source://aasm//lib/aasm/core/transition.rb#7
  def event; end

  # source://aasm//lib/aasm/core/transition.rb#47
  def execute(obj, *args); end

  # Returns the value of attribute failures.
  #
  # source://aasm//lib/aasm/core/transition.rb#7
  def failures; end

  # Returns the value of attribute from.
  #
  # source://aasm//lib/aasm/core/transition.rb#7
  def from; end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/core/transition.rb#56
  def from?(value); end

  # source://aasm//lib/aasm/core/transition.rb#60
  def invoke_success_callbacks(obj, *args); end

  # Returns the value of attribute opts.
  #
  # source://aasm//lib/aasm/core/transition.rb#7
  def options; end

  # Returns the value of attribute opts.
  #
  # source://aasm//lib/aasm/core/transition.rb#7
  def opts; end

  # Returns the value of attribute to.
  #
  # source://aasm//lib/aasm/core/transition.rb#7
  def to; end

  private

  # source://aasm//lib/aasm/core/transition.rb#78
  def _fire_callbacks(code, record, args); end

  # called internally by Ruby 1.9 after clone()
  #
  # source://aasm//lib/aasm/core/transition.rb#34
  def initialize_copy(orig); end

  # source://aasm//lib/aasm/core/transition.rb#66
  def invoke_callbacks_compatible_with_guard(code, record, args, options = T.unsafe(nil)); end
end

module AASM::DslHelper
  # source://aasm//lib/aasm/dsl_helper.rb#25
  def add_options_from_dsl(options, valid_keys, &block); end
end

class AASM::DslHelper::Proxy
  # @return [Proxy] a new instance of Proxy
  #
  # source://aasm//lib/aasm/dsl_helper.rb#7
  def initialize(options, valid_keys, source); end

  # source://aasm//lib/aasm/dsl_helper.rb#14
  def method_missing(name, *args, &block); end

  # Returns the value of attribute options.
  #
  # source://aasm//lib/aasm/dsl_helper.rb#5
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://aasm//lib/aasm/dsl_helper.rb#5
  def options=(_arg0); end
end

class AASM::InstanceBase
  # instance of the class including AASM, name of the state machine
  #
  # @return [InstanceBase] a new instance of InstanceBase
  #
  # source://aasm//lib/aasm/instance_base.rb#5
  def initialize(instance, name = T.unsafe(nil)); end

  # Returns the value of attribute current_event.
  #
  # source://aasm//lib/aasm/instance_base.rb#3
  def current_event; end

  # Sets the attribute current_event
  #
  # @param value the value to set the attribute current_event to.
  #
  # source://aasm//lib/aasm/instance_base.rb#3
  def current_event=(_arg0); end

  # source://aasm//lib/aasm/instance_base.rb#10
  def current_state; end

  # source://aasm//lib/aasm/instance_base.rb#14
  def current_state=(state); end

  # source://aasm//lib/aasm/instance_base.rb#97
  def determine_state_name(state); end

  # source://aasm//lib/aasm/instance_base.rb#18
  def enter_initial_state; end

  # source://aasm//lib/aasm/instance_base.rb#60
  def events(options = T.unsafe(nil), *args); end

  # source://aasm//lib/aasm/instance_base.rb#116
  def fire(event_name, *args, &block); end

  # source://aasm//lib/aasm/instance_base.rb#122
  def fire!(event_name, *args, &block); end

  # Returns the value of attribute from_state.
  #
  # source://aasm//lib/aasm/instance_base.rb#3
  def from_state; end

  # Sets the attribute from_state
  #
  # @param value the value to set the attribute from_state to.
  #
  # source://aasm//lib/aasm/instance_base.rb#3
  def from_state=(_arg0); end

  # source://aasm//lib/aasm/instance_base.rb#29
  def human_state; end

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/instance_base.rb#108
  def may_fire_event?(name, *args); end

  # source://aasm//lib/aasm/instance_base.rb#80
  def permitted_transitions; end

  # source://aasm//lib/aasm/instance_base.rb#128
  def set_current_state_with_persistence(state); end

  # @raise [AASM::UndefinedState]
  #
  # source://aasm//lib/aasm/instance_base.rb#91
  def state_object_for_name(name); end

  # source://aasm//lib/aasm/instance_base.rb#33
  def states(options = T.unsafe(nil), *args); end

  # Returns the value of attribute to_state.
  #
  # source://aasm//lib/aasm/instance_base.rb#3
  def to_state; end

  # Sets the attribute to_state
  #
  # @param value the value to set the attribute to_state to.
  #
  # source://aasm//lib/aasm/instance_base.rb#3
  def to_state=(_arg0); end

  private

  # @raise [AASM::UndefinedEvent]
  # @return [Boolean]
  #
  # source://aasm//lib/aasm/instance_base.rb#136
  def event_exists?(event_name, bang = T.unsafe(nil)); end
end

class AASM::InvalidTransition < ::RuntimeError
  # @return [InvalidTransition] a new instance of InvalidTransition
  #
  # source://aasm//lib/aasm/errors.rb#8
  def initialize(object, event_name, state_machine_name, failures = T.unsafe(nil)); end

  # Returns the value of attribute event_name.
  #
  # source://aasm//lib/aasm/errors.rb#6
  def event_name; end

  # Returns the value of attribute failures.
  #
  # source://aasm//lib/aasm/errors.rb#6
  def failures; end

  # Returns the value of attribute object.
  #
  # source://aasm//lib/aasm/errors.rb#6
  def object; end

  # Returns the value of attribute originating_state.
  #
  # source://aasm//lib/aasm/errors.rb#6
  def originating_state; end

  # source://aasm//lib/aasm/errors.rb#14
  def reasoning; end

  # Returns the value of attribute state_machine_name.
  #
  # source://aasm//lib/aasm/errors.rb#6
  def state_machine_name; end
end

class AASM::Localizer
  # source://aasm//lib/aasm/localizer.rb#3
  def human_event_name(klass, event); end

  # source://aasm//lib/aasm/localizer.rb#11
  def human_state_name(klass, state); end

  private

  # source://aasm//lib/aasm/localizer.rb#48
  def ancestors_list(klass); end

  # Can use better arguement name
  #
  # source://aasm//lib/aasm/localizer.rb#56
  def default_display_name(object); end

  # added for rails < 3.0.3 compatibility
  #
  # source://aasm//lib/aasm/localizer.rb#44
  def i18n_klass(klass); end

  # added for rails 2.x compatibility
  #
  # source://aasm//lib/aasm/localizer.rb#39
  def i18n_scope(klass); end

  # source://aasm//lib/aasm/localizer.rb#22
  def item_for(klass, state, ancestor, options = T.unsafe(nil)); end

  # source://aasm//lib/aasm/localizer.rb#27
  def translate_queue(checklist); end
end

# this is used internally as an argument default value to represent no value
#
# source://aasm//lib/aasm/aasm.rb#3
AASM::NO_VALUE = T.let(T.unsafe(nil), Symbol)

class AASM::NoDirectAssignmentError < ::RuntimeError; end

module AASM::Persistence
  class << self
    # source://aasm//lib/aasm/persistence.rb#5
    def load_persistence(base); end

    private

    # source://aasm//lib/aasm/persistence.rb#44
    def capitalize(string_or_symbol); end

    # source://aasm//lib/aasm/persistence.rb#48
    def constantize(string); end

    # source://aasm//lib/aasm/persistence.rb#40
    def include_persistence(base, type); end

    # source://aasm//lib/aasm/persistence.rb#36
    def require_persistence(type); end
  end
end

module AASM::Persistence::Base
  mixes_in_class_methods ::AASM::Persistence::Base::ClassMethods

  # @return [Boolean]
  #
  # source://aasm//lib/aasm/persistence/base.rb#44
  def aasm_new_record?; end

  # Returns the value of the aasm.attribute_name - called from <tt>aasm.current_state</tt>
  #
  # If it's a new record, and the aasm state column is blank it returns the initial state
  # (example provided here for ActiveRecord, but it's true for Mongoid as well):
  #
  #   class Foo < ActiveRecord::Base
  #     include AASM
  #     aasm :column => :status do
  #       state :opened
  #       state :closed
  #     end
  #   end
  #
  #   foo = Foo.new
  #   foo.current_state # => :opened
  #   foo.close
  #   foo.current_state # => :closed
  #
  #   foo = Foo.find(1)
  #   foo.current_state # => :opened
  #   foo.aasm_state = nil
  #   foo.current_state # => nil
  #
  # NOTE: intended to be called from an event
  #
  # This allows for nil aasm states - be sure to add validation to your model
  #
  # source://aasm//lib/aasm/persistence/base.rb#35
  def aasm_read_state(name = T.unsafe(nil)); end

  class << self
    # source://aasm//lib/aasm/persistence/base.rb#5
    def included(base); end
  end
end

module AASM::Persistence::Base::ClassMethods
  # source://aasm//lib/aasm/persistence/base.rb#49
  def aasm_column(attribute_name = T.unsafe(nil)); end
end

module AASM::Persistence::PlainPersistence
  # may be overwritten by persistence mixins
  #
  # source://aasm//lib/aasm/persistence/plain_persistence.rb#6
  def aasm_read_state(name = T.unsafe(nil)); end

  # may be overwritten by persistence mixins
  #
  # source://aasm//lib/aasm/persistence/plain_persistence.rb#15
  def aasm_write_state(new_state, name = T.unsafe(nil)); end

  # may be overwritten by persistence mixins
  #
  # source://aasm//lib/aasm/persistence/plain_persistence.rb#20
  def aasm_write_state_without_persistence(new_state, name = T.unsafe(nil)); end
end

class AASM::StateMachine
  # @return [StateMachine] a new instance of StateMachine
  #
  # source://aasm//lib/aasm/state_machine.rb#7
  def initialize(name); end

  # source://aasm//lib/aasm/state_machine.rb#34
  def add_event(name, options, &block); end

  # source://aasm//lib/aasm/state_machine.rb#38
  def add_global_callbacks(name, *callbacks, &block); end

  # source://aasm//lib/aasm/state_machine.rb#25
  def add_state(state_name, klass, options); end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def config; end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def config=(_arg0); end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def events; end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def events=(_arg0); end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def global_callbacks; end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def global_callbacks=(_arg0); end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def initial_state; end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def initial_state=(_arg0); end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def name; end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def name=(_arg0); end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def states; end

  # the following four methods provide the storage of all state machines
  #
  # source://aasm//lib/aasm/state_machine.rb#5
  def states=(_arg0); end

  private

  # called internally by Ruby 1.9 after clone()
  #
  # source://aasm//lib/aasm/state_machine.rb#17
  def initialize_copy(orig); end

  # source://aasm//lib/aasm/state_machine.rb#48
  def set_initial_state(name, options); end
end

class AASM::StateMachineStore
  # @return [StateMachineStore] a new instance of StateMachineStore
  #
  # source://aasm//lib/aasm/state_machine_store.rb#43
  def initialize; end

  # source://aasm//lib/aasm/state_machine_store.rb#55
  def [](name); end

  # source://aasm//lib/aasm/state_machine_store.rb#47
  def clone; end

  # source://aasm//lib/aasm/state_machine_store.rb#60
  def keys; end

  # source://aasm//lib/aasm/state_machine_store.rb#55
  def machine(name); end

  # source://aasm//lib/aasm/state_machine_store.rb#60
  def machine_names; end

  # source://aasm//lib/aasm/state_machine_store.rb#65
  def register(name, machine, force = T.unsafe(nil)); end

  class << self
    # source://aasm//lib/aasm/state_machine_store.rb#27
    def [](klass, fallback = T.unsafe(nil)); end

    # do not overwrite existing state machines, which could have been created by
    # inheritance, see AASM::ClassMethods method inherited
    #
    # source://aasm//lib/aasm/state_machine_store.rb#13
    def []=(klass, overwrite = T.unsafe(nil), state_machine = T.unsafe(nil)); end

    # source://aasm//lib/aasm/state_machine_store.rb#27
    def fetch(klass, fallback = T.unsafe(nil)); end

    # do not overwrite existing state machines, which could have been created by
    # inheritance, see AASM::ClassMethods method inherited
    #
    # source://aasm//lib/aasm/state_machine_store.rb#13
    def register(klass, overwrite = T.unsafe(nil), state_machine = T.unsafe(nil)); end

    # source://aasm//lib/aasm/state_machine_store.rb#7
    def stores; end

    # source://aasm//lib/aasm/state_machine_store.rb#38
    def unregister(klass); end
  end
end

class AASM::UndefinedEvent < ::AASM::UndefinedState; end
class AASM::UndefinedState < ::RuntimeError; end
class AASM::UnknownStateMachineError < ::RuntimeError; end

# source://aasm//lib/aasm/version.rb#2
AASM::VERSION = T.let(T.unsafe(nil), String)
