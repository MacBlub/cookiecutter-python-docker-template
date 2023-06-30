
# Check file dependencies
import os
import sys
import pathlib

# Setup & Prepare for Python package setup
from setuptools import setup, find_packages
from distutils import sysconfig
site_packages_path = sysconfig.get_python_lib()

# Include actual info from package to be installed 
__project_name__ = "{{cookiecutter.project_name}}"
__version__ = "{{cookiecutter.project_version}}"
__description_short__ = "{{cookiecutter.project_short_description}}"
__description_full__ = "{{cookiecutter.project_full_description}}"
__license__ = "{{cookiecutter.project_license}}"

setup(
    name=__project_name__,
    version=__version__,
    license=__license__,
    description=__description_short__,
    long_description=__description_full__,
    long_description_content_type='text/markdown',
    url=f"https://example.com",
    package_dir={
        '': '{{cookiecutter.project_name}}',
    },
    data_files=[(site_packages_path)],
    python_requires = ">= 3.6",
    author="{{cookiecutter.author}}",
    author_email="{{cookiecutter.email}}",
    classifiers=[
        "Programming Language :: Python :: 3"
    ]
)
