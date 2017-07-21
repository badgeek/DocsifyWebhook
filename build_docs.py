#!/usr/bin/env python2

from __future__ import unicode_literals, absolute_import
import os
import sys
import shutil
import subprocess
from tempfile import mkstemp
import re

MKDOCS_FOLDER = ""
THIS_FILE_DIR = os.path.dirname(os.path.realpath(__file__))
MKDOCS_DIR = os.path.join(THIS_FILE_DIR, MKDOCS_FOLDER)

chap_re = re.compile("^([0-9]*[_-] .*)+$")
sub_re = re.compile("^([0-9].*_[0-9].*[_ -].*)+$")

def atoi(text):
	return int(text) if text.isdigit() else text

def natural_keys(text):
	'''
	alist.sort(key=natural_keys) sorts in human order
	http://nedbatchelder.com/blog/200712/human_sorting.html
	(See Toothy's implementation in the comments)
	'''
	return [ atoi(c) for c in re.split('(\d+)', text) ]

def generate_sidebar_docsify():
    path_list = []

    list_dir = os.listdir(os.path.join(MKDOCS_DIR, WIKI_NAME))
    list_dir.sort(key=natural_keys)

    for file in list_dir:
      
      if file.endswith(".md"):

        if (sub_re.match(file)):
          path_list.append("  - [%s](%s)" % (file[:-3].replace("-", " ").replace("_","."), file))
        else:
          path_list.append("- %s:" % (file[:-3].replace("-", " ").replace("_",".")))
          path_list.append("  - [%s](%s)" % (file[:-3].replace("-", " ").replace("_","."), file))

    if not path_list:
      print(("ERROR: No markdown files found in %s ! " % MKDOCS_DIR) +
          "Check if repository has been set up correctly.")
      return False

    pages_str = "" + "\n".join(path_list) + "\n"
    return pages_str


def generate_sidebar_gitbook():
    path_list = []

    list_dir = os.listdir(os.path.join(MKDOCS_DIR, WIKI_NAME))
    list_dir.sort(key=natural_keys)

    for file in list_dir:
      if file.endswith(".md"):
        if (sub_re.match(file)):
            tmp_file = file[:-3].replace("-", " ").replace("_",".")
            path_list.append("  * [%s](%s)" % (tmp_file, file))
        else:
            path_list.append("* [%s](%s)" % (file[:-3].replace("-", " ").replace("_","."), file))

    if not path_list:
      print(("ERROR: No markdown files found in %s ! " % MKDOCS_DIR) +
          "Check if repository has been set up correctly.")
      return False
    
    pages_str = "# Summary\n\n" + "\n\n".join(path_list) + "\n"
    return pages_str

def save_sidebar_docsify():
    html_code = ""
    print("Creating the _sidebar.md file...\n")
    generated_site_dir = THIS_FILE_DIR
    if not os.path.exists(generated_site_dir):
        try:
            os.makedirs(generated_site_dir)
        except IOError:
            print("ERROR: Could not create site folder in %s !\n" %
                  generated_site_dir)
            return False
    try:
        sidebar_file = open(os.path.join(generated_site_dir, "dist/sidebar.md"), "w")
        sidebar_file.write(generate_sidebar_docsify())
        sidebar_file.close()
        return True
    except IOError:
        print("ERROR: Could not create sidebar.md file in %s !\n" %
              generated_site_dir)
        return False

def save_sidebar_gitbook():
    html_code = ""
    print("Creating the _sidebar.md file...\n")
    generated_site_dir = THIS_FILE_DIR
    if not os.path.exists(generated_site_dir):
        try:
            os.makedirs(generated_site_dir)
        except IOError:
            print("ERROR: Could not create site folder in %s !\n" %
                  generated_site_dir)
            return False
    try:
        sidebar_file = open(os.path.join(generated_site_dir, "dist/SUMMARY.md"), "w")
        sidebar_file.write(generate_sidebar_gitbook())
        sidebar_file.close()
        return True
    except IOError:
        print("ERROR: Could not create sidebar.md file in %s !\n" %
              generated_site_dir)
        return False


if __name__ == "__main__":
    if (sys.argv[1] == "gitbook"):
        save_sidebar_gitbook()
    else:
        save_sidebar_docsify()
    # build_docs()
