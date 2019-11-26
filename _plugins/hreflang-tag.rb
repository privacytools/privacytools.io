# Copyright 2019 Signal
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
# associated documentation files (the "Software"), to deal in the Software without restriction,
# including without limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or
# substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
# NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
# DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

module Jekyll

  class HreflangTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      page = context.environments.first["page"]
      site = context.registers[:site]

      if page["translate"]
        dir       = page["src_dir"].nil? ? page["dir"] : page["src_dir"]
        hreflangs = %{<link rel="alternate" hreflang="en" href="#{site.config["production_url"]}#{dir}" /><link rel="alternate" hreflang="x-default" href="#{site.config["production_url"]}#{dir}" />}

        site.data["languages"].each_key do |language|
          hreflangs << %{<link rel="alternate" hreflang="#{language.tr('_', '-')}" href="#{site.config["production_url"]}/#{language}#{dir}" />}
        end
      end

      hreflangs
    end
  end

end

Liquid::Template.register_tag('hreflang', Jekyll::HreflangTag)
