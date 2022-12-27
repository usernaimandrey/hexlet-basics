# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sentry-rails` gem.
# Please instead update this file by running `bin/tapioca gem sentry-rails`.

class Sentry::Configuration
  include ::Sentry::CustomInspection
  include ::Sentry::LoggingHelper

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#250
  def initialize; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#22
  def app_dirs_pattern; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#22
  def app_dirs_pattern=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#29
  def async; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#297
  def async=(value); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#212
  def auto_session_tracking; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#212
  def auto_session_tracking=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#39
  def background_worker_threads; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#39
  def background_worker_threads=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#50
  def backtrace_cleanup_callback; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#50
  def backtrace_cleanup_callback=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#59
  def before_breadcrumb; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#332
  def before_breadcrumb=(value); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#73
  def before_send; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#326
  def before_send=(value); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#85
  def breadcrumbs_logger; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#313
  def breadcrumbs_logger=(logger); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#89
  def capture_exception_frame_locals; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#89
  def capture_exception_frame_locals=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#97
  def context_lines; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#97
  def context_lines=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#380
  def csp_report_uri; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#106
  def debug; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#106
  def debug=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#401
  def detect_release; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#110
  def dsn; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#291
  def dsn=(value); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#114
  def enabled_environments; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#114
  def enabled_environments=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#371
  def enabled_in_current_env?; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#101
  def environment; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#338
  def environment=(environment); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#414
  def error_messages; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#220
  def errors; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#358
  def exception_class_allowed?(exc); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#118
  def exclude_loggers; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#118
  def exclude_loggers=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#123
  def excluded_exceptions; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#123
  def excluded_exceptions=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#220
  def gem_specs; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#127
  def inspect_exception_causes_for_exclusion; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#127
  def inspect_exception_causes_for_exclusion=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#127
  def inspect_exception_causes_for_exclusion?; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#216
  def instrumenter; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#342
  def instrumenter=(instrumenter); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#134
  def linecache; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#134
  def linecache=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#139
  def logger; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#139
  def logger=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#93
  def max_breadcrumbs; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#93
  def max_breadcrumbs=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#144
  def project_root; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#144
  def project_root=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#148
  def propagate_traces; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#148
  def propagate_traces=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#152
  def rack_env_whitelist; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#152
  def rack_env_whitelist=(_arg0); end

  # Returns the value of attribute rails.
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#8
  def rails; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#157
  def release; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#157
  def release=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#352
  def sample_allowed?; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#162
  def sample_rate; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#162
  def sample_rate=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#208
  def send_client_reports; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#208
  def send_client_reports=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#175
  def send_default_pii; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#175
  def send_default_pii=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#166
  def send_modules; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#166
  def send_modules=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#346
  def sending_allowed?; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#291
  def server=(value); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#185
  def server_name; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#185
  def server_name=(_arg0); end

  # source://sentry-sidekiq/5.7.0/lib/sentry/sidekiq/configuration.rb#3
  def sidekiq; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#179
  def skip_rake_integration; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#179
  def skip_rake_integration=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#390
  def stacktrace_builder; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#193
  def traces_sample_rate; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#193
  def traces_sample_rate=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#203
  def traces_sampler; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#203
  def traces_sampler=(_arg0); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#375
  def tracing_enabled?; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#189
  def transport; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#182
  def trusted_proxies; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#182
  def trusted_proxies=(_arg0); end

  private

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#462
  def capture_in_environment?; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#421
  def check_callable!(name, value); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#478
  def environment_from_env; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#433
  def excluded_exception?(incoming_exception); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#439
  def excluded_exception_classes; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#443
  def get_exception_class(x); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#427
  def init_dsn(dsn_string); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#447
  def matches_exception?(excluded_exception_class, incoming_exception); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#496
  def run_post_initialization_callbacks; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#492
  def running_on_heroku?; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#455
  def safe_const_get(x); end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#482
  def server_name_from_env; end

  # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#469
  def valid?; end

  class << self
    # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#503
    def add_post_initialization_callback(&block); end

    # source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#509
    def post_initialization_callbacks; end
  end
end

# source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#237
Sentry::Configuration::HEROKU_DYNO_METADATA_MESSAGE = T.let(T.unsafe(nil), String)

# source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#224
Sentry::Configuration::IGNORE_DEFAULT = T.let(T.unsafe(nil), Array)

# source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#244
Sentry::Configuration::INSTRUMENTERS = T.let(T.unsafe(nil), Array)

