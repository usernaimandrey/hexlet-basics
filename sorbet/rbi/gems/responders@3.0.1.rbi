# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `responders` gem.
# Please instead update this file by running `bin/tapioca gem responders`.

module ActionController::RespondWith
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActionController::RespondWith::ClassMethods

  # For a given controller action, respond_with generates an appropriate
  # response based on the mime-type requested by the client.
  #
  # If the method is called with just a resource, as in this example -
  #
  #   class PeopleController < ApplicationController
  #     respond_to :html, :xml, :json
  #
  #     def index
  #       @people = Person.all
  #       respond_with @people
  #     end
  #   end
  #
  # then the mime-type of the response is typically selected based on the
  # request's Accept header and the set of available formats declared
  # by previous calls to the controller's class method +respond_to+. Alternatively
  # the mime-type can be selected by explicitly setting <tt>request.format</tt> in
  # the controller.
  #
  # If an acceptable format is not identified, the application returns a
  # '406 - not acceptable' status. Otherwise, the default response is to render
  # a template named after the current action and the selected format,
  # e.g. <tt>index.html.erb</tt>. If no template is available, the behavior
  # depends on the selected format:
  #
  # * for an html response - if the request method is +get+, an exception
  #   is raised but for other requests such as +post+ the response
  #   depends on whether the resource has any validation errors (i.e.
  #   assuming that an attempt has been made to save the resource,
  #   e.g. by a +create+ action) -
  #   1. If there are no errors, i.e. the resource
  #      was saved successfully, the response +redirect+'s to the resource
  #      i.e. its +show+ action.
  #   2. If there are validation errors, the response
  #      renders a default action, which is <tt>:new</tt> for a
  #      +post+ request or <tt>:edit</tt> for +patch+ or +put+.
  #   Thus an example like this -
  #
  #     respond_to :html, :xml
  #
  #     def create
  #       @user = User.new(params[:user])
  #       flash[:notice] = 'User was successfully created.' if @user.save
  #       respond_with(@user)
  #     end
  #
  #   is equivalent, in the absence of <tt>create.html.erb</tt>, to -
  #
  #     def create
  #       @user = User.new(params[:user])
  #       respond_to do |format|
  #         if @user.save
  #           flash[:notice] = 'User was successfully created.'
  #           format.html { redirect_to(@user) }
  #           format.xml { render xml: @user }
  #         else
  #           format.html { render action: "new" }
  #           format.xml { render xml: @user }
  #         end
  #       end
  #     end
  #
  # * for a JavaScript request - if the template isn't found, an exception is
  #   raised.
  # * for other requests - i.e. data formats such as xml, json, csv etc, if
  #   the resource passed to +respond_with+ responds to <code>to_<format></code>,
  #   the method attempts to render the resource in the requested format
  #   directly, e.g. for an xml request, the response is equivalent to calling
  #   <code>render xml: resource</code>.
  #
  # === Nested resources
  #
  # As outlined above, the +resources+ argument passed to +respond_with+
  # can play two roles. It can be used to generate the redirect url
  # for successful html requests (e.g. for +create+ actions when
  # no template exists), while for formats other than html and JavaScript
  # it is the object that gets rendered, by being converted directly to the
  # required format (again assuming no template exists).
  #
  # For redirecting successful html requests, +respond_with+ also supports
  # the use of nested resources, which are supplied in the same way as
  # in <code>form_for</code> and <code>polymorphic_url</code>. For example -
  #
  #   def create
  #     @project = Project.find(params[:project_id])
  #     @task = @project.comments.build(params[:task])
  #     flash[:notice] = 'Task was successfully created.' if @task.save
  #     respond_with(@project, @task)
  #   end
  #
  # This would cause +respond_with+ to redirect to <code>project_task_url</code>
  # instead of <code>task_url</code>. For request formats other than html or
  # JavaScript, if multiple resources are passed in this way, it is the last
  # one specified that is rendered.
  #
  # === Customizing response behavior
  #
  # Like +respond_to+, +respond_with+ may also be called with a block that
  # can be used to overwrite any of the default responses, e.g. -
  #
  #   def create
  #     @user = User.new(params[:user])
  #     flash[:notice] = "User was successfully created." if @user.save
  #
  #     respond_with(@user) do |format|
  #       format.html { render }
  #     end
  #   end
  #
  # The argument passed to the block is an ActionController::MimeResponds::Collector
  # object which stores the responses for the formats defined within the
  # block. Note that formats with responses defined explicitly in this way
  # do not have to first be declared using the class method +respond_to+.
  #
  # Also, a hash passed to +respond_with+ immediately after the specified
  # resource(s) is interpreted as a set of options relevant to all
  # formats. Any option accepted by +render+ can be used, e.g.
  #
  #   respond_with @people, status: 200
  #
  # However, note that these options are ignored after an unsuccessful attempt
  # to save a resource, e.g. when automatically rendering <tt>:new</tt>
  # after a post request.
  #
  # Three additional options are relevant specifically to +respond_with+ -
  # 1. <tt>:location</tt> - overwrites the default redirect location used after
  #    a successful html +post+ request.
  # 2. <tt>:action</tt> - overwrites the default render action used after an
  #    unsuccessful html +post+ request.
  # 3. <tt>:render</tt> - allows to pass any options directly to the <tt>:render<tt/>
  #    call after unsuccessful html +post+ request. Useful if for example you
  #    need to render a template which is outside of controller's path or you
  #    want to override the default http <tt>:status</tt> code, e.g.
  #
  #    respond_with(resource, render: { template: 'path/to/template', status: 422 })
  #
  # source://responders//lib/action_controller/respond_with.rb#198
  def respond_with(*resources, &block); end

  protected

  # Collect mimes declared in the class method respond_to valid for the
  # current action.
  #
  # source://responders//lib/action_controller/respond_with.rb#242
  def collect_mimes_from_class_level; end

  # Before action callback that can be used to prevent requests that do not
  # match the mime types defined through <tt>respond_to</tt> from being executed.
  #
  #   class PeopleController < ApplicationController
  #     respond_to :html, :xml, :json
  #
  #     before_action :verify_requested_format!
  #   end
  #
  # source://responders//lib/action_controller/respond_with.rb#229
  def verify_request_format!; end

  # Before action callback that can be used to prevent requests that do not
  # match the mime types defined through <tt>respond_to</tt> from being executed.
  #
  #   class PeopleController < ApplicationController
  #     respond_to :html, :xml, :json
  #
  #     before_action :verify_requested_format!
  #   end
  #
  # source://responders//lib/action_controller/respond_with.rb#229
  def verify_requested_format!; end

  module GeneratedClassMethods
    def mimes_for_respond_to; end
    def mimes_for_respond_to=(value); end
    def mimes_for_respond_to?; end
    def responder; end
    def responder=(value); end
    def responder?; end
  end

  module GeneratedInstanceMethods
    def mimes_for_respond_to; end
    def mimes_for_respond_to=(value); end
    def mimes_for_respond_to?; end
    def responder; end
    def responder=(value); end
    def responder?; end
  end
