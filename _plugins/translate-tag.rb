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

  class TranslateTag < Liquid::Tag
    attr_reader :text, :weblate_id

    def initialize(tag_name, text, tokens)
      super
      @text       = text.strip
      @weblate_id = Weblate::ID.get(text)
    end

    def render(context)
      page_language = context.environments.first["page"]["language"]
      site          = context.registers[:site]

      if page_language.nil?
        Weblate::SourceFile.add_entry(weblate_id, text)

        text
      else
        translated_string = site.data["languages"][page_language][weblate_id]

        translated_string.nil? ? text : translated_string.strip
      end
    end
  end

end

Liquid::Template.register_tag('t', Jekyll::TranslateTag)
