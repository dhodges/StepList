#!/usr/bin/env python3

import os
import sys
import glob
import tempfile
import unittest
from os.path  import dirname, abspath

sys.path.append(abspath("../.."))

from Stepper.core.stepper import Stepper


def fixture_path(fname):
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
    config  = {'project_data':{'folders': [{'path': features_path}]}}
    stepper = Stepper(config)

  def test_features_path(self):
    self.assertEqual(stepper.features_path(), features_path)

  def test_step_definition_files(self):
    step_files = glob.glob(abspath(features_path+"/**/*_steps.rb"))
    self.assertEqual(stepper.step_definition_files(), step_files)

  def test_step_definition_list(self):
    definition_list = [
      'I am authenticated as "(.*)"',
      'I am authenticated as a performance testing author',
      'I am authenticated as a read only user',
      'I am authenticated as an author',
      'I am authenticated as an editor',
      'I am authenticated as user "(.*)" with password "(.*)"',
      'I should be authenticated as "(.+)"',
      'I should be prompted to authenticate',
      'I should not be authenticated',
      'user "(.+)" has password "(.+)"'
    ]
    self.maxDiff = None
    self.assertEqual(stepper.step_definition_list(), definition_list)
    

if __name__ == '__main__':
  unittest.main()