end

module ActionController::RespondWith::ClassMethods
  # Clear all mime types in <tt>respond_to</tt>.
  #
  # source://responders//lib/action_controller/respond_with.rb#57
  def clear_respond_to; end

  # Defines mime types that are rendered by default when invoking
  # <tt>respond_with</tt>.
  #
  #   respond_to :html, :xml, :json
  #
  # Specifies that all actions in the controller respond to requests
  # for <tt>:html</tt>, <tt>:xml</tt> and <tt>:json</tt>.
  #
  # To specify on per-action basis, use <tt>:only</tt> and
  # <tt>:except</tt> with an array of actions or a single action:
  #
  #   respond_to :html
  #   respond_to :xml, :json, except: [ :edit ]
  #
  # This specifies that all actions respond to <tt>:html</tt>
  # and all actions except <tt>:edit</tt> respond to <tt>:xml</tt> and
  # <tt>:json</tt>.
  #
  #   respond_to :json, only: :create
  #
  # This specifies that the <tt>:create</tt> action and no other responds
  # to <tt>:json</tt>.
  #
  # source://responders//lib/action_controller/respond_with.rb#39
  def respond_to(*mimes); end
end

# Responsible for exposing a resource to different mime requests,
# usually depending on the HTTP verb. The responder is triggered when
# <code>respond_with</code> is called. The simplest case to study is a GET request:
#
#   class PeopleController < ApplicationController
#     respond_to :html, :xml, :json
#
#     def index
#       @people = Person.all
#       respond_with(@people)
#     end
#   end
#
# When a request comes in, for example for an XML response, three steps happen:
#
#   1) the responder searches for a template at people/index.xml;
#
#   2) if the template is not available, it will invoke <code>#to_xml</code> on the given resource;
#
#   3) if the responder does not <code>respond_to :to_xml</code>, call <code>#to_format</code> on it.
#
# === Built-in HTTP verb semantics
#
# The default \Rails responder holds semantics for each HTTP verb. Depending on the
# content type, verb and the resource status, it will behave differently.
#
# Using \Rails default responder, a POST request for creating an object could
# be written as:
#
#   def create
#     @user = User.new(params[:user])
#     flash[:notice] = 'User was successfully created.' if @user.save
#     respond_with(@user)
#   end
#
# Which is exactly the same as:
#
#   def create
#     @user = User.new(params[:user])
#
#     respond_to do |format|
#       if @user.save
#         flash[:notice] = 'User was successfully created.'
#         format.html { redirect_to(@user) }
#         format.xml { render xml: @user, status: :created, location: @user }
#       else
#         format.html { render action: "new" }
#         format.xml { render xml: @user.errors, status: :unprocessable_entity }
#       end
#     end
#   end
#
# The same happens for PATCH/PUT and DELETE requests.
#
# === Nested resources
#
# You can supply nested resources as you do in <code>form_for</code> and <code>polymorphic_url</code>.
# Consider the project has many tasks example. The create action for
# TasksController would be like:
#
#   def create
#     @project = Project.find(params[:project_id])
#     @task = @project.tasks.build(params[:task])
#     flash[:notice] = 'Task was successfully created.' if @task.save
#     respond_with(@project, @task)
#   end
#
# Giving several resources ensures that the responder will redirect to
# <code>project_task_url</code> instead of <code>task_url</code>.
#
# Namespaced and singleton resources require a symbol to be given, as in
# polymorphic urls. If a project has one manager which has many tasks, it
# should be invoked as:
#
#   respond_with(@project, :manager, @task)
#
# Note that if you give an array, it will be treated as a collection,
# so the following is not equivalent:
#
#   respond_with [@project, :manager, @task]
#
# === Custom options
#
# <code>respond_with</code> also allows you to pass options that are forwarded
# to the underlying render call. Those options are only applied for success
# scenarios. For instance, you can do the following in the create method above:
#
#   def create
#     @project = Project.find(params[:project_id])
#     @task = @project.tasks.build(params[:task])
#     flash[:notice] = 'Task was successfully created.' if @task.save
#     respond_with(@project, @task, status: 201)
#   end
#
# This will return status 201 if the task was saved successfully. If not,
# it will simply ignore the given options and return status 422 and the
# resource errors. You can also override the location to redirect to:
#
#   respond_with(@project, location: root_path)
#
# To customize the failure scenario, you can pass a block to
# <code>respond_with</code>:
#
#   def create
#     @project = Project.find(params[:project_id])
#     @task = @project.tasks.build(params[:task])
#     respond_with(@project, @task, status: 201) do |format|
#       if @task.save
#         flash[:notice] = 'Task was successfully created.'
#       else
#         format.html { render "some_special_template" }
#       end
#     end
#   end
#
# Using <code>respond_with</code> with a block follows the same syntax as <code>respond_to</code>.
class ActionController::Responder
  # @return [Responder] a new instance of Responder
  #
  # source://responders//lib/action_controller/responder.rb#131
  def initialize(controller, resources, options = T.unsafe(nil)); end

  # Returns the value of attribute controller.
  #
  # source://responders//lib/action_controller/responder.rb#123
  def controller; end

  # source://responders//lib/action_controller/responder.rb#148
  def delete?(*_arg0, **_arg1, &_arg2); end

  # Returns the value of attribute format.
  #
  # source://responders//lib/action_controller/responder.rb#123
  def format; end

  # source://responders//lib/action_controller/responder.rb#148
  def get?(*_arg0, **_arg1, &_arg2); end

  # source://responders//lib/action_controller/responder.rb#147
  def head(*_arg0, **_arg1, &_arg2); end

  # Returns the value of attribute options.
  #
  # source://responders//lib/action_controller/responder.rb#123
  def options; end

  # source://responders//lib/action_controller/responder.rb#148
  def patch?(*_arg0, **_arg1, &_arg2); end

  # source://responders//lib/action_controller/responder.rb#148
  def post?(*_arg0, **_arg1, &_arg2); end

  # source://responders//lib/action_controller/responder.rb#148
  def put?(*_arg0, **_arg1, &_arg2); end

  # source://responders//lib/action_controller/responder.rb#147
  def redirect_to(*_arg0, **_arg1, &_arg2); end

  # source://responders//lib/action_controller/responder.rb#147
  def render(*_arg0, **_arg1, &_arg2); end

  # Returns the value of attribute request.
  #
  # source://responders//lib/action_controller/responder.rb#123
  def request; end

  # Returns the value of attribute resource.
  #
  # source://responders//lib/action_controller/responder.rb#123
  def resource; end

  # Returns the value of attribute resources.
  #
  # source://responders//lib/action_controller/responder.rb#123
  def resources; end

  # Main entry point for responder responsible to dispatch to the proper format.
  #
  # source://responders//lib/action_controller/responder.rb#163
  def respond; end

  # All other formats follow the procedure below. First we try to render a
  # template, if the template is not available, we verify if the resource
  # responds to :to_format and display it.
  #
  # source://responders//lib/action_controller/responder.rb#186
  def to_format; end

  # HTML format does not render the resource, it always attempt to render a
  # template.
  #
  # source://responders//lib/action_controller/responder.rb#171
  def to_html; end

  # to_js simply tries to render a template. If no template is found, raises the error.
  #
  # source://responders//lib/action_controller/responder.rb#178
  def to_js; end

  protected

  # This is the common behavior for formats associated with APIs, such as :xml and :json.
  #
  # @raise [MissingRenderer]
  #
  # source://responders//lib/action_controller/responder.rb#212
  def api_behavior; end

  # Returns the resource location by retrieving it from the options or
  # returning the resources array.
  #
  # source://responders//lib/action_controller/responder.rb#227
  def api_location; end

  # By default, render the <code>:edit</code> action for HTML requests with errors, unless
  # the verb was POST.
  #
  # source://responders//lib/action_controller/responder.rb#287
  def default_action; end

  # If a response block was given, use it, otherwise call render on
  # controller.
  #
  # source://responders//lib/action_controller/responder.rb#236
  def default_render; end

  # Display is just a shortcut to render a resource with the current format.
  #
  #   display @user, status: :ok
  #
  # For XML requests it's equivalent to:
  #
  #   render xml: @user, status: :ok
  #
  # Options sent by the user are also used:
  #
  #   respond_with(@user, status: :created)
  #   display(@user, status: :ok)
  #
  # Results in:
  #
  #   render xml: @user, status: :created
  #
  # source://responders//lib/action_controller/responder.rb#261
  def display(resource, given_options = T.unsafe(nil)); end

  # source://responders//lib/action_controller/responder.rb#265
  def display_errors; end

  # Check whether the resource has errors.
  #
  # @return [Boolean]
  #
  # source://responders//lib/action_controller/responder.rb#271
  def has_errors?; end

  # Check whether the necessary Renderer is available
  #
  # @return [Boolean]
  #
  # source://responders//lib/action_controller/responder.rb#276
  def has_renderer?; end

  # @return [Boolean]
  #
  # source://responders//lib/action_controller/responder.rb#280
  def has_view_rendering?; end

  # source://responders//lib/action_controller/responder.rb#295
  def json_resource_errors; end

  # This is the common behavior for formats associated with browsing, like :html, :iphone and so forth.
  #
  # source://responders//lib/action_controller/responder.rb#201
  def navigation_behavior(error); end

  # Returns the resource location by retrieving it from the options or
  # returning the resources array.
  #
  # source://responders//lib/action_controller/responder.rb#227
  def navigation_location; end

  # source://responders//lib/action_controller/responder.rb#303
  def rendering_options; end

  # source://responders//lib/action_controller/responder.rb#291
  def resource_errors; end

  # Returns the resource location by retrieving it from the options or
  # returning the resources array.
  #
  # source://responders//lib/action_controller/responder.rb#227
  def resource_location; end

  # @return [Boolean]
  #
  # source://responders//lib/action_controller/responder.rb#299
  def response_overridden?; end

  class << self
    # Initializes a new responder and invokes the proper format. If the format is
    # not defined, call to_format.
    #
    # source://responders//lib/action_controller/responder.rb#157
    def call(*args); end
  end
