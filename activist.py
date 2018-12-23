#!/usr/bin/env python3
from sys import argv

"""
A tool to make working with localized sections easier.

Inspired by Laravel's artisan.
"""

class Activist:
    def help(self):
        print("""
Available commands:
    make:section  name                          Creates all files needed for a new section.
    make:strings  name string [str2,str3,...]   Adds a string to a langs/ file.
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
            "make:section": self.make_section,
            "make:strings": self.make_strings
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
        with open("_data/lang/en/%s.yml" % name, 'w') as f:
            f.write("---\n\n---")
        with open("_includes/langs/%s" % name, 'w'): pass
        with open("_includes/content/%s.md" % name, 'w') as f:
            f.write("{% include section_config section=include.section lang=include.lang %}\n\n")
        print("""Add this line to index.html:
    
    {% include section name=\""""+ name + """\" %}""")
        print("\nAnd don't forge to add the section to the navbar in _layouts/default.html!")
    
    def make_strings(self, arguments):
        try:
            name, *strings = arguments
            assert(len(strings) > 0)
        except:
            exit("Please supply the names of the strings that you wish to add.")
        
        with open("_includes/langs/%s" % name, "a+") as f:
            for string in strings:
                f.write("{{% assign {0} = include.lang.{0} | default: include.en.{0} %}}\n"
                        .format(string))


def main(args):
    activist = Activist()
    activist.handle(args)

if __name__ == "__main__":
    main(argv[1:])
