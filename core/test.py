#!/usr/bin/env python3

import os
import sys
import glob
import tempfile
import unittest
from os.path  import dirname, abspath

sys.path.append(abspath(dirname(__file__)+"/../.."))

from StepList.core.steps import Step


def fixture_path(fname=""):
  return dirname(abspath(__file__))+"/fixtures/"+fname

def plugin_settings_file():
  return dirname(abspath(__file__))+"/../Steplist.sublime-settings"

def get_config():
  f = open(plugin_settings_file(), "r")
  config = eval(f.read())
  f.close()
  return config


class TestStep(unittest.TestCase):
  def setUp(self):
    global stepper
    global features_path
    features_path = fixture_path('features')
    config  = {'root_directory':fixture_path()}
    stepper = Step(config)

  def test_features_path(self):
    self.assertEqual(stepper.features_path(), features_path)

  def test_definition_files(self):
    step_files = glob.glob(abspath(features_path+"/**/*_steps.rb"))
    self.assertEqual(stepper.definition_files(), step_files)

  def test_definitions(self):
    self.assertEqual(len(stepper.definitions()), 518)

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
