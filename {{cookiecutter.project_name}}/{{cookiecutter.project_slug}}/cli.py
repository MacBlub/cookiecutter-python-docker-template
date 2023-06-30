#!/usr/bin/env python3
"""
{{cookiecutter.project_full_description}}

Typical usage:
    python cli.py --help
"""

__author__ = "{{cookiecutter.author}}"
__version__ = "{{cookiecutter.project_version}}"
__license__ = "{{cookiecutter.project_license}}"

import argparse
import logging
import logging.config
logger = logging.getLogger(__name__)

def parseArgs():
    """Parses command line arguments
    
    Returns:
        Parsed Arguments
    """
    parser = argparse.ArgumentParser(description="""{{cookiecutter.project_short_description}}""")
    # parser.add_argument("-i","--input", required=True,action="store",default=None,help="Path to Input")
    # parser.add_argument("-o","--output", required=True,action="store",default=None,help="Path to Output")
    
    parser.add_argument(
        "-v",
        "--verbose",
        action="count",
        default=0,
        help="Verbosity (-v, -vv, etc)")

    # Specify output of "--version"
    parser.add_argument(
        "--version",
        action="version",
        version="%(prog)s (version {version})".format(version=__version__))
    
    # Parse args
    args = parser.parse_args()
    return args

def main(args):
    logger.info(f"My Program starts here!")
  

if __name__ == "__main__":
    """ Command line Starting Point """
    
    args = parseArgs()
    
    # Set logging level
    plvl = [logging.ERROR, logging.WARNING, logging.INFO, logging.DEBUG]
    dlvl = min(args.verbose, len(plvl)-1)
    logging.getLogger().setLevel(plvl[dlvl])
    logging.basicConfig(level=plvl[dlvl])
    
    # Main 
    main(args)