# source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#240
Sentry::Configuration::LOG_PREFIX = T.let(T.unsafe(nil), String)

# source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#241
Sentry::Configuration::MODULE_SEPARATOR = T.let(T.unsafe(nil), String)

# source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#231
Sentry::Configuration::RACK_ENV_WHITELIST_DEFAULT = T.let(T.unsafe(nil), Array)

# source://sentry-ruby/5.7.0/lib/sentry/configuration.rb#242
Sentry::Configuration::SKIP_INSPECTION_ATTRIBUTES = T.let(T.unsafe(nil), Array)

class Sentry::Engine < ::Rails::Engine; end

module Sentry::Rails
  extend ::Sentry::Integrable
end

class Sentry::Rails::BacktraceCleaner < ::ActiveSupport::BacktraceCleaner
  # @return [BacktraceCleaner] a new instance of BacktraceCleaner
  #
  # source://sentry-rails//lib/sentry/rails/backtrace_cleaner.rb#10
  def initialize; end
end

# source://sentry-rails//lib/sentry/rails/backtrace_cleaner.rb#7
Sentry::Rails::BacktraceCleaner::APP_DIRS_PATTERN = T.let(T.unsafe(nil), Regexp)

# source://sentry-rails//lib/sentry/rails/backtrace_cleaner.rb#8
Sentry::Rails::BacktraceCleaner::RENDER_TEMPLATE_PATTERN = T.let(T.unsafe(nil), Regexp)

class Sentry::Rails::CaptureExceptions < ::Sentry::Rack::CaptureExceptions
  # @return [CaptureExceptions] a new instance of CaptureExceptions
  #
  # source://sentry-rails//lib/sentry/rails/capture_exceptions.rb#4
  def initialize(_); end

  private

  # source://sentry-rails//lib/sentry/rails/capture_exceptions.rb#23
  def capture_exception(exception, env); end

  # source://sentry-rails//lib/sentry/rails/capture_exceptions.rb#14
  def collect_exception(env); end

  # source://sentry-rails//lib/sentry/rails/capture_exceptions.rb#33
  def start_transaction(env, scope); end

  # source://sentry-rails//lib/sentry/rails/capture_exceptions.rb#19
  def transaction_op; end
end

class Sentry::Rails::Configuration
  # @return [Configuration] a new instance of Configuration
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#78
  def initialize; end

  # sentry-rails by default skips asset request' transactions by checking if the path matches
  #
  # ```rb
  # %r(\A/{0,2}#{::Rails.application.config.assets.prefix})
  # ```
  #
  # If you want to use a different pattern, you can configure the `assets_regexp` option like:
  #
  # ```rb
  # Sentry.init do |config|
  #   config.rails.assets_regexp = /my_regexp/
  # end
  # ```
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#76
  def assets_regexp; end

  # sentry-rails by default skips asset request' transactions by checking if the path matches
  #
  # ```rb
  # %r(\A/{0,2}#{::Rails.application.config.assets.prefix})
  # ```
  #
  # If you want to use a different pattern, you can configure the `assets_regexp` option like:
  #
  # ```rb
  # Sentry.init do |config|
  #   config.rails.assets_regexp = /my_regexp/
  # end
  # ```
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#76
  def assets_regexp=(_arg0); end

  # Rails 7.0 introduced a new error reporter feature, which the SDK once opted-in by default.
  # But after receiving multiple issue reports, the integration seemed to cause serious troubles to some users.
  # So the integration is now controlled by this configuration, which is disabled (false) by default.
  # More information can be found from: https://github.com/rails/rails/pull/43625#issuecomment-1072514175
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#49
  def register_error_subscriber; end

  # Rails 7.0 introduced a new error reporter feature, which the SDK once opted-in by default.
  # But after receiving multiple issue reports, the integration seemed to cause serious troubles to some users.
  # So the integration is now controlled by this configuration, which is disabled (false) by default.
  # More information can be found from: https://github.com/rails/rails/pull/43625#issuecomment-1072514175
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#49
  def register_error_subscriber=(_arg0); end

  # Rails catches exceptions in the ActionDispatch::ShowExceptions or
  # ActionDispatch::DebugExceptions middlewares, depending on the environment.
  # When `rails_report_rescued_exceptions` is true (it is by default), Sentry
  # will report exceptions even when they are rescued by these middlewares.
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#55
  def report_rescued_exceptions; end

  # Rails catches exceptions in the ActionDispatch::ShowExceptions or
  # ActionDispatch::DebugExceptions middlewares, depending on the environment.
  # When `rails_report_rescued_exceptions` is true (it is by default), Sentry
  # will report exceptions even when they are rescued by these middlewares.
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#55
  def report_rescued_exceptions=(_arg0); end

  # Some adapters, like sidekiq, already have their own sentry integration.
  # In those cases, we should skip ActiveJob's reporting to avoid duplicated reports.
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#59
  def skippable_job_adapters; end

  # Some adapters, like sidekiq, already have their own sentry integration.
  # In those cases, we should skip ActiveJob's reporting to avoid duplicated reports.
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#59
  def skippable_job_adapters=(_arg0); end

  # Returns the value of attribute tracing_subscribers.
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#61
  def tracing_subscribers; end

  # Sets the attribute tracing_subscribers
  #
  # @param value the value to set the attribute tracing_subscribers to.
  #
  # source://sentry-rails//lib/sentry/rails/configuration.rb#61
  def tracing_subscribers=(_arg0); end
