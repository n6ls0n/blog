# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `crawler_detect` gem.
# Please instead update this file by running `bin/tapioca gem crawler_detect`.


# @since 0.1.0
#
# source://crawler_detect//lib/crawler_detect/config.rb#3
module CrawlerDetect
  class << self
    # @return [CrawlerDetect::Config] Instance of configuration class
    # @since 1.0.0
    #
    # source://crawler_detect//lib/crawler_detect.rb#40
    def config; end

    # @param user_agent [String] User-agent string to detect
    # @return [true, false] Is User-agent a crawler?
    # @since 0.1.0
    #
    # source://crawler_detect//lib/crawler_detect.rb#27
    def is_crawler?(user_agent); end

    # @param user_agent [String] User-agent string to detect
    # @return [CrawlerDetect::Detector] Instance of detector class
    # @since 0.1.0
    #
    # source://crawler_detect//lib/crawler_detect.rb#21
    def new(user_agent); end

    # @param config [Proc]
    # @since 1.0.0
    #
    # source://crawler_detect//lib/crawler_detect.rb#33
    def setup!(&config); end

    private

    # @since 0.1.0
    #
    # source://crawler_detect//lib/crawler_detect.rb#46
    def detector(user_agent); end
  end
end

# Configuration of CrawlerDetect
#
# @see settings
# @since 1.0.0
#
# source://crawler_detect//lib/crawler_detect/config.rb#8
class CrawlerDetect::Config < ::Qonfig::DataSet; end

# @since 1.0.0
#
# source://crawler_detect//lib/crawler_detect/config.rb#9
CrawlerDetect::Config::CUR_PATH = T.let(T.unsafe(nil), String)

# @since 1.0.0
#
# source://crawler_detect//lib/crawler_detect/config.rb#12
CrawlerDetect::Config::RAW_CRAWLERS_PATH = T.let(T.unsafe(nil), String)

# @since 1.0.0
#
# source://crawler_detect//lib/crawler_detect/config.rb#13
CrawlerDetect::Config::RAW_EXCLUSIONS_PATH = T.let(T.unsafe(nil), String)

# @since 1.0.0
#
# source://crawler_detect//lib/crawler_detect/config.rb#14
CrawlerDetect::Config::RAW_HEADERS_PATH = T.let(T.unsafe(nil), String)

# @since 1.0.0
#
# source://crawler_detect//lib/crawler_detect/config.rb#10
CrawlerDetect::Config::RAW_PATH = T.let(T.unsafe(nil), String)

# since 0.1.0
#
# source://crawler_detect//lib/crawler_detect/detector.rb#5
class CrawlerDetect::Detector
  # @param user_agent [String] User-agent string to detect
  # @return [CrawlerDetect::Detector] instance of detector class
  #
  # source://crawler_detect//lib/crawler_detect/detector.rb#8
  def initialize(user_agent); end

  # @return [String] The detected crawler name from RAW data
  #
  # source://crawler_detect//lib/crawler_detect/detector.rb#18
  def crawler_name; end

  # @return [true, false] Is User-agent a crawler?
  #
  # source://crawler_detect//lib/crawler_detect/detector.rb#13
  def is_crawler?; end

  private

  # @private
  # @return [true, false] Is User-agent in white-list?
  #
  # source://crawler_detect//lib/crawler_detect/detector.rb#27
  def completely_exclusion?; end

  # @private
  # @return [Regexp] Black-list of User-agents
  #
  # source://crawler_detect//lib/crawler_detect/detector.rb#47
  def crawlers_matcher; end

  # @private
  # @return [Regexp] White-list of User-agents
  #
  # source://crawler_detect//lib/crawler_detect/detector.rb#41
  def exclusions_matcher; end

  # @private
  # @return [true, false] Is User-agent in black-list?
  #
  # source://crawler_detect//lib/crawler_detect/detector.rb#34
  def matches_crawler_list?; end
end

# @since 0.1.0
#
# source://crawler_detect//lib/crawler_detect/library/loader.rb#4
module CrawlerDetect::Library
  class << self
    # @param param [String] Name of raw data
    # @return [Array]
    # @since 0.1.0
    #
    # source://crawler_detect//lib/crawler_detect/library.rb#22
    def get_array(param); end

    # @param param [String] Name of raw data
    # @return [Regexp]
    # @since 0.1.0
    #
    # source://crawler_detect//lib/crawler_detect/library.rb#13
    def get_regexp(param); end

    # @return [void]
    # @since 0.1.0
    #
    # source://crawler_detect//lib/crawler_detect/library.rb#27
    def reset_cache; end
  end
end

# @since 0.1.0
#
# source://crawler_detect//lib/crawler_detect/library/crawlers.rb#6
module CrawlerDetect::Library::Crawlers
  extend ::CrawlerDetect::Library::Loader

  class << self
    # @since 0.1.0
    #
    # source://crawler_detect//lib/crawler_detect/library/crawlers.rb#9
    def data; end
  end
end

# @since 0.1.0
#
# source://crawler_detect//lib/crawler_detect/library.rb#6
CrawlerDetect::Library::DATA_CLASSES = T.let(T.unsafe(nil), Array)

# @since 0.1.0
#
# source://crawler_detect//lib/crawler_detect/library/exclusions.rb#6
module CrawlerDetect::Library::Exclusions
  extend ::CrawlerDetect::Library::Loader

  class << self
    # @since 0.1.0
    #
    # source://crawler_detect//lib/crawler_detect/library/exclusions.rb#9
    def data; end
  end
end

# @since 0.1.0
#
# source://crawler_detect//lib/crawler_detect/library/headers.rb#6
module CrawlerDetect::Library::Headers
  extend ::CrawlerDetect::Library::Loader

  class << self
    # @since 0.1.0
    #
    # source://crawler_detect//lib/crawler_detect/library/headers.rb#9
    def data; end
  end
end

# since 1.0.0
#
# source://crawler_detect//lib/crawler_detect/library/loader.rb#6
module CrawlerDetect::Library::Loader
  # Load JSON raw file
  #
  # source://crawler_detect//lib/crawler_detect/library/loader.rb#8
  def load_raw(path); end

  # Remove cached raw data
  #
  # source://crawler_detect//lib/crawler_detect/library/loader.rb#13
  def reload_data; end
end

# @since 0.1.0
#
# source://crawler_detect//lib/crawler_detect/version.rb#5
CrawlerDetect::VERSION = T.let(T.unsafe(nil), String)

# source://crawler_detect//lib/rack/crawler_detect.rb#3
module Rack
  class << self
    # source://rack/3.1.8/lib/rack/version.rb#18
    def release; end
  end
end

# Rack-based interface to detect crawlers
#
# @since 0.1.0
#
# source://crawler_detect//lib/rack/crawler_detect.rb#7
class Rack::CrawlerDetect
  # @return [CrawlerDetect] a new instance of CrawlerDetect
  # @since 0.1.0
  #
  # source://crawler_detect//lib/rack/crawler_detect.rb#8
  def initialize(app, _options = T.unsafe(nil)); end

  # @since 0.1.0
  #
  # source://crawler_detect//lib/rack/crawler_detect.rb#21
  def call(env); end

  private

  # @since 0.1.0
  #
  # source://crawler_detect//lib/rack/crawler_detect.rb#28
  def set_env_variables!(env); end

  # @since 0.1.0
  #
  # source://crawler_detect//lib/rack/crawler_detect.rb#38
  def user_agent(env); end

  # @since 0.1.0
  #
  # source://crawler_detect//lib/rack/crawler_detect.rb#44
  def user_agent_headers; end
end
