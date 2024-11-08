# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `tailwindcss-rails` gem.
# Please instead update this file by running `bin/tapioca gem tailwindcss-rails`.


# source://tailwindcss-rails//lib/tailwindcss-rails.rb#1
module Tailwindcss; end

# source://tailwindcss-rails//lib/tailwindcss/commands.rb#4
module Tailwindcss::Commands
  class << self
    # source://tailwindcss-rails//lib/tailwindcss/commands.rb#76
    def compile_command(debug: T.unsafe(nil), **kwargs); end

    # source://tailwindcss-rails//lib/tailwindcss/commands.rb#25
    def executable(exe_path: T.unsafe(nil)); end

    # source://tailwindcss-rails//lib/tailwindcss/commands.rb#21
    def platform; end

    # @return [Boolean]
    #
    # source://tailwindcss-rails//lib/tailwindcss/commands.rb#100
    def rails_css_compressor?; end

    # source://tailwindcss-rails//lib/tailwindcss/commands.rb#92
    def watch_command(always: T.unsafe(nil), poll: T.unsafe(nil), **kwargs); end
  end
end

# source://tailwindcss-rails//lib/tailwindcss/commands.rb#5
Tailwindcss::Commands::DEFAULT_DIR = T.let(T.unsafe(nil), String)

# raised when TAILWINDCSS_INSTALL_DIR does not exist
#
# source://tailwindcss-rails//lib/tailwindcss/commands.rb#17
class Tailwindcss::Commands::DirectoryNotFoundException < ::StandardError; end

# raised when the tailwindcss executable could not be found where we expected it to be
#
# source://tailwindcss-rails//lib/tailwindcss/commands.rb#13
class Tailwindcss::Commands::ExecutableNotFoundException < ::StandardError; end

# source://tailwindcss-rails//lib/tailwindcss/commands.rb#6
Tailwindcss::Commands::GEM_NAME = T.let(T.unsafe(nil), String)

# raised when the host platform is not supported by upstream tailwindcss's binary releases
#
# source://tailwindcss-rails//lib/tailwindcss/commands.rb#9
class Tailwindcss::Commands::UnsupportedPlatformException < ::StandardError; end

# source://tailwindcss-rails//lib/tailwindcss/engine.rb#4
class Tailwindcss::Engine < ::Rails::Engine
  class << self
    # source://activesupport/8.0.0/lib/active_support/class_attribute.rb#12
    def __callbacks; end

    # source://activesupport/8.0.0/lib/active_support/class_attribute.rb#15
    def __callbacks=(new_value); end
  end
end

# constants describing the upstream tailwindcss project
#
# source://tailwindcss-rails//lib/tailwindcss/upstream.rb#3
module Tailwindcss::Upstream; end

# rubygems platform name => upstream release filename
#
# source://tailwindcss-rails//lib/tailwindcss/upstream.rb#7
Tailwindcss::Upstream::NATIVE_PLATFORMS = T.let(T.unsafe(nil), Hash)

# source://tailwindcss-rails//lib/tailwindcss/upstream.rb#4
Tailwindcss::Upstream::VERSION = T.let(T.unsafe(nil), String)

# source://tailwindcss-rails//lib/tailwindcss/version.rb#2
Tailwindcss::VERSION = T.let(T.unsafe(nil), String)
