# Version Tag   version 0.0   january 2012   written by Feherke
# Liquid tag to return version number.
#
# Syntax :
#   {% version what %}
#     Returns the current version of the named thing. what can be :
#       jekyll - Jekyll engine's version ( See Jekyll::VERSION . )
#       ruby   - Ruby interpreter's version ( See RUBY_VERSION . )
#
# Sample input :
#   none
#
# Sample code :
#   {% version ruby %}
#
# Sample output :
#   1.9.2

module Jekyll

  class VersionTag < Liquid::Tag

    def initialize tag_name, markup, token
      @what = markup.strip.downcase

    end

    def render context

      case @what
        when 'ruby' then RUBY_VERSION
        when 'jekyll' then Jekyll::VERSION
      end
    end

  end

end

Liquid::Template.register_tag 'version', Jekyll::VersionTag
