# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `image_processing` gem.
# Please instead update this file by running `bin/tapioca gem image_processing`.

module ImageProcessing; end

class ImageProcessing::Builder
  include ::ImageProcessing::Chainable

  # @return [Builder] a new instance of Builder
  #
  # source://image_processing//lib/image_processing/builder.rb#7
  def initialize(options); end

  # Calls the pipeline to perform the processing from built options.
  #
  # source://image_processing//lib/image_processing/builder.rb#12
  def call!(**call_options); end

  # Returns the value of attribute options.
  #
  # source://image_processing//lib/image_processing/builder.rb#5
  def options; end

  private

  # source://image_processing//lib/image_processing/builder.rb#20
  def instrument; end

  # source://image_processing//lib/image_processing/builder.rb#28
  def pipeline_options; end
end

# Implements a chainable interface for building processing options.
module ImageProcessing::Chainable
  # Add multiple operations as a hash or an array.
  #
  #   .apply(resize_to_limit: [400, 400], strip: true)
  #   # or
  #   .apply([[:resize_to_limit, [400, 400]], [:strip, true])
  #
  # source://image_processing//lib/image_processing/chainable.rb#34
  def apply(operations); end

  # Creates a new builder object, merging current options with new options.
  #
  # source://image_processing//lib/image_processing/chainable.rb#64
  def branch(**new_options); end

  # Call the defined processing and get the result. Allows specifying
  # the source file and destination.
  #
  # source://image_processing//lib/image_processing/chainable.rb#55
  def call(file = T.unsafe(nil), destination: T.unsafe(nil), **call_options); end

  # Specify the output format.
  #
  # source://image_processing//lib/image_processing/chainable.rb#10
  def convert(format); end

  # Register instrumentation block that will be called around the pipeline.
  #
  # source://image_processing//lib/image_processing/chainable.rb#25
  def instrumenter(&block); end

  # Specify processor options applied when loading the image.
  #
  # source://image_processing//lib/image_processing/chainable.rb#15
  def loader(**options); end

  # Add an operation defined by the processor.
  #
  # source://image_processing//lib/image_processing/chainable.rb#49
  def operation(name, *args, &block); end

  # Specify processor options applied when saving the image.
  #
  # source://image_processing//lib/image_processing/chainable.rb#20
  def saver(**options); end

  # Specify the source image file.
  #
  # source://image_processing//lib/image_processing/chainable.rb#5
  def source(file); end

  private

  # Assume that any unknown method names an operation supported by the
  # processor. Add a bang ("!") if you want processing to be performed.
  #
  # source://image_processing//lib/image_processing/chainable.rb#86
  def method_missing(name, *args, **_arg2, &block); end
end

# Empty options which the builder starts with.
#
# source://image_processing//lib/image_processing/chainable.rb#95
ImageProcessing::Chainable::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

class ImageProcessing::Error < ::StandardError; end

module ImageProcessing::MiniMagick
  extend ::ImageProcessing::Chainable

  class << self
    # Returns whether the given image file is processable.
    #
    # @return [Boolean]
    #
    # source://image_processing//lib/image_processing/mini_magick.rb#9
    def valid_image?(file); end
  end
end

