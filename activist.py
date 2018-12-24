#!/usr/bin/env python3
from sys import argv
from yaml import safe_load as yaml_safe_load

"""
A tool to make working with localized sections easier.

Inspired by Laravel's artisan.
"""

class Activist:
    def help(self):
        print("""
Available commands:
    make:section  name      Creates all files needed for a new section.
        """)
    
    def handle(self, args):
        try:
            command, *arguments = args
        except:
            self.help()
            exit()

        self.run(command, arguments)
    
    def run(self, command, arguments):
        commands = {
            "make:section": self.make_section
        }

        if command not in commands:
            self.help()
            exit("Wrong command.")

        commands[command](arguments)
    
    def make_section(self, arguments):
        try:
            name, *_ = arguments
        except:
            exit("Please supply a section name.")
        
        # create files
        with open("_data/lang/%s.yml" % name, 'w') as f:
            f.write("---\n")
            f.write("en: &base\n    title: Section Title\n\n")
            with open(".activist.yml", "r") as config:
                # get list of languages except "en"
                for language in filter(lambda lang: lang != "en", yaml_safe_load(config.read())['languages']):
                    f.write("{0}:\n    <<: *base\n    # title: Section Title in {0}\n\n".format(language))
            f.write("---")
        with open("_includes/content/%s.md" % name, 'w') as f:
            f.write("{% include language %}\n\n")
        print("""Add this line to index.html:
    
    {% include section name=\""""+ name + """\" %}""")
        print("\nAnd don't forge to add the section to the navbar in _layouts/default.html!")


def main(args):
    activist = Activist()
    activist.handle(args)

if __name__ == "__main__":
    main(argv[1:])
