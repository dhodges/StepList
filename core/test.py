#!/usr/bin/env python3

import os
import sys
import glob
import tempfile
import unittest
from os.path  import dirname, abspath

sys.path.append(abspath("../.."))

from stepper import Stepper


def fixture_path(fname=""):
  return dirname(abspath(__file__))+"/fixtures/"+fname

def plugin_settings_file():
  return dirname(abspath(__file__))+"/../Stepper.sublime-settings"

def get_config():
  f = open(plugin_settings_file(), "r")
  config = eval(f.read())
  f.close()
  return config


class TestStepper(unittest.TestCase):
  def setUp(self):
    global stepper
    global features_path
    features_path = fixture_path('features')
    config  = {'root_directory':fixture_path()}
    stepper = Stepper(config)

  def test_features_path(self):
    self.assertEqual(stepper.features_path(), features_path)

  def test_step_definition_files(self):
    step_files = glob.glob(abspath(features_path+"/**/*_steps.rb"))
    self.assertEqual(stepper.step_definition_files(), step_files)

  def test_step_definitions(self):
    self.assertEqual(len(stepper.step_definitions()), 518)

  def test_filter(self):
    self.assertEqual(stepper.filter('(?:|I )choose "([^\\"]*)"(?: within "([^\\"]*)")?'),
                                    'I choose "([^\\"]*)"(?: within "([^\\"]*)")?')
    
  def assertEqualSnippet(self, text, snippet):
    self.assertEqual(stepper.snippet(text), snippet)

  def test_snippets(self):
    self.assertEqualSnippet('"([^\\"]*)" resizer is not visible',
                            '"$1" resizer is not visible')

    self.assertEqualSnippet('I attach the file "([^\\"]*)" to "([^\\"]*)"(?: within "([^\\"]*)")?',
                            'I attach the file "$1" to "$2"(?: within "$3")?')

    self.assertEqualSnippet('I choose "([^\\"]*)"(?: within "([^\\"]*)")?',
                            'I choose "$1"(?: within "$2")?')

if __name__ == '__main__':
  unittest.main()
