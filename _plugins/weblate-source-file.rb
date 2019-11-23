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

module Weblate

  class ID
    def self.get(source_text)
      source_text.nil? ? source_text
                       : source_text.strip[0..100].gsub(/[^\w\d\s\.\?\!]/, '').tr(' ', '_')
    end
  end

  class SourceFile
    class << self
      def add_entry(weblate_id, source_text)
        unless id_already_exists?(weblate_id) or source_text.nil? or source_text.empty?
          new_entry = <<-YAML
#{weblate_id}: |
  #{source_text}

          YAML

          File.write(weblate_source_location, new_entry, mode: 'a')
        end
      end

      def id_already_exists?(weblate_id)
        File.readlines(weblate_source_location).grep(/^#{weblate_id}: \|$/).any?
      end

      def refresh
        File.write(weblate_source_location, "---\n")
      end

      def weblate_source_location
        "#{__dir__}/../weblate-source-file.yml"
      end
    end
  end

end

Jekyll::Hooks.register :site, :after_init do
  Weblate::SourceFile.refresh
end