class ImageProcessing::MiniMagick::Processor < ::ImageProcessing::Processor
  # Appends a raw ImageMagick command-line argument to the command.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#153
  def append(*args); end

  # Overlays the specified image over the current one. Supports specifying
  # an additional mask, composite mode, direction or offset of the overlay
  # image.
  #
  # @yield [magick]
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#109
  def composite(overlay = T.unsafe(nil), mask: T.unsafe(nil), mode: T.unsafe(nil), gravity: T.unsafe(nil), offset: T.unsafe(nil), args: T.unsafe(nil), **options, &block); end

  # Crops the image with the specified crop points.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#90
  def crop(*args); end

  # Defines settings from the provided hash.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#141
  def define(options); end

  # Specifies resource limits from the provided hash.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#147
  def limits(options); end

  # Resizes the image to fit within the specified dimensions and fills
  # the remaining area with the specified background color.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#82
  def resize_and_pad(width, height, background: T.unsafe(nil), gravity: T.unsafe(nil), **options); end

  # Resizes the image to fill the specified dimensions, applying any
  # necessary cropping.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#73
  def resize_to_fill(width, height, gravity: T.unsafe(nil), **options); end

  # Resizes the image to fit within the specified dimensions.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#67
  def resize_to_fit(width, height, **options); end

  # Resizes the image to not be larger than the specified dimensions.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#62
  def resize_to_limit(width, height, **options); end

  # Rotates the image by an arbitrary angle. For angles that are not
  # multiple of 90 degrees an optional background color can be specified to
  # fill in the gaps.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#101
  def rotate(degrees, background: T.unsafe(nil)); end

  protected

  # source://image_processing//lib/image_processing/processor.rb#32
  def magick; end

  private

  # Converts the given color value into an identifier ImageMagick understands.
  # This supports specifying RGB(A) values with arrays, which mainly exists
  # for compatibility with the libvips implementation.
  #
  # @raise [ArgumentError]
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#162
  def color(value); end

  # Converts the image on disk in various forms into a path.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#185
  def convert_to_path(file, name); end

  # Resizes the image using the specified geometry, and sharpens the
  # resulting thumbnail.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#173
  def thumbnail(geometry, sharpen: T.unsafe(nil)); end

  class << self
    # Initializes the image on disk into a MiniMagick::Tool object. Accepts
    # additional options related to loading the image (e.g. geometry).
    # Additionally auto-orients the image to be upright.
    #
    # source://image_processing//lib/image_processing/mini_magick.rb#28
    def load_image(path_or_magick, loader: T.unsafe(nil), page: T.unsafe(nil), geometry: T.unsafe(nil), auto_orient: T.unsafe(nil), **options); end

    # Calls the built ImageMagick command to perform processing and save
    # the result to disk. Accepts additional options related to saving the
    # image (e.g. quality).
    #
    # source://image_processing//lib/image_processing/mini_magick.rb#52
    def save_image(magick, destination_path, allow_splitting: T.unsafe(nil), **options); end
  end
end

# source://image_processing//lib/image_processing/processor.rb#34
ImageProcessing::MiniMagick::Processor::ACCUMULATOR_CLASS = MiniMagick::Tool

# Default sharpening parameters used on generated thumbnails.
#
# source://image_processing//lib/image_processing/mini_magick.rb#23
ImageProcessing::MiniMagick::Processor::SHARPEN_PARAMETERS = T.let(T.unsafe(nil), Hash)

module ImageProcessing::MiniMagick::Processor::Utils
  private

  # Applies settings from the provided (nested) hash.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#226
  def apply_define(magick, options); end

  # Applies options from the provided hash.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#213
  def apply_options(magick, define: T.unsafe(nil), **options); end

  # When a multi-layer format is being converted into a single-layer
  # format, ImageMagick will create multiple images, one for each layer.
  # We want to warn the user that this is probably not what they wanted.
  #
  # source://image_processing//lib/image_processing/mini_magick.rb#203
  def disallow_split_layers!(destination_path); end

  class << self
    # Applies settings from the provided (nested) hash.
    #
    # source://image_processing//lib/image_processing/mini_magick.rb#226
    def apply_define(magick, options); end

    # Applies options from the provided hash.
    #
    # source://image_processing//lib/image_processing/mini_magick.rb#213
    def apply_options(magick, define: T.unsafe(nil), **options); end

    # When a multi-layer format is being converted into a single-layer
    # format, ImageMagick will create multiple images, one for each layer.
    # We want to warn the user that this is probably not what they wanted.
    #
    # source://image_processing//lib/image_processing/mini_magick.rb#203
    def disallow_split_layers!(destination_path); end
  end
end