end

# source://sentry-rails//lib/sentry/rails/configuration.rb#28
Sentry::Rails::IGNORE_DEFAULT = T.let(T.unsafe(nil), Array)

module Sentry::Rails::InstrumentPayloadCleanupHelper
  # source://sentry-rails//lib/sentry/rails/instrument_payload_cleanup_helper.rb#6
  def cleanup_data(data); end
end

# source://sentry-rails//lib/sentry/rails/instrument_payload_cleanup_helper.rb#4
Sentry::Rails::InstrumentPayloadCleanupHelper::IGNORED_DATA_TYPES = T.let(T.unsafe(nil), Array)

class Sentry::Rails::RescuedExceptionInterceptor
  # @return [RescuedExceptionInterceptor] a new instance of RescuedExceptionInterceptor
  #
  # source://sentry-rails//lib/sentry/rails/rescued_exception_interceptor.rb#4
  def initialize(app); end

  # source://sentry-rails//lib/sentry/rails/rescued_exception_interceptor.rb#8
  def call(env); end

  # @return [Boolean]
  #
  # source://sentry-rails//lib/sentry/rails/rescued_exception_interceptor.rb#19
  def report_rescued_exceptions?; end
end

module Sentry::Rails::Tracing
  class << self
    # source://sentry-rails//lib/sentry/rails/tracing.rb#69
    def get_current_transaction; end

    # this is necessary because instrumentation events don't record absolute start/finish time
    # so we need to retrieve the correct time this way
    #
    # source://sentry-rails//lib/sentry/rails/tracing.rb#42
    def patch_active_support_notifications; end

    # source://sentry-rails//lib/sentry/rails/tracing.rb#6
    def register_subscribers(subscribers); end

    # source://sentry-rails//lib/sentry/rails/tracing.rb#59
    def remove_active_support_notifications_patch; end

    # source://sentry-rails//lib/sentry/rails/tracing.rb#18
    def subscribe_tracing_events; end

    # source://sentry-rails//lib/sentry/rails/tracing.rb#14
    def subscribed_tracing_events; end

    # source://sentry-rails//lib/sentry/rails/tracing.rb#10
    def subscribers; end

    # source://sentry-rails//lib/sentry/rails/tracing.rb#31
    def unsubscribe_tracing_events; end
  end
end

class Sentry::Rails::Tracing::AbstractSubscriber
  class << self
    # source://sentry-rails//lib/sentry/rails/tracing/abstract_subscriber.rb#40
    def record_on_current_span(duration:, **options); end

    # @raise [NotImplementedError]
    #
    # source://sentry-rails//lib/sentry/rails/tracing/abstract_subscriber.rb#7
    def subscribe!; end

    # source://sentry-rails//lib/sentry/rails/tracing/abstract_subscriber.rb#29
    def subscribe_to_event(event_names); end

    # source://sentry-rails//lib/sentry/rails/tracing/abstract_subscriber.rb#11
    def unsubscribe!; end
  end
end

class Sentry::Rails::Tracing::ActionControllerSubscriber < ::Sentry::Rails::Tracing::AbstractSubscriber
  extend ::Sentry::Rails::InstrumentPayloadCleanupHelper

  class << self
    # source://sentry-rails//lib/sentry/rails/tracing/action_controller_subscriber.rb#13
    def subscribe!; end
  end
end

# source://sentry-rails//lib/sentry/rails/tracing/action_controller_subscriber.rb#10
Sentry::Rails::Tracing::ActionControllerSubscriber::EVENT_NAMES = T.let(T.unsafe(nil), Array)