end

# source://responders//lib/action_controller/responder.rb#125
ActionController::Responder::DEFAULT_ACTIONS_FOR_VERBS = T.let(T.unsafe(nil), Hash)

module Responders; end

# This responder modifies your current responder to redirect
# to the collection page on POST/PUT/DELETE.
module Responders::CollectionResponder
  protected

  # Returns the collection location for redirecting after POST/PUT/DELETE.
  # This method, converts the following resources array to the following:
  #
  #   [:admin, @post] #=> [:admin, :posts]
  #   [@user, @post]  #=> [@user, :posts]
  #
  # When these new arrays are given to redirect_to, it will generate the
  # proper URL pointing to the index action.
  #
  #   [:admin, @post] #=> admin_posts_url
  #   [@user, @post]  #=> user_posts_url(@user.to_param)
  #
  # source://responders//lib/responders/collection_responder.rb#21
  def navigation_location; end
end

module Responders::ControllerMethod
  # Adds the given responders to the current controller's responder, allowing you to cherry-pick
  # which responders you want per controller.
  #
  #   class InvitationsController < ApplicationController
  #     responders :flash, :http_cache
  #   end
  #
  # Takes symbols and strings and translates them to VariableResponder (eg. :flash becomes FlashResponder).
  # Also allows passing in the responders modules in directly, so you could do:
  #
  #    responders FlashResponder, HttpCacheResponder
  #
  # Or a mix of both methods:
  #
  #    responders :flash, MyCustomResponder
  #
  # source://responders//lib/responders/controller_method.rb#21
  def responders(*responders); end