class ImageProcessing::Pipeline
  # Initializes the pipeline with all the processing options.
  #
  # @return [Pipeline] a new instance of Pipeline
  #
  # source://image_processing//lib/image_processing/pipeline.rb#10
  def initialize(options); end

  # Determines the destination and calls the processor.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#19
  def call(save: T.unsafe(nil)); end

  # Returns the value of attribute destination.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#7
  def destination; end

  # Determines the appropriate destination image format.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#39
  def destination_format; end

  # Returns the value of attribute format.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#7
  def format; end

  # Returns the value of attribute loader.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#7
  def loader; end

  # Returns the value of attribute operations.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#7
  def operations; end

  # Returns the value of attribute processor.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#7
  def processor; end

  # Returns the value of attribute saver.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#7
  def saver; end

  # Retrieves the source path on disk.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#34
  def source_path; end

  private

  # source://image_processing//lib/image_processing/pipeline.rb#49
  def call_processor(**options); end

  # Creates a new tempfile for the destination file, yields it, and refreshes
  # the file descriptor to get the updated file.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#61
  def create_tempfile; end

  # source://image_processing//lib/image_processing/pipeline.rb#97
  def determine_format(file_path); end

  # In case of processing errors, both libvips and imagemagick will leave the
  # empty destination file they created, so this method makes sure it is
  # deleted in case an exception is raised on saving the image.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#76
  def handle_destination; end

  # Converts the source image object into a path or the accumulator object.
  #
  # source://image_processing//lib/image_processing/pipeline.rb#85
  def source; end
end

# source://image_processing//lib/image_processing/pipeline.rb#5
ImageProcessing::Pipeline::DEFAULT_FORMAT = T.let(T.unsafe(nil), String)

# Abstract class inherited by individual processors.
class ImageProcessing::Processor
  # @return [Processor] a new instance of Processor
  #
  # source://image_processing//lib/image_processing/processor.rb#47
  def initialize(accumulator = T.unsafe(nil)); end

  # Calls the operation to perform the processing. If the operation is
  # defined on the processor (macro), calls the method. Otherwise calls the
  # operation directly on the accumulator object. This provides a common
  # umbrella above defined macros and direct operations.
  #
  # source://image_processing//lib/image_processing/processor.rb#55
  def apply_operation(name, *args, &block); end

  # Calls the given block with the accumulator object. Useful for when you
  # want to access the accumulator object directly.
  #
  # source://image_processing//lib/image_processing/processor.rb#68
  def custom(&block); end

  class << self
    # Use for processor subclasses to specify the name and the class of their
    # accumulator object (e.g. MiniMagick::Tool or Vips::Image).
    #
    # source://image_processing//lib/image_processing/processor.rb#31
    def accumulator(name, klass); end

    # Delegates to #apply_operation.
    #
    # source://image_processing//lib/image_processing/processor.rb#38
    def apply_operation(accumulator, _arg1); end

    # source://image_processing//lib/image_processing/processor.rb#4
    def call(source:, loader:, operations:, saver:, destination: T.unsafe(nil)); end

    # Whether the processor supports resizing the image upon loading.
    #
    # @return [Boolean]
    #
    # source://image_processing//lib/image_processing/processor.rb#43
    def supports_resize_on_load?; end
  end
end

# source://image_processing//lib/image_processing/version.rb#2
ImageProcessing::VERSION = T.let(T.unsafe(nil), String)

module ImageProcessing::Vips
  extend ::ImageProcessing::Chainable

  class << self
    # Returns whether the given image file is processable.
    #
    # @return [Boolean]
    #
    # source://image_processing//lib/image_processing/vips.rb#11
    def valid_image?(file); end
  end
end

