# Default Value Filter   version 0.0   october 2011   written by Feherke
# Returns an alternative value if the input is empty.
#
# Syntax :
#   {{ content | default: 'alternative value' }}
#     Returns the parameter if the input value is empty. ( See String#empty . )
#
# Sample input :
#   content: ''
#
# Sample code :
#   {{ content | default: 'n/a' }}
#
# Sample output :
#   n/a

module Jekyll

  module DefaultFilter

    def default input, ifempty

      input.to_s.empty? ? ifempty : input
    end

  end

end

Liquid::Template.register_filter Jekyll::DefaultFilter
