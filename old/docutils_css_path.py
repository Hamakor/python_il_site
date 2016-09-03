from docutils.utils import find_file_in_dirs
from docutils.writers.html4css1 import Writer
print(find_file_in_dirs("html4css1.css", Writer.default_stylesheet_dirs))