class ImageProcessing::Vips::Processor < ::ImageProcessing::Processor
  # Overlays the specified image over the current one. Supports specifying
  # composite mode, direction or offset of the overlay image.
  #
  # source://image_processing//lib/image_processing/vips.rb#100
  def composite(overlay, _mode = T.unsafe(nil), mode: T.unsafe(nil), gravity: T.unsafe(nil), offset: T.unsafe(nil), **options); end

  # source://image_processing//lib/image_processing/vips.rb#130
  def remove(*args); end

  # Resizes the image to fit within the specified dimensions and fills
  # the remaining area with the specified background color.
  #
  # source://image_processing//lib/image_processing/vips.rb#87
  def resize_and_pad(width, height, gravity: T.unsafe(nil), extend: T.unsafe(nil), background: T.unsafe(nil), alpha: T.unsafe(nil), **options); end

  # Resizes the image to fill the specified dimensions, applying any
  # necessary cropping.
  #
  # source://image_processing//lib/image_processing/vips.rb#81
  def resize_to_fill(width, height, **options); end

  # Resizes the image to fit within the specified dimensions.
  #
  # source://image_processing//lib/image_processing/vips.rb#74
  def resize_to_fit(width, height, **options); end

  # Resizes the image to not be larger than the specified dimensions.
  #
  # source://image_processing//lib/image_processing/vips.rb#68
  def resize_to_limit(width, height, **options); end

  # Rotates the image by an arbitrary angle.
  #
  # source://image_processing//lib/image_processing/vips.rb#94
  def rotate(degrees, **options); end

  # make metadata setter methods chainable
  #
  # source://image_processing//lib/image_processing/vips.rb#127
  def set(*args); end

  # source://image_processing//lib/image_processing/vips.rb#128
  def set_type(*args); end

  # source://image_processing//lib/image_processing/vips.rb#129
  def set_value(*args); end

  protected

  # source://image_processing//lib/image_processing/processor.rb#32
  def image; end

  private

  # Converts the image on disk in various forms into a Vips::Image object.
  #
  # source://image_processing//lib/image_processing/vips.rb#160
  def convert_to_image(object, name); end

  # Hack to allow omitting one dimension.
  #
  # @raise [Error]
  #
  # source://image_processing//lib/image_processing/vips.rb#153
  def default_dimensions(width, height); end

  # Resizes the image according to the specified parameters, and sharpens
  # the resulting thumbnail.
  #
  # source://image_processing//lib/image_processing/vips.rb#136
  def thumbnail(width, height, sharpen: T.unsafe(nil), **options); end

  class << self
    # Loads the image on disk into a Vips::Image object. Accepts additional
    # loader-specific options (e.g. interlacing). Afterwards auto-rotates the
    # image to be upright.
    #
    # source://image_processing//lib/image_processing/vips.rb#30
    def load_image(path_or_image, loader: T.unsafe(nil), autorot: T.unsafe(nil), **options); end

    # Writes the Vips::Image object to disk. This starts the processing
    # pipeline defined in the Vips::Image object. Accepts additional
    # saver-specific options (e.g. quality).
    #
    # source://image_processing//lib/image_processing/vips.rb#56
    def save_image(image, path, saver: T.unsafe(nil), quality: T.unsafe(nil), **options); end

    # See #thumbnail.
    #
    # @return [Boolean]
    #
    # source://image_processing//lib/image_processing/vips.rb#49
    def supports_resize_on_load?; end
  end
end

# source://image_processing//lib/image_processing/processor.rb#34
ImageProcessing::Vips::Processor::ACCUMULATOR_CLASS = Vips::Image

# Default sharpening mask that provides a fast and mild sharpen.
#
# source://image_processing//lib/image_processing/vips.rb#22
ImageProcessing::Vips::Processor::SHARPEN_MASK = T.let(T.unsafe(nil), Vips::Image)

module ImageProcessing::Vips::Processor::Utils
  private

  # libvips uses various loaders depending on the input format.
  #
  # source://image_processing//lib/image_processing/vips.rb#180
  def select_valid_loader_options(source_path, options); end

  # libvips uses various loaders and savers depending on the input and
  # output image format. Each of these loaders and savers accept slightly
  # different options, so to allow the user to be able to specify options
  # for a specific loader/saver and have it ignored for other
  # loaders/savers, we do some introspection and filter out options that
  # don't exist for a particular loader or saver.
  #
  # source://image_processing//lib/image_processing/vips.rb#197
  def select_valid_options(operation_name, options); end

  # Filters out unknown options for saving images.
  #
  # source://image_processing//lib/image_processing/vips.rb#186
  def select_valid_saver_options(destination_path, options); end

  class << self
    # libvips uses various loaders depending on the input format.
    #
    # source://image_processing//lib/image_processing/vips.rb#180
    def select_valid_loader_options(source_path, options); end

    # libvips uses various loaders and savers depending on the input and
    # output image format. Each of these loaders and savers accept slightly
    # different options, so to allow the user to be able to specify options
    # for a specific loader/saver and have it ignored for other
    # loaders/savers, we do some introspection and filter out options that
    # don't exist for a particular loader or saver.
    #
    # source://image_processing//lib/image_processing/vips.rb#197
    def select_valid_options(operation_name, options); end

    # Filters out unknown options for saving images.
    #
    # source://image_processing//lib/image_processing/vips.rb#186
    def select_valid_saver_options(destination_path, options); end
  end
end