end

# Responder to automatically set flash messages based on I18n API. It checks for
# message based on the current action, but also allows defaults to be set, using
# the following order:
#
#   flash.controller_name.action_name.status
#   flash.actions.action_name.status
#
# So, if you have a CarsController, create action, it will check for:
#
#   flash.cars.create.status
#   flash.actions.create.status
#
# The statuses by default are :notice (when the object can be created, updated
# or destroyed with success) and :alert (when the object cannot be created
# or updated).
#
# On I18n, the resource_name given is available as interpolation option,
# this means you can set:
#
#   flash:
#     actions:
#       create:
#         notice: "Hooray! %{resource_name} was successfully created!"
#
# But sometimes, flash messages are not that simple. Going back
# to cars example, you might want to say the brand of the car when it's
# updated. Well, that's easy also:
#
#   flash:
#     cars:
#       update:
#         notice: "Hooray! You just tuned your %{car_brand}!"
#
# Since :car_name is not available for interpolation by default, you have
# to overwrite `flash_interpolation_options` in your controller.
#
#   def flash_interpolation_options
#     { :car_brand => @car.brand }
#   end
#
# Then you will finally have:
#
#   'Hooray! You just tuned your Aston Martin!'
#
# If your controller is namespaced, for example Admin::CarsController,
# the messages will be checked in the following order:
#
#   flash.admin.cars.create.status
#   flash.admin.actions.create.status
#   flash.cars.create.status
#   flash.actions.create.status
#
# You can also have flash messages with embedded HTML. Just create a scope that
# ends with <tt>_html</tt> as the scopes below:
#
#   flash.actions.create.notice_html
#   flash.cars.create.notice_html
#
# == Options
#
# FlashResponder also accepts some options through respond_with API.
#
# * :flash - When set to false, no flash message is set.
#
#     respond_with(@user, :flash => true)
#
# * :notice - Supply the message to be set if the record has no errors.
# * :alert - Supply the message to be set if the record has errors.
#
#     respond_with(@user, :notice => "Hooray! Welcome!", :alert => "Woot! You failed.")
#
# * :flash_now - Sets the flash message using flash.now. Accepts true, :on_failure or :on_sucess.
#
# == Configure status keys
#
# As said previously, FlashResponder by default use :notice and :alert
# keys. You can change that by setting the status_keys:
#
#   Responders::FlashResponder.flash_keys = [ :success, :failure ]
#
# However, the options :notice and :alert to respond_with are kept :notice
# and :alert.
module Responders::FlashResponder
  # source://responders//lib/responders/flash_responder.rb#99
  def initialize(controller, resources, options = T.unsafe(nil)); end

  # source://responders//lib/responders/flash_responder.rb#107
  def to_html; end

  # source://responders//lib/responders/flash_responder.rb#112
  def to_js; end

  protected

  # source://responders//lib/responders/flash_responder.rb#166
  def controller_interpolation_options; end

  # source://responders//lib/responders/flash_responder.rb#183
  def flash_defaults_by_namespace(status); end

  # source://responders//lib/responders/flash_responder.rb#151
  def mount_i18n_options(status); end

  # source://responders//lib/responders/flash_responder.rb#175
  def resource_name; end

  # source://responders//lib/responders/flash_responder.rb#135
  def set_flash(key, value); end

  # source://responders//lib/responders/flash_responder.rb#119
  def set_flash_message!; end

  # @return [Boolean]
  #
  # source://responders//lib/responders/flash_responder.rb#147
  def set_flash_message?; end

  # @return [Boolean]
  #
  # source://responders//lib/responders/flash_responder.rb#142
  def set_flash_now?; end

  class << self
    # Returns the value of attribute flash_keys.
    #
    # source://responders//lib/responders/flash_responder.rb#89
    def flash_keys; end

    # Sets the attribute flash_keys
    #
    # @param value the value to set the attribute flash_keys to.
    #
    # source://responders//lib/responders/flash_responder.rb#89
    def flash_keys=(_arg0); end

    # Returns the value of attribute helper.
    #
    # source://responders//lib/responders/flash_responder.rb#89
    def helper; end

    # Sets the attribute helper
    #
    # @param value the value to set the attribute helper to.
    #
    # source://responders//lib/responders/flash_responder.rb#89
    def helper=(_arg0); end

    # Returns the value of attribute namespace_lookup.
    #
    # source://responders//lib/responders/flash_responder.rb#89
    def namespace_lookup; end

    # Sets the attribute namespace_lookup
    #
    # @param value the value to set the attribute namespace_lookup to.
    #
    # source://responders//lib/responders/flash_responder.rb#89
    def namespace_lookup=(_arg0); end
  end
end

# Set HTTP Last-Modified headers based on the given resource. It's used only
# on API behavior (to_format) and is useful for a client to check in the server
# if a resource changed after a specific date or not.
#
# This is not usually not used in html requests because pages contains a lot
# information besides the resource information, as current_user, flash messages,
# widgets... that are better handled with other strategies, as fragment caches and
# the digest of the body.
module Responders::HttpCacheResponder
  # source://responders//lib/responders/http_cache_responder.rb#14
  def initialize(controller, resources, options = T.unsafe(nil)); end

  # source://responders//lib/responders/http_cache_responder.rb#19
  def to_format; end

  protected

  # source://responders//lib/responders/http_cache_responder.rb#26
  def do_http_cache!; end

  # @return [Boolean]
  #
  # source://responders//lib/responders/http_cache_responder.rb#37
  def do_http_cache?; end

  # @return [Boolean]
  #
  # source://responders//lib/responders/http_cache_responder.rb#42
  def persisted?; end
end

module Responders::LocationResponder
  class << self
    # @private
    #
    # source://responders//lib/responders/location_responder.rb#5
    def included(_base); end
  end
end

class Responders::Railtie < ::Rails::Railtie; end
