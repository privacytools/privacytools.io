module Jekyll
  module TranslateFilter
    def translate_text(input)
      text          = input.strip
      weblate_id    = Weblate::ID.get(input)
      page_language = @context.environments.first["page"]["language"]
      site          = @context.registers[:site]
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

Liquid::Template.register_filter(Jekyll::TranslateFilter)
