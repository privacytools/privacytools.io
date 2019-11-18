# Copyright 2019 Signal
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

module Jekyll

  class TranslatedPage < Page
    def initialize(site, base, dir, name)
      @site, @base, @dir, @name = site, base, dir, name

      self.process(@name)
      self.data ||= {}
    end
  end

  class TranslatedPageGenerator < Generator
    def generate(site)
      pages_to_translate = site.pages.select { |page| page.data["translate"] }

      pages_to_translate.each do |page|
        page_title              = page.data['title']
        page_title_weblate_id = Weblate::ID.get(page_title)

        Weblate::SourceFile.add_entry(page_title_weblate_id, page_title)

        site.data["languages"].each_key do |language|
          translated_page       = Jekyll::TranslatedPage.new(site, site.source, page.dir, page.name)
          translated_page_title = site.data["languages"][language][page_title_weblate_id]

          translated_page.data              = page.data.clone
          translated_page.data['title']     = translated_page_title.nil? ? page_title : translated_page_title.strip
          translated_page.data['permalink'] = "#{language}/#{page.dir}/#{page.name}"
          translated_page.data['src_dir']   = page.dir
          translated_page.data['language']  = language
          translated_page.content           = page.content

          site.pages << translated_page
        end
      end
    end
  end

end
