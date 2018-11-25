{% assign lang = site.data.lang.[include.lang].kdl %}
{% assign english = site.data.lang.en.kdl %}

# {{ lang.title | default: english.title }}
## {{ lang.subtitle | default: english.subtitle }}
{{ lang.description | default: english.description }}