# source://sentry-rails//lib/sentry/rails/tracing/action_controller_subscriber.rb#11
Sentry::Rails::Tracing::ActionControllerSubscriber::OP_NAME = T.let(T.unsafe(nil), String)

class Sentry::Rails::Tracing::ActionViewSubscriber < ::Sentry::Rails::Tracing::AbstractSubscriber
  class << self
    # source://sentry-rails//lib/sentry/rails/tracing/action_view_subscriber.rb#10
    def subscribe!; end
  end
end

# source://sentry-rails//lib/sentry/rails/tracing/action_view_subscriber.rb#7
Sentry::Rails::Tracing::ActionViewSubscriber::EVENT_NAMES = T.let(T.unsafe(nil), Array)

# source://sentry-rails//lib/sentry/rails/tracing/action_view_subscriber.rb#8
Sentry::Rails::Tracing::ActionViewSubscriber::SPAN_PREFIX = T.let(T.unsafe(nil), String)

class Sentry::Rails::Tracing::ActiveRecordSubscriber < ::Sentry::Rails::Tracing::AbstractSubscriber
  class << self
    # source://sentry-rails//lib/sentry/rails/tracing/active_record_subscriber.rb#11
    def subscribe!; end
  end
end

# source://sentry-rails//lib/sentry/rails/tracing/active_record_subscriber.rb#7
Sentry::Rails::Tracing::ActiveRecordSubscriber::EVENT_NAMES = T.let(T.unsafe(nil), Array)

# source://sentry-rails//lib/sentry/rails/tracing/active_record_subscriber.rb#9
Sentry::Rails::Tracing::ActiveRecordSubscriber::EXCLUDED_EVENTS = T.let(T.unsafe(nil), Array)

# source://sentry-rails//lib/sentry/rails/tracing/active_record_subscriber.rb#8
Sentry::Rails::Tracing::ActiveRecordSubscriber::SPAN_PREFIX = T.let(T.unsafe(nil), String)

class Sentry::Rails::Tracing::ActiveStorageSubscriber < ::Sentry::Rails::Tracing::AbstractSubscriber
  class << self
    # source://sentry-rails//lib/sentry/rails/tracing/active_storage_subscriber.rb#22
    def subscribe!; end
  end
end

# source://sentry-rails//lib/sentry/rails/tracing/active_storage_subscriber.rb#7
Sentry::Rails::Tracing::ActiveStorageSubscriber::EVENT_NAMES = T.let(T.unsafe(nil), Array)

# source://sentry-rails//lib/sentry/rails/tracing.rb#4
Sentry::Rails::Tracing::START_TIMESTAMP_NAME = T.let(T.unsafe(nil), Symbol)

# it's just a container for the extended method
module Sentry::Rails::Tracing::SentryNotificationExtension; end

# source://sentry-rails//lib/sentry/rails/version.rb#3
Sentry::Rails::VERSION = T.let(T.unsafe(nil), String)

class Sentry::Railtie < ::Rails::Railtie
  # source://sentry-rails//lib/sentry/rails/railtie.rb#117
  def activate_tracing; end

  # source://sentry-rails//lib/sentry/rails/railtie.rb#63
  def configure_project_root; end

  # source://sentry-rails//lib/sentry/rails/railtie.rb#67
  def configure_trusted_proxies; end

  # source://sentry-rails//lib/sentry/rails/railtie.rb#71
  def extend_controller_methods; end

  # source://sentry-rails//lib/sentry/rails/railtie.rb#87
  def inject_breadcrumbs_logger; end

  # source://sentry-rails//lib/sentry/rails/railtie.rb#109
  def override_streaming_reporter; end

  # source://sentry-rails//lib/sentry/rails/railtie.rb#83
  def patch_background_worker; end

  # source://sentry-rails//lib/sentry/rails/railtie.rb#126
  def register_error_subscriber(app); end

  # source://sentry-rails//lib/sentry/rails/railtie.rb#101
  def setup_backtrace_cleanup_callback; end
end

class Sentry::SendEventJob < ::ActiveJob::Base
  def perform(event, hint = T.unsafe(nil)); end

  class << self
    # source://activejob/7.0.4/lib/active_job/logging.rb#12
    def log_arguments; end

    # source://activesupport/7.0.4/lib/active_support/rescuable.rb#13
    def rescue_handlers; end
  end
end
