import re
import glob
from os.path import normpath


class Step(object):
  def __init__(self, config):
    self.config = config

  def features_path(self):
    return normpath(self.config['root_directory']+'/features')

  def definition_files(self):
    return glob.glob(self.features_path()+"/**/*_steps.rb")

  def lines_from(self, file):
    f = open(file, "r")
    lines = f.readlines()
    f.close()
    return lines

  def step_from(self, line):
    m = re.search('(Given|And|When|Then).*/[\^]*([^$]+)[$]*/', line)
    if not m:
      return None
    step = m.groups()[1]
    return step.strip()

  def steps_defined_in(self, file):
    steps = [self.step_from(line) for line in self.lines_from(file)]
    steps = [s for s in steps if s]
    return steps

  def definitions(self):
    steps = []
    for file in self.definition_files():
      steps.extend(self.steps_defined_in(file))
    steps = [self.filter(s) for s in steps]
    steps.sort(key=str.lower)
    return steps

  def filter(self, step_text):
    return step_text.replace('(?:|I )', 'I ')

  def snippet(self, text):
    self.index = 0
    text = text.replace('"([^\\"]*)"', '"$_"')
    def repl(text):
      self.index += 1
      return "$%s" % self.index
    return re.sub('\$_', repl, text)